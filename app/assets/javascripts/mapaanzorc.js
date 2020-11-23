function agregarFuncionesExternasMapaosm(){
  agregarCapasNZ()
}
function leerCapasSuperpuestas(){
  return {}
}
function agregarCapasNZ() {
  $.getJSON("/anzorc/si/admin/nodos.json", obtenerNodos)
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
  $.getJSON("/anzorc/si/zrcs.json", obtenerZRCs)
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
        nombren = valor["nombre"]
        rutan = valor["ruta"]
        $.getJSON("/heb412/Nodos/" + rutan).done(function(datosn){
          nombreCapanueva = nombren;
          var capaGeoJson = L.geoJSON(datosn, {
            style: function (feature) {
              return {color: "#31a354"};
            }
          });
          controlCapas.addOverlay(capaGeoJson, nombreCapanueva);
        })
      }
      else {
        nombrez = valor["nombre"]
        rutaz = valor["ruta"]
        $.getJSON("/heb412/ZRC/" + rutaz).done(function(datosz){
          nombreCapanueva = nombrez;
          var capaGeoJson = L.geoJSON(datosz, {
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

