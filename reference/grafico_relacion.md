# Grafico para determinar Relacion

La funcion grafico_relacion sirve para crear un grafico de dispercion en
donde se pueda ver si hay relacion entre dos variables comtinuas

## Usage

``` r
grafico_relacion(datos, ejex, ejey, titulo)
```

## Arguments

- datos:

  Dataset con la informacion del grafico que se quiere crear

- titulo:

  titulo del grafico de dispercion

- x:

  variable que ira en el eje x

- y:

  variable que ira en el eje y

## Value

Devuelve un grafico de dispercion en donde se podra ver si hay relacion
entre las variables

## Examples

``` r
grafico_relacion(pinguinos, alto_pico_mm, largo_aleta_mm, "Relacion entre el pico y la aleta")
#> Error in ggplot2::geom_point(): Problem while computing aesthetics.
#> ℹ Error occurred in the 1st layer.
#> Caused by error:
#> ! object 'alto_pico_mm' not found
```
