class Ability  < Cor1440Gen::Ability

  ROLADMIN    = 1
  ROLDIR      = 3
  ROLOPERADOR = 5

  ROLES = [
    ["Administrador", ROLADMIN], 
    ["", 0], 
    ["Directivo", ROLDIR], 
    ["", 0], 
    ["Operador", ROLOPERADOR],
    ["", 0 ],
    ["", 0]
  ]

  BASICAS_PROPIAS =  [
    ['', 'estadozrc'],
    ['', 'estadoobs'],
    ['', 'nodo'],
    ['', 'tipoorganzorc'],
    ['', 'nivelorganzorc']
  ]
  
  def tablasbasicas 
    Sip::Ability::BASICAS_PROPIAS + 
      Heb412Gen::Ability::BASICAS_PROPIAS + 
      Cor1440Gen::Ability::BASICAS_PROPIAS +
      Sivel2Gen::Ability::BASICAS_PROPIAS + 
      BASICAS_PROPIAS
  end

  BASICAS_ID_NOAUTO = []

  def basicas_id_noauto 
    Sip::Ability::BASICAS_ID_NOAUTO +
      Heb412Gen::Ability::BASICAS_ID_NOAUTO +
      Cor1440Gen::Ability::BASICAS_ID_NOAUTO +
      Sivel2Gen::Ability::BASICAS_ID_NOAUTO +
      BASICAS_ID_NOAUTO
  end

  NOBASICAS_INDSEQID = [
    ['', 'zrc']
  ]

  def nobasicas_indice_seq_con_id 
    Sip::Ability::NOBASICAS_INDSEQID +
      Heb412Gen::Ability::NOBASICAS_INDSEQID +
      Cor1440Gen::Ability::NOBASICAS_INDSEQID +
      Sivel2Gen::Ability::NOBASICAS_INDSEQID +
      NOBASICAS_INDSEQID
  end

  BASICAS_PRIO = []

  def tablasbasicas_prio 
    Sip::Ability::BASICAS_PRIO +
      Heb412Gen::Ability::BASICAS_PRIO +
      Sivel2Gen::Ability::BASICAS_PRIO +
      Cor1440Gen::Ability::BASICAS_PRIO +
      BASICAS_PRIO
  end

  CAMPOS_PLANTILLAS_PROPIAS = {}

  def campos_plantillas
    Heb412Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone.
      merge(Cor1440Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone).
      merge(Sivel2Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone).
      merge(CAMPOS_PLANTILLAS_PROPIAS.clone)
  end

  # Establece autorizaciones con CanCanCan
  def initialize(usuario = nil)
    Sivel2Gen::Ability.initialize_sivel2_gen(self, usuario)
    initialize_cor1440_gen(usuario)
    if !usuario || !usuario.fechadeshabilitacion.nil?
      return
    end
    cannot :pestanadesaparicion, Sivel2Gen::Caso
    case usuario.rol
    when Ability::ROLOPERADOR
      can :index, Cor1440Gen::Proyectofinanciero
      can :index, Cor1440Gen::Actividad

      can [:index,:read], Nodo
      can [:index,:read], Zrc
      can [:index,:read], Observacion
    when Ability::ROLADMIN, Ability::ROLDIR
      can :manage, Nodo
      can :manage, Zrc
      can :manage, Observacion
    end

  end
end

