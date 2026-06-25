# Project Overview

The project analyzes e-commerce transactions for a UK company and netflix content performance to identify sales trends and patterns.

## Business Problem

Revenue generating and customer purchase performance are important key drives for business growth and development. The two companies needed insights into e-commerce transactions and netflix tv and movies performance to identify factors contributing to revenue generated and customers purchasing patterns and performance in specific countries.

## Project Objectives

* To clean, explore, and validate two disinvt dataset to extract actionable business insights.
* To understand customer purchasing behaviours and content distribution trends.

## Tools Used

* Python 
* Jupyter Notebook 
* Google Doc
* Microsoft Word

## Data Preparation
The data prepration is categorized in three phrases. Which are:

### Data Understanding 

To understand the data, the dataset was displayed using (df.describe and df.describe()) function to know the number of rows and columns, data types of all columns, categorical and numerical features, and unique identifiers (primary keys).

### Data Cleaning 

The dataset was cleaned using the functions (df.isnull().sum(), df.duplicates().sum(), df.drop_duplicates(inplace = True, and df. ['date'] = pd.to_datetime (date['date']) ) to identify columns with missing values, handling missing values either by dropping them.or filling them (with the variable "Unknown"), identify and remove duplicates rowe where necessary, ensure standardization through fixing incorrect date format, text format (upper and lower case), column names and data type.

### Data Validation 

Data validation was performed by identifying and handling invalid values, inconsistent records, incorrect formats and outliers or anomalies where appropriate.

## Dashboard Features 

### E-commerce Executive Dashboard Performance 

* Revenue generated (total)
* Total items sold
* Active unique customers
* Monthly sale revenue growth profile
* International markets (exclu. UK)
* Products by volume sold (top 5)
* VIP high-volume customers (top 5)
* Inventory price distribution profile 

### Netflix Global Content Strategy Dashboard 

* Total catalog titles
* Total feature movies
* Total tv shows
* Platform content acquisition overtime 
* Catalog format distribution
* Content producing regions (top 5)
* Most prevalent genres (top 5)
* Target audience demographics 

## Key Insights 

### E-commerce Transactions Insights 
* Revenue exhibits a massive spike in November, indicating a business model heavily reliant on Q4 holiday/end-of-year shopping.
* High-volume items like "WORLD WAR 2 GLIDERS" and "JUMBO BAG RED RETROSPOT" lead in quantity, but the vast majority of catalog items are low-ticket goods priced under £3.
* Selected few "VIP" customers (e.g., ID 14646) generate a disproportionately high percentage of total revenue, suggesting strong B2B or wholesale relationships.

### Netflix Content Insights 
* The platform heavily favors feature-length content, with Movies making up roughly 70% of the catalog compared to TV Shows.
* The most common content rating by a wide margin is TV-MA (Mature Audiences), signaling a strategic shift away from family-centric programming toward adult-oriented media.
* The United States is the top content producer, India holds a remarkably strong second place, dominating the "International Movies" genre.

## Recommendations 

### E-commerce Transactions Recommendations 
* Inventory for top-performing items (like novelty gliders and bags) must be aggressively stocked by late Q3 to prepare for the November revenue surge. Marketing budgets should be heavily weighted toward this window.
* The business should assign dedicated account managers or implement tiered bulk-discount pricing to retain these high-value buyers.

### Neflix Content Recommendations 
* Netflix should continue investment in localized Indian content (especially in the Drama and Comedy genres) which represents a massive avenue for international subscriber retention and growth
* Production budgets should continue to prioritize TV-MA International Movies and Dramas, as this is where the core catalog strength lies.

## Dashboard Preview

![Netflix Dashboard](https://github.com/shayo21/AnalystLab_Internship_Projects/blob/main/Netflix%20Dashboard.jpg)


![E-commerce Dashboard](https://github.com/shayo21/AnalystLab_Internship_Projects/blob/main/E-commerce%20Dashboard.jpg)

## Project Files

![Week 1 & 2 projects_Jupyter Notebook](https://github.com/shayo21/AnalystLab_Internship_Projects/blob/main/AnalystLab%20Internship%20Project(WK%201%20%26%202).ipynb)

![cleaned dataset](https://github.com/shayo21/AnalystLab_Internship_Projects/blob/main/cleaned_netflix_titles.csv)

![preprocessing analysis](https://github.com/shayo21/AnalystLab_Internship_Projects/blob/main/preprocessing.py)
