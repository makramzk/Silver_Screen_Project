# Silver_Screen_Project:
## Overview 
An entertainment company has acquired Silver Screen, a chain of three movie theaters in New Jersey. To optimize operations, management seeks to evaluate the efficiency of each location. Specifically, they want to analyze the relationship between movie rental costs and revenue generated to gain insights into profitability and cost-effectiveness.
## Project Tasks:
As a BI Analyst, my role is to meet the management's requirements by analyzing the efficiency of Silver Screen movie theaters. To achieve this, I have developed a table that summarizes the monthly performance of each movie theater across all locations.
The final table includes the following columns:
  Movie_id
  Movie_title
  Genre
  Studio
  Month
  Location
  Rental_cost
  Tickets_sold
  Revenue
Project Workflow:
✅ Task 1: Define data sources through the .yml file. Click [here](https://github.com/makramzk/Silver_Screen_Project/blob/main/Schema.yml%20Lineage.png)
✅ Task 2: Clean the data (Prepare a cleaned movie catalogue with essential movie details).Click [here](https://github.com/makramzk/Silver_Screen_Project/blob/main/Movie_catalogue_Clean.Sql%20Lineage.png)
✅ Task 3: Aggregate movie revenue by movie, location, and month.Click [here](https://github.com/makramzk/Silver_Screen_Project/blob/main/aggregated_movie_reveneu%20Lineage.png)
✅ Task 4: Aggregate rental cost data per movie, location, and month.Click [here](https://github.com/makramzk/Silver_Screen_Project/blob/main/aggregated_rental_cost%20Lineage.png)
✅ Task 5: Create a model to calculate Return on Investment (ROI) for movies based on revenue and rental cost.Click [here](https://github.com/makramzk/Silver_Screen_Project/blob/main/Silver_screen_ROI%20Lineage.png)
✅ Task 6: Implement a singular test to validate data integrity.Click [here](https://github.com/makramzk/Silver_Screen_Project/blob/main/Positive_ss_roi.sql%20Lineage.png)
✅ Task 7: Ensure successful execution of models using dbt run and dbt build.
## Data Sources:
The data collected from the three Silver Screen theater locations come from five key sources:
1️⃣ Movie_Catalogue – Contains detailed information about movies released in 2024 and rented by Silver Screen.
2️⃣ Invoices – Provides financial details related to various theater locations.
3️⃣ nj_001 – Stores transactional data from Location 1. 
4️⃣ nj_002 – Stores transactional data from Location 2.
5️⃣ nj_003 – Stores transactional data from Location 3.
Each of these datasets plays a crucial role in analyzing the efficiency of the theaters and understanding the relationship between rental costs and revenue generation.
Click  [here](https://drive.google.com/drive/folders/1HYCS_wyl_FkzcHjtoqIiNx0wNwUQhlga) to see these files.
## Result: 
Click  [here](https://github.com/makramzk/Silver_Screen_Project/blob/main/models_SSP_model_Silver_Screen_ROI.csv) to see final table.

