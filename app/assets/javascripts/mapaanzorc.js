function agregarFuncionesExternasMapaosm(){
  agregarCapasNZ()
}
function leerCapasSuperpuestas(){
  return {}
}
function agregarCapasNZ() {
  var root = window;
  if (typeof root.puntomontaje == "undefined") {
    sip_prepara_eventos_comunes(root, false, false);
  }
  sip_arregla_puntomontaje(root)
  $.getJSON(root.puntomontaje + "admin/nodos.json", obtenerNodos)
  function obtenerNodos(datos){
    var geoNodos = [] 
    $.map( datos, function( valor, i ) {
      if (valor.geojson && valor.nombre){
        objNodo = {}
        objNodo["nombre"] = valor.nombre
        objNodo["ruta"] = valor.geojson
        geoNodos.push(objNodo)
      }
    });
    subirCapaNZ(geoNodos, nodo = true)
  }
  $.getJSON(root.puntomontaje + "zrcs.json", obtenerZRCs)
  function obtenerZRCs(datos){
    var geoZRCs = [] 
    $.map( datos, function( valor, i ) {
      if (valor.geojson && valor.nombre){
        objzrc = {}
        objzrc["nombre"] = valor.nombre
        objzrc["ruta"] = valor.geojson
        geoZRCs.push(objzrc)
      }
    });
    subirCapaNZ(geoZRCs, nodo = false)
  }
  function subirCapaNZ(arrayNZ, esnodo){
    arrayNZ.map(function(valor){
      if (esnodo) {
        let nombren = valor["nombre"]
        let rutan = valor["ruta"]
        let p = rutan.split('/')
        let noma = p.pop()
        $.getJSON(root.puntomontaje + "sis/arch/Nodos/" + p.join('/') + '?descarga=' + noma).done(function(datosn){
          let nombreCapanueva = nombren;
          let capaGeoJson = L.geoJSON(datosn, {
            style: function (feature) {
              return {color: "#31a354"};
            }
          });
          controlCapas.addOverlay(capaGeoJson, nombreCapanueva);
        })
      }
      else {
        let nombrez = valor["nombre"]
        let rutaz = valor["ruta"]
        let p = rutaz.split('/')
        let noma = p.pop()
        $.getJSON(root.puntomontaje + "sis/arch/ZRC/" + p.join('/') + '?descarga=' + noma).done(function(datosz){
          let nombreCapanueva = nombrez;
          let capaGeoJson = L.geoJSON(datosz, {
            style: function (feature) {
              return {color: "#d95f0e"};
            }
          });
          controlCapas.addOverlay(capaGeoJson, nombreCapanueva);
        })
      }
    })
  }
}

