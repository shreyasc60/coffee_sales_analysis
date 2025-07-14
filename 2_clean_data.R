# convert cash_type column from character to factor 
df <- df |> mutate(cash_type = as.factor(cash_type))

# split the date into y,m 
df <- df |> mutate(yr = year(date), mth = month(date)) |> select(!date)
df <- df |> rename(year = yr, month = mth)
df <- df |> mutate(year = as.factor(year), month = as.factor(month))

# Cleaning Product names

df |> select(coffee_name) |> group_by(coffee_name) |> summarise(count = n())

# "Americano with Milk" is mistyped as "Americano with milk" 
# at some places. Let's make it consistent.

milk_correction <- df |> filter(coffee_name == "Americano with milk") |> 
  mutate(coffee_name = "Americano with Milk")

df_dirty <- df |> filter(coffee_name != "Americano with milk")

df <- df_dirty |> add_row(milk_correction)
remove(df_dirty, milk_correction)
