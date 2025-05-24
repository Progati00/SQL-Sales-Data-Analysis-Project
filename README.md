# 📊 SQL Sales Data Analysis & Power BI Dashboard

This project focuses on performing **Sales Data Analysis using MySQL** and visualizing key insights through an interactive **Power BI dashboard**. It leverages real-world sales data to uncover business trends, customer behavior, and performance metrics using advanced SQL techniques and visual storytelling.

---

## 📁 Project Structure


├── data/
│   └── sales_data_sample.csv          # Raw sales dataset
├── dashboards/
│   └── Sales_Analysis_Dashboard.pbix  # Power BI dashboard file
├── queries/
│   └── sales_analysis_queries.sql     # SQL scripts for data analysis

---

## 🔍 Key SQL Features Implemented

* ✅ **Filtering & Sorting** – Extract specific records based on year, city, and order status
* ✅ **Aggregations** – Total sales, average sales, order counts by region
* ✅ **Joins** – INNER, LEFT, RIGHT, FULL JOINs on customer and order data
* ✅ **Window Functions** – `ROW_NUMBER`, `RANK`, `NTILE`, `LAG`
* ✅ **Grouping & Categorization** – Using `GROUP BY`, `HAVING`, and `CASE`
* ✅ **Common Table Expressions (CTEs)** – For reusable logic and cleaner queries

---

## 📊 Power BI Dashboard Overview

The Power BI dashboard delivers insightful visualizations with interactive features for deeper exploration of the sales data.

### 🎛️ Slicers

* Product
* Deal Size
* Order Status
* Year

### 📌 Cards

* Total Sales
* Estimated Profit
* Order Count

### 🗺️ Visuals

* Global Sales Overview by Deal Size (Map)
* Sales Distribution by Product Line (Donut Chart)
* Order Breakdown by Status & Deal Size (Clustered Bar Chart)
* Sales Trend by Order Status (Line Chart)

---

## 🛠️ Tech Stack

* **Database:** MySQL
* **Query Tool:** SQL Workbench
* **Visualization:** Power BI
* **Dataset:** `sales_data_sample.csv`

---

## 🚀 How to Use

1. **Clone the repository**

   ```bash
   git clone https://github.com/Progati00/SQL-Sales-Data-Analysis-Project.git
   ```

2. **Import the dataset into MySQL**

   Use the `sales_data_sample.csv` file located in the `data/` folder.

3. **Run SQL scripts**

   Open and execute `sales_analysis_queries.sql` from the `queries/` folder to explore and analyze the data.

4. **View Power BI Dashboard**

   Open `Sales_Analysis_Dashboard.pbix` in Power BI Desktop (file located in `dashboards/`).

   📄 [Dashboard PDF Preview](https://github.com/Progati00/SQL-Sales-Data-Analysis-Project/blob/main/dashboards/Sales_Analysis_Dashboard.pdf)
   *(View a static snapshot of the dashboard for users without Power BI installed.)*

5. **Customize Further**

   Modify SQL queries or visuals to tailor the analysis to your specific business needs.

---

## 📈 Use Cases

* Sales Performance Monitoring
* Customer Purchase Behavior Analysis
* Trend Analysis for Strategic Planning
* Geographic Insights by Deal Size

---

🔗 **Project Repository**
[GitHub - SQL Sales Data Analysis Project](https://github.com/Progati00/SQL-Sales-Data-Analysis-Project)

```
