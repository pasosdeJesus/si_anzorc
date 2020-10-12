# si_anzorc


[![Revisado por Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com) [![Estado Construcción](https://api.travis-ci.org/pasosdeJesus/sivel2.svg?branch=master)](https://travis-ci.org/pasosdeJesus/sivel2) [![Clima del Código](https://codeclimate.com/github/pasosdeJesus/sivel2/badges/gpa.svg)](https://codeclimate.com/github/pasosdeJesus/sivel2) [![Cobertura de Pruebas](https://codeclimate.com/github/pasosdeJesus/sivel2/badges/coverage.svg)](https://codeclimate.com/github/pasosdeJesus/sivel2) [![security](https://hakiri.io/github/pasosdeJesus/sivel2/master.svg)](https://hakiri.io/github/pasosdeJesus/sivel2/master)


Sistema de Información de ANZORC


### Requerimientos
* Ruby version >= 2.5
* PostgreSQL >= 10 con extensión unaccent disponible
* Recomendado sobre adJ 6.3 (que incluye todos los componentes mencionados).  
  Las siguientes instrucciones suponen que opera en este ambiente.

Puede consultar como instalar estos componentes en: 
https://github.com/pasosdeJesus/sip/wiki/Requisitos


### Arquitectura

Es una aplicación que emplea los siguientes motores:
*  genérico para sistemas de información ```sip``` https://github.com/pasosdeJesus/sip
*  genérico para manejo de casos ```sivel2_gen``` https://github.com/pasosdeJesus/sivel2_gen
*  genérico para proyectos con marco lógico y actividades ```cor1440_gen``` https://github.com/pasosdeJesus/cor1440_gen


### Configuración y uso de servidor de desarrollo
Su configuración y uso es similar al de SIVeL2 se invita a ver
las instrucciones dle mismo en
https://github.com/pasosdeJesus/sivel2/

