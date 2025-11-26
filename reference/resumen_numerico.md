# Resumen Numerico

La funcion resumen_numerico sirve para obtener una tabla o tibble con el
maximo, minimo, promedio, desvio estandar y mediana de una columna del
archvo que se le pasa como argumento

## Usage

``` r
resumen_numerico(datos, columna)
```

## Arguments

- datos:

  Archivo de datos

- columna:

  Columna de de datos de tipo numerico de la cual se quiere obtenr un
  resumen numerico

## Value

Devuelve un tibble o tabla con el maximo, minimo, promedio, desvio
estandar y mediana de una columna del archvo que se le pasa como
argumento

## Examples

``` r
resumen_numerico(pinguinos, alto_pico_mm)
#> Error: object 'alto_pico_mm' not found
```
