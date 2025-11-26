grafico_relacion <- function(datos, x, y, titulo) {
  if(!is.numeric(x) | !is.numeric(y)) {
    cli::cli_inform("i" = "Los parametros x e y deben ser de tipo numerico")
  }else{ if(!is.character(titulo)){
    cli::cli_inform("i" = "El parametro titulo debe ser de tipo caracter")
  } else {
    ggplot2::ggplot(data = datos)+
      ggplot2::aes(x = x, y = y)+
      ggplot2::labs(title = titulo)
  }}
}
