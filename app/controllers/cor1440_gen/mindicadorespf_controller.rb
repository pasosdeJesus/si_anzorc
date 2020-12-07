require_dependency "cor1440_gen/concerns/controllers/mindicadorespf_controller"

module Cor1440Gen
  class MindicadorespfController < Sip::ModelosController

    include Cor1440Gen::Concerns::Controllers::MindicadorespfController

    def mideindicador_PNUD19(mind, ind, fini, ffin)
      res = ind.resultadopf
      relai = { 'PNUD19OB1R1I1' => 'PNUD19OB1R1A1',
                'PNUD19OB1R1I2' => 'PNUD19OB1R1A1',
                'PNUD19OB1R1I3' => 'PNUD19OB1R1A2',
                'PNUD19OB1R1I4' => 'PNUD19OB1R1A3',
                'PNUD19OB1R1I5' => 'PNUD19OB1R1A4',
                'PNUD19OB1R1I6' => 'PNUD19OB1R1A5',
                'PNUD19OB1R2I1' => 'PNUD19OB1R2A1',
                'PNUD19OB1R2I2' => 'PNUD19OB1R2A2',
                'PNUD19OB1R2I3' => 'PNUD19OB1R2A3',
                'PNUD19OB1R3I1' => 'PNUD19OB1R3A1',
                'PNUD19OB1R3I2' => 'PNUD19OB1R3A2',
                'PNUD19OB1R3I3' => 'PNUD19OB1R3A3'}

      if relai[ind.numero].nil?
        puts "Indicador desconocido #{ind.numero}"
        return [-1, '#', -1, '#', -1, '#', -1, '#']
      end

      actpf = res.actividadpf.where(nombrecorto: relai[ind.numero])
      if actpf.count == 0
        puts "No hay actividadpf con nombre #{relai[ind.numero]}"
        return [-1, '#', -1, '#', -1, '#', -1, '#']
      end
      if actpf.count > 1
        puts "Hay más de una actividadpf con nombre #{actpf[ind.numero]}"
        return [-1, '#', -1, '#', -1, '#', -1, '#']
      end
      lac = Cor1440Gen::Actividad.joins(:actividadpf).
        where('cor1440_gen_actividadpf.id=?', actpf.take.id).
        where('fecha >= ?', fini).
        where('fecha <= ?', ffin).
        pluck(:id).uniq
      resind = lac.count
      if resind > 0
        urlevrind = cor1440_gen.actividades_url +
          '?filtro[busid]='+lac.join(',')
      end
      [resind, urlevrind, -1, '#', -1, '#', -1, '#']
    end
    
    def mindicadorpf_params
      params.require(:mindicadorpf).permit(
        atributos_form - ["pmindicadorpf", :actividadpf] +
        [:actividadpf_ids => []] +
        [
          'pmindicadorpf_attributes' => [
            'fecha_localizada', 
            'finicio_localizada', 
            'ffin_localizada', 
            'restiempo', 
            'dmed1', 
            'urlev1', 
            'dmed2', 
            'urlev2', 
            'dmed3', 
            'urlev3', 
            'resind', 
            'rutaevidencia', 
            'meta', 
            'observaciones',
            'porcump', 
            'analisis', 
            'acciones', 
            'responsables', 
            'plazo', 
            'id', 
            '_destroy',
            'datointermedioti_pmindicadorpf_attributes' => [
              :valor,
              :rutaevidencia,
              :datointermedioti_id,
              :id
            ]
          ]
        ]
      ) 
    end

    def mideindicador_particular(mind, ind, fini, ffin)
      if ind.numero =~ /^PNUD19O/
        return mideindicador_PNUD19(mind, ind, fini, ffin)
      else
        return mideindicador_cor1440_gen(mind, ind,fini, ffin)
      end
    end

  end
end
