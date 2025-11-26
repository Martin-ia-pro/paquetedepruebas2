#' Grafico para determinar Relacion
#'
#' La funcion grafico_relacion sirve para crear un grafico de dispercion en donde se pueda ver
#' si hay relacion entre dos variables comtinuas
#'
#' @param datos Dataset con la informacion del grafico que se quiere crear
#' @param x variable que ira en el eje x
#' @param y variable que ira en el eje y
#' @param titulo titulo del grafico de dispercion
#'
#' @examples
#' grafico_relacion(pinguinos, alto_pico_mm, largo_aleta_mm, "Relacion entre el pico y la aleta")
#'
#' @returns Devuelve un grafico de dispercion en donde se podra ver si hay relacion entre las variables
#' @export
grafico_relacion <- function(datos, ejex, ejey, titulo) {
  if(!is.numeric(ejex) | !is.numeric(ejey)) {
    cli::cli_inform("i" = "Los parametros x e y deben ser de tipo numerico")
  }else{ if(!is.character(titulo)){
    cli::cli_inform("i" = "El parametro titulo debe ser de tipo caracter")
  } else {
    ggplot2::ggplot(data = datos)+
      ggplot2::aes(x = ejex, y = ejey)+
      ggplot2::labs(title = titulo)+
      ggplot2::geom_point()
  }}
}
