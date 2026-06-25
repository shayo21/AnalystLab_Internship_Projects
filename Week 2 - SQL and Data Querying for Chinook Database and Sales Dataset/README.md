# SQL & Data Querying: Sales & Music Store Analysis


## Project Overview
This project focuses on extracting, transforming, and analyzing structured data to solve real-world business problems. Using two distinct datasets—a digital music store and a physical goods retailer—this analysis uncovers revenue trends, product performance, and high-value customer purchasing behavior.

## Tech Stack & Environment Architecture
Due to hardware limitations (running a Windows 7, 32-bit OS), traditional local database installations like PostgreSQL were not viable. I engineered a fully cloud-based, mobile-accessible pipeline to execute this project:
* Google Colab (Python/Pandas): Used to clean and convert raw, problematic datasets into pure, BigQuery-compatible CSV files.
* Google BigQuery: The primary SQL engine used for querying.
  
## Data Sources
* Chinook Database (Music Store Data): A denormalized dataset containing information on invoices, customers, tracks, and music genres.
* AdventureWorks Lite Equivalent (Sample Sales Data): A dataset detailing customer orders, shipping status, product lines, and revenue over time.
  
## Key SQL Concepts for Analysis 
To accurately analyze the flattened CSV datasets without artificially inflating revenue numbers, I utilized advanced SQL techniques:
* **Common Table Expressions (CTEs):** Used extensively to isolate unique invoices and customers before joining tables, ensuring pristine aggregations.
* **Window Functions:** Implemented RANK() OVER (PARTITION BY ...) to determine the absolute top-purchasing customers across distinct product categories.
* **Aggregate Functions:** SUM(), AVG(), and COUNT(DISTINCT ...) utilized for revenue and volume calculations.
* **Subqueries:** Embedded within HAVING clauses to filter dynamic groupings (e.g., finding customers who spend above the overall average).

## Key Business Insights

* **Product & Genre Dominance**
Music Store: "Rock" is the undisputed top-performing genre, generating $826.65 across 835 tracks sold—more than double the revenue of the second-highest category (Latin).
Retail Sales: "Classic Cars" dominate the physical shipment volume, generating roughly $1.37M in realized revenue.
* **Seasonality & Revenue Trends**
The business experiences massive seasonal spikes in Q4, heavily reliant on end-of-year holiday shopping. November alone generated over $1M in realized revenue for both recorded years.
* **Customer Purchasing Behavior (VIPs)**
The baseline average customer lifetime spend in the music database is $39.47. By filtering the data, I identified a core segment of 22 "VIP" customers who exceed this average (led by Helena Holý at $49.62).

## Recommendations 

### Music Store 

* The company's market and acquisition budgets should lean heavily into expanding the Rock, Metal, and Alternative & Punk catalogs.
* The company should ensure inventory and holiday marketing efforts to aggressively ramped up by September to support the immense volume that hits in November.

 ### Adventure Lite
 
* The warehouse should prioritize supply chain logistics for Classic and Vintage Cars.
* Implement a VIP loyalty program or targeted promotional campaigns specific to these 22 high-value individuals to encourage repeat purchases and retain their exceptional lifetime value.
  
## Project Outcome 

Despite starting with severe hardware limitations (a 32-bit Windows 7 machine incapable of running local database servers), this project resulted in a fully functional, end-to-end data analysis pipeline built entirely in the cloud from a mobile device.

The concrete deliverables and outcomes of this project include:

* **Cloud Infrastructure Workaround:** Successfully engineered a data pipeline using Python in Google Colab to clean and format raw database files into pure CSVs, bypassing Supabase and SQLite limitations to load the data directly into Google BigQuery.
* **Advanced Data Modeling Script:** Authored a robust `.sql` script that utilized Common Table Expressions (CTEs) to isolate unique records from a flattened CSV, preventing massive revenue inflation caused by repeating invoice rows.
* **Data-Driven Executive Report:** Generated a final, professional summary report highlighting over $9.2M in total sales revenue, proving heavy Q4 seasonality for future inventory planning, and identifying exactly 22 high-value VIP customers for targeted marketing.

## Project Files


