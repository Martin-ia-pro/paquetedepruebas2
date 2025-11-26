#' Resumen Numerico
#'
#' La funcion resumen_numerico sirve para obtener una tabla o tibble con el maximo, minimo, promedio,
#' desvio estandar y mediana de una columna del archvo que se le pasa como argumento
#'
#' @param datos Archivo de datos
#' @param columna Columna de de datos de tipo numerico de la cual se quiere obtenr un resumen numerico
#'
#' @examples
#' resumen_nuemrico(datos1, Cantidad_de_aviones)
#'
#' @returns Devuelve un tibble o tabla con el maximo, minimo, promedio,
#' desvio estandar y mediana de una columna del archvo que se le pasa como argumento
#' @export
resumen_numerico <- function(datos,columna) {
    if(!is.numeric(columna)) {
      cli::cli_inform( "i" = "La columna no es de tipo numerico")
    } else {
      resumen <- datos |>
      dplyr::summarise(Maximo = max(columna, na.rm = TRUE),
                       Minimo = min(columna, na.rm = TRUE),
                       Promedio = mean(columna, na.rm = TRUE),
                       Desvio_Standar = sd(columna, na.rm = TRUE),
                       Mediana = median(columna, na.rm = TRUE))
    }
}
