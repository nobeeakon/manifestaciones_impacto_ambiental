# Manifestaciones de impacto ambiental
Base de datos de las Manifestaciones de Impacto Ambiental ingresadas publicadas en la [Gaceta Ecológica](https://github.com/nobeeakon/manifestaciones_impacto_ambiental/blob/master/gacetas.xlsx) de la SEMARNAT, México.

## Bases de datos
La base se encuentra en formato [".csv"](https://github.com/nobeeakon/manifestaciones_impacto_ambiental/blob/master/datos/gacetas.csv)(usando "|" como separador) o en formato [".xlsx"](https://github.com/nobeeakon/manifestaciones_impacto_ambiental/blob/master/datos/gacetas.xlsx), que se puede visualizar en Libre Office Calc o MS Excel. La [Gaceta Ecológica](https://github.com/nobeeakon/manifestaciones_impacto_ambiental/blob/master/gacetas.xlsx) se publica cada jueves e incluye Proyectos ingresados, Trámites de cambio de uso de suelo y Resolutivos; en la base no se incluyen los resolutivos.
Las columnas que contiene son:
  1. Número de gaceta: "número-año"
  2. Sección:
      1. Proyectos ingresados al PEIA en la DGIRA
      2. Trámites unificados de cambio de uso de suelo y/o aprovechamiento forestal
      3. Resolutivos emitidos en el PEIA en la DGIRA
      4. Proyectos ingresados en las delegaciones federales de la SEMARNAT
      5. Trámites unificados de cambio de uso de suelo y/o aprovechamiento forestal ingresados a evaluacin en delegaciones federales
    6. Resolutivos emitidos en las delegaciones federales de la SEMARNAT
  3. Estado
  4. Municipio
  5. Clave del proyecto: se compone de 13 caracteres, por ej. "07CH2016V0073".
      1-2: clave del estado (ej. 07).
      3-4: abreviación del estado (ej. CH).
      5-8: año de ingreso.
      9: Tipo de proyecto (ej. V).
      10: Subtipo de proyecto (ej. 0).
      11-13: número consecutivo del proyecto.
  6. Promovente
  7. Proyecto
  8. Modalidad
  9. Fecha de ingreso (dd-mm-aaaa): pueden incluir extemporaneos (i.e. de otros meses o años)
  10. Descripción del proyecto
  11. Clave del estado
  12. Clave del municipio
  13. Año de ingreso
  14. Tipo de proyecto:
      M: Minería.
      P: Actividad productiva.
      E: Instalaciones eléctricas.
      I: Idustria.
      V: Infraestructura vehicular.
      F: Forestal.
  15. Subtipo de proyecto
## Consultar proyectos
Para buscar en qué estado o etapa se encuetra el trámite para autorización de un proyecto, hay que ingresar a la página de la SEMARNAT de ["Consulta tu trámite"](http://tramites.semarnat.gob.mx/index.php/consulta-tu-tramite) e ingresar la clave del proyecto. En esta página se pueden consultar también el documento de la Manifestación (MIA).
## 2017
Durante este año han ingresado 1228 proyectos o cambios de uso de suelo. Se han publicado 39 gacetas Ecológicas.  Los estados con mayor cantidad de proyectos registrados son Sinaloa, Edo. de México, Quintana Roo y Sonora.
![](https://github.com/nobeeakon/manifestaciones_impacto_ambiental/blob/master/imagenes/mias_edos.png)

El 23% de los proyectos están relacionados a la minera (prospección, explotación, ...). Los estados que presentan mayor cantidad de proyectos relacionados con minería son Zacatecas, Edo. de México, Durango, Chihuahua, y Sonora.
![](https://github.com/nobeeakon/manifestaciones_impacto_ambiental/blob/master/imagenes/mineria_edos.png)



## Algunos proyectos relacionados con las Manifestaciones de Impacto Ambiental
1. Gamia-UCCS: Unión de Científicos Comprometidos con la Sociedad. Anlisis técnico de MIAs.
2. [CartoCrítica](http://www.cartocritica.org.mx/mapa_mia/): Mapa de las manifestaciones de impacto ambiental ingresadas entre 2000 y 2014.

## Software usado
* emacs
* R
* GRASS
