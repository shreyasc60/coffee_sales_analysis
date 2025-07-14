library(tidyverse)

df_1 <- read_csv("data/coffee_sales_Yaroslav_Isaienkov/index_1.csv")
df_2 <- read_csv("data/coffee_sales_Yaroslav_Isaienkov/index_2.csv")

df_1 <- df_1 |> select(!card)

df <- df_1 |> bind_rows(df_2)
remove(df_1, df_2)
