# si_anzorc


[![Revisado por Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com) Pruebas y seguridad:[![Estado Construcción](https://gitlab.com/pasosdeJesus/si_anzorc/badges/main/pipeline.svg)](https://gitlab.com/pasosdeJesus/si_anzorc/-/pipelines?page=1&scope=all&ref=main) [![Clima del Código](https://codeclimate.com/github/pasosdeJesus/si_anzorc/badges/gpa.svg)](https://codeclimate.com/github/pasosdeJesus/si_anzorc) [![Cobertura de Pruebas](https://codeclimate.com/github/pasosdeJesus/si_anzorc/badges/coverage.svg)](https://codeclimate.com/github/pasosdeJesus/si_anzorc)


Sistema de Información de ANZORC


### Requerimientos
* Ruby version >= 3.0
* PostgreSQL >= 13 con extensión unaccent disponible
* node.js >= 12
* Recomendado sobre adJ 6.8 (que incluye todos los componentes mencionados).  
  Las siguientes instrucciones suponen que opera en este ambiente.

Puede consultar como instalar estos componentes en: 
<https://github.com/pasosdeJesus/sip/wiki/Requisitos>


### Arquitectura

Es una aplicación que emplea los siguientes motores:
*  genérico para sistemas de información ```sip``` 
  <https://github.com/pasosdeJesus/sip>
*  genérico para manejo de casos ```sivel2_gen``` 
  <https://github.com/pasosdeJesus/sivel2_gen>
*  genérico para proyectos con marco lógico y actividades ```cor1440_gen``` 
  <https://github.com/pasosdeJesus/cor1440_gen>


### Configuración y uso de servidor de desarrollo

Su configuración y uso es similar al de SIVeL2 se invita a ver
las instrucciones dle mismo en
<https://github.com/pasosdeJesus/sivel2/>

