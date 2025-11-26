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
