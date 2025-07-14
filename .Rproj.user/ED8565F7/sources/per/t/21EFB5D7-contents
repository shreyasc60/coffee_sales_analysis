# Sales by month 2024
# scale_y_continuous was added to remove scientific labeling from the y-axis.

df |> filter(year == 2024) |> ggplot(aes(x = month, y = sum(money))) + 
  geom_col(fill = "#A3DC9A") + labs(title = "Sales by month (2024)") +
  ylab("Sales") + xlab("Month") + 
  scale_y_continuous(labels = function(x) format(x, scientific = FALSE))

ggsave(filename = "sales_by_month_2024.png")

# for the year 2025

df |> filter(year == 2025) |> ggplot(aes(x = month, y = sum(money))) + 
  geom_col(fill = "#A3DC9A") + labs(title = "Sales by month (2025)") +
  ylab("Sales") + xlab("Month") + 
  scale_y_continuous(labels = function(x) format(x, scientific = FALSE))

ggsave(filename = "sales_by_month_2025.png")

# Bar plot of Top 10 products, The scale for X-axis specifies that the Lables will be NULL

df |> select(coffee_name) |> group_by(coffee_name) |> summarise(count = n()) |> 
  arrange(desc(count)) |> slice_head(n = 10) |> 
  ggplot(aes(x = coffee_name, y = count, fill = coffee_name)) + geom_col() +
  labs(title = "Top 10 Products (2024-2025)", fill = "Products") + 
  ylab("Orders") + xlab("Product") + scale_x_discrete(labels = NULL)

ggsave(filename = "top_10_products.png")

# Performance comparison for the 3rd month
df |> filter(month == 3) |> ggplot(aes(x = month, y = sum(money))) + 
  geom_col(fill = "#A3DC9A") + facet_wrap(~year) + 
  labs(title = "Sales comparison for March") + xlab("Month") + ylab("Total Sales")

ggsave(filename = "sales_comparison_march.png")