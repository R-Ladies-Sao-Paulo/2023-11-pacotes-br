url_forms <- "https://docs.google.com/spreadsheets/d/17RX2Z4iYWIvCaDSyY1_1x3Z2mUZhGt78D9gpVCzVEJs/edit#gid=497230646"

tab <- googlesheets4::read_sheet(url_forms) |>
  janitor::clean_names()

c(tab$endereco_de_e_mail, tab$email) |> 
  unique() |> 
  writeLines(sep = ", ")
