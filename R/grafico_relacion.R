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
#' pinguinos
#' grafico_relacion(pinguinos, "largo_pico_mm", "largo_aleta_mm", "Relacion entre el pico y la aleta")
#'
#' @returns Devuelve un grafico de dispercion en donde se podra ver si hay relacion entre las variables
#' @export
grafico_relacion <- function(datos, x, y, titulo) {
    ggplot2::ggplot(data = datos)+
      ggplot2::aes(x = x, y = y)+
      ggplot2::labs(title = titulo)+
      ggplot2::geom_point()
  }
