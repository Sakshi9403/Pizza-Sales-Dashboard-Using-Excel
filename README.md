# Pizza-Sales-Dashboard-Using-Excel
#### Problem Statement
- The goal of this project is to analyze key indicators for a pizza sales dataset to gain insights into business performance. The metrics to be calculated include:

- Total Revenue: The sum of the total price of all pizza orders.
Average Order Value: The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
- Total Pizzas Sold: The sum of the quantities of all pizzas sold.
- Total Orders: The total number of orders placed.
- Average Pizzas per Order: The average number of pizzas sold per order, calculated by dividing the total number of pizzas sold by the total number of orders.
#### Chart Requirements
## 1. Daily Trend for Total Orders
- Create a bar chart that displays the daily trend of total orders over a specific time period. This chart helps identify any patterns or fluctuations in order volumes on a daily basis.

## 2. Hourly Trend for Total Orders
- Generate a line chart illustrating the hourly trend of total orders throughout the day. This chart allows identification of peak hours or periods of high order activity.

## 3. Percentage of Sales by Pizza Category
- Create a pie chart showing the distribution of sales across different pizza categories. This chart provides insights into the popularity of various pizza categories and their contribution to overall sales.

## 4. Percentage of Sales by Pizza Size
- Generate a pie chart representing the percentage of sales attributed to different pizza sizes. This chart helps understand customer preferences for pizza sizes and their impact on sales.

## 5. Total Pizzas Sold by Pizza Category
- Create a funnel chart presenting the total number of pizzas sold for each pizza category. This chart allows comparison of the sales performance of different pizza categories.

## 6. Top 5 Best Sellers by Total Pizzas Sold
- Create a bar chart highlighting the top 5 best-selling pizzas based on the total number of pizzas sold. This chart helps identify the most popular pizza options.

## 7. Bottom 5 Worst Sellers by Total Pizzas Sold
- Generate a bar chart showcasing the bottom 5 worst-selling pizzas based on the total number of pizzas sold. This chart helps identify underperforming or less popular pizza options.

## Data Cleaning and Processing
## Data Cleaning
- Pizza Size Regularization: In the 'pizza_Regularize' column (Column L), sizes were standardized (L - Large, S - Regular, M - Medium).
## Data Processing
Day Extraction: A new column was created to extract the day from the 'order_date' using the text function.
## Data Analysis
- Pivot Table Creation: A pivot table was created to facilitate data analysis. The 'value field setting' in the pivot table was used to change the sum of 'order_id' to the count of 'order_id'. Due to repeated 'order_id's, a new column 'total_orders' was created using the COUNTIF function for distinct counting.
## Dashboard Creation
- The data was imported into Excel, and the above steps were followed for data cleaning, processing, and analysis. Visualizations were created using pivot tables and the analyzed data, meeting the chart requirements outlined above.
