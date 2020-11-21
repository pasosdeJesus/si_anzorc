# encoding: UTF-8
class Ability  < Sivel2Gen::Ability

  ROLADMIN   = 1
  ROLDIR     = 3
  ROLSISTACT = 7

  ROLES = [
    ["Administrador", ROLADMIN], 
    ["", 0], 
    ["Directivo", ROLDIR], 
    ["", 0], 
    ["", 0 ],
    ["", 0],
    ["Sistematizador de Actividades", ROLSISTACT]
  ]

  BASICAS_PROPIAS =  [
    ['', 'estadozrc'],
    ['', 'nodo'],
    ['', 'tipoorganzorc'],
    ['', 'nivelorganzorc']
  ]
  
  def tablasbasicas 
    Sip::Ability::BASICAS_PROPIAS + 
      Cor1440Gen::Ability::BASICAS_PROPIAS +
      Sivel2Gen::Ability::BASICAS_PROPIAS + 
      BASICAS_PROPIAS
  end

  def basicas_id_noauto 
    Sip::Ability::BASICAS_ID_NOAUTO +
      Sivel2Gen::Ability::BASICAS_ID_NOAUTO 
  end

  def nobasicas_indice_seq_con_id 
    Sip::Ability::NOBASICAS_INDSEQID +
      Sivel2Gen::Ability::NOBASICAS_INDSEQID 
  end

  def tablasbasicas_prio 
    Sip::Ability::BASICAS_PRIO +
      Sivel2Gen::Ability::BASICAS_PRIO +
      Sivel2Sjr::Ability::BASICAS_PRIO
  end


  def campos_plantillas
    Heb412Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone.
      merge(Cor1440Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone).
      merge(Sivel2Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS)
  end

  # Establece autorizaciones con CanCanCan
  def initialize(usuario = nil)
    if !usuario || usuario.fechadeshabilitacion
      return
    end
    initialize_sivel2_gen(usuario)
    initialize_cor1440_gen(usuario)

#    can :nuevo, Cor1440Gen::Actividad
#
#    if usuario && usuario.rol then
#      case usuario.rol 
#      when Ability::ROLANALI
#        can :read, Cor1440Gen::Actividad
#        can :new, Cor1440Gen::Actividad
#        can [:update, :create, :destroy], Cor1440Gen::Actividad, 
#          oficina: { id: usuario.oficina_id}
#        can :read, Cor1440Gen::Informe
#        can :read, Cor1440Gen::Proyectofinanciero
#
#        can :read, Nodo
#        can :read, Zrc
#
#      when Ability::ROLADMIN
#
#        can :manage, Cor1440Gen::Actividad
#        can :manage, Cor1440Gen::Campotind
#        can :manage, Cor1440Gen::Financiador
#        can :manage, Cor1440Gen::Indicadorpf
#        can :manage, Cor1440Gen::Informe
#        can :manage, Cor1440Gen::Mindicadorpf
#        can :manage, Cor1440Gen::Proyectofinanciero
#        can :manage, Cor1440Gen::Sectoractor
#        can :manage, Cor1440Gen::Tipoindicador
#
#        can :manage, Nodo
#        can :manage, Zrc
#
#      end
#    end
  end
end

