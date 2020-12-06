
@establece_duracion = (root, obdur) ->
  $('#proyectofinanciero_duracion').val(obdur.duracion)

@recalcula_duracion = (root) ->
  datos = {
    fechainicio_localizada: $('#proyectofinanciero_fechainicio_localizada').val(),
    fechacierre_localizada: $('#proyectofinanciero_fechacierre_localizada').val()
  }
  if datos.fechainicio_localizada != '' && datos.fechacierre_localizada != ''
    sip_ajax_recibe_json(window, 'api/cor1440gen/duracion',
      datos, establece_duracion)
  else
    $('#proyectofinanciero_duracion').val('')



$(document).on('change', '#proyectofinanciero_fechaformulacion_mes', (e) ->
  s = 2
  if $('#proyectofinanciero_fechaformulacion_mes').val() <= 6
    s = 1
  $('#proyectofinanciero_semestreformulacion').val(s)
)

$(document).on('change', '#proyectofinanciero_fechainicio_localizada', (e) ->
  recalcula_duracion(window)
)
$(document).on('change', '#proyectofinanciero_fechacierre_localizada', (e) ->
  recalcula_duracion(window)
)

$(document).on('change', '#proyectofinanciero_estado', (e) ->
  sip_enviarautomatico_formulario_y_repinta($('form').attr('id'), 
    ['recursoseconomicos'], 'POST', false)
)

$(document).on('change', '#proyectofinanciero_fechainicio_localizada', (e) ->
  recalcula_duracion(window)
)
$(document).on('change', '#proyectofinanciero_fechacierre_localizada', (e) ->
  recalcula_duracion(window)
)

