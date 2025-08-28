# Superstore Sales Analysis — Portfolio Project

**Owner:** Punam Paul  
**Role demonstrated:** Junior Data Analyst / BI Analyst  
**Tools:** Python (pandas), SQL, Jupyter, Matplotlib / Seaborn, Tableau Public (optional)


## Project summary (1 sentence)
A concise analysis of Superstore sales data that surfaces top revenue drivers, seasonal trends, and actionable recommendations for increasing revenue and reducing low-performing SKUs.


## What I did
- Performed data cleaning and exploratory data analysis (EDA) to understand sales, orders, and product performance.  
- Built core SQL queries to compute KPIs: total sales, average order value, monthly revenue, repeat customers, top products, and sales by region.  
- Created visualizations: time series of monthly sales, top 10 products by revenue, and regional performance dashboard.  
- Wrote clear, stakeholder-friendly recommendations based on findings.


## Files in this repo
- `data/superstore.csv` — dataset (source: Kaggle / public)  
- `notebooks/01-eda.ipynb` — EDA and charts (Jupyter Notebook)  
- `sql/queries.sql` — core SQL queries used in the analysis  
- `outputs/` — PNG charts (sales_trend.png, top_products.png)  
- `dashboards/` — link to Tableau Public or screenshots


## How to run (local)
1. Create a Python environment and install requirements:
```bash
python -m venv venv
source venv/bin/activate   # Mac/Linux
# or on Windows: venv\Scripts\activate
pip install -r requirements.txt
