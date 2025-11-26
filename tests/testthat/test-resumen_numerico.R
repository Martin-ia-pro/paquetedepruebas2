test_that("resumen_numerico funciona", {

  resumen <- tabla_resumen_temperatura(pinguinos)

  expect_true(all(c("Maximo", "Minimo", "Promedio", "Desvio_Estandar", "Mediana") %in% colnames(resumen)))
  expect_equal(resumen$id, "NH0910")
  expect_false(any(is.na(resumen$Max)))
  expect_false(any(is.na(resumen$Min)))
  expect_false(any(is.na(resumen$Promedio)))
  expect_false(any(is.na(resumen$Desvio_Estandar)))

  expect_true(resumen$Max >= resumen$Promedio)
  expect_true(resumen$Promedio >= resumen$Min)
})
