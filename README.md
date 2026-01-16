# Power BI Survey Dashboard Analysis

## Project Overview

This project analyses a real-world survey dataset of data professionals using Power BI. The aim is to transform raw survey responses into clear, interactive insights that highlight trends in job roles, salaries, programming languages, industries, and overall job satisfaction.

The project demonstrates end-to-end data analyst skills, including data cleaning, data transformation, DAX calculations, and dashboard design.

---

## Business Objective

The objective of this project is to provide an interactive dashboard that helps stakeholders:

- Understand salary trends across different data roles  
- Identify the most commonly used programming languages among data professionals  
- Compare survey responses by country and industry  
- Gain insight into job satisfaction levels within the data profession  

The dashboard supports data-driven decision-making by presenting complex survey data in a clear and accessible format.

---

## Dataset Description

The dataset is a real-world survey of data professionals collected in Excel format. Each row represents an individual survey respondent, while columns capture information such as job title, salary range, programming language preference, country, industry, and satisfaction indicators.

**Data source:** Public survey of data professionals conducted by Alex The Analyst and shared via LinkedIn and Twitter  
**Format:** Excel (`.xlsx`)  
**Granularity:** One row per survey respondent  

---

## Data Cleaning and Preparation

During data import, the dataset was opened in Power Query using the **Transform** option rather than **Load**, as initial loading revealed data type issues that required cleaning before the data could be reliably analysed.

Data cleaning and transformation were then performed in Power Query within Power BI to improve data consistency, accuracy, and analytical reliability. An initial focus was placed on simplifying the dataset and standardising categorical fields to ensure reliable aggregation and clear visualisation.

Key steps included:

- Removing unnecessary columns (Browser, OS (Operating System), Referrer, and Email) that contained technical metadata rather than analytical insight, reducing dataset complexity and improving model clarity.  
- Standardising job titles by removing free-text descriptions from entries such as “Other (please specify…)” to create consistent role categories.  
- Standardising favourite programming language values by removing free-text inputs and consolidating categories for accurate popularity comparisons.  
- Cleaning and standardising country and industry fields by removing free-text responses and retaining only structured category values.  
- Converting salary ranges into a numeric **Average Salary** column to enable meaningful salary analysis and comparison.  
- Resolving date parsing errors by correcting locale-specific date formatting so that date fields could be interpreted correctly.  
- Ensuring derived fields, including **Average Salary**, were stored using appropriate numeric data types to support accurate aggregation and visualisation.  

Detailed data cleaning decisions, assumptions, and transformation logic are documented in `notes/data_cleaning.md`.

---

## Data Model and DAX Measures

A clean and simple data model was created to support the analysis. DAX measures were developed to calculate key metrics and KPIs used throughout the dashboard, including salary averages and response counts.

Key DAX measures are documented in `sql_or_dax/dax_measures.md`.

---

## Visualisation and Dashboard Design

The dashboard was designed to guide users from high-level context to more detailed analytical insights in a logical and intuitive flow. Each visual was deliberately chosen based on the type of question being answered and the nature of the underlying data, with a strong focus on clarity, comparability, and accessibility for non-technical users.

The design begins with headline KPI cards to establish dataset context, followed by comparative and distribution-based visuals that explore compensation, tools, geography, and sentiment within the data profession. Consistent colour usage and minimal visual clutter were applied throughout to improve readability and ensure the dashboard remains easy to interpret.

Key visual components include:

- **KPI cards** showing the total number of survey respondents and the average age of respondents to provide immediate demographic context.  
- A **bar chart** comparing average salary by job title, enabling clear comparison of compensation across data roles.  
- A **stacked column chart** showing favourite programming languages by job role, highlighting both overall popularity and role-based variation.  
- A **treemap** displaying the geographic distribution of respondents by country, allowing quick comparison of relative participation levels.  
- **Gauge charts** summarising satisfaction with work-life balance and salary, providing intuitive sentiment indicators on a fixed scale.  
- A **donut chart** illustrating perceived difficulty of breaking into the data profession, capturing respondent sentiment around entry barriers.  

Detailed visual-level design decisions, field selections, and insights are documented in `notes/visualisation_design.md`.

---

## Dashboard Overview

The Power BI dashboard is fully interactive and designed to support exploratory analysis. Users can apply filters and interact with visuals to explore how salary, job roles, programming languages, geography, and satisfaction metrics relate to one another across the survey dataset.

### Main Dashboard

![Dashboard Overview](images/dashboard_overview.png)

<!-- ### Additional Pages

![Page 1](images/page_1.png)  
![Page 2](images/page_2.png) -->

---

## Key Insights

- Average salaries vary significantly across different data roles, with senior roles earning notably higher salaries.  
- Python is the dominant programming language across data roles, with consistent usage among analysts, scientists, and engineers.  
- Survey respondents are geographically diverse, with the largest representation from the United States, followed by India, Canada, and the United Kingdom.  
- Respondents report moderate satisfaction with work-life balance but lower satisfaction with salary.  
- Breaking into the data profession is commonly perceived as moderately difficult rather than easy.  

These insights demonstrate how survey data can be converted into actionable information.

---

## Tools and Technologies Used

- Power BI  
- Power Query  
- DAX  
- Microsoft Excel  

---

## How to Use the Dashboard

- Use slicers to filter results by country, role, or industry  
- Interact with charts to highlight specific categories  
- Navigate between pages to explore different aspects of the survey  

---

## Future Improvements

- Add more advanced DAX calculations for deeper analysis  
- Enhance dashboard design and accessibility  
- Publish the report to Power BI Service for online access  
- Incorporate additional survey data for trend analysis over time  

---

## Author

**Kingsley Atuba**  
Data Analyst | Power BI | SQL | Excel
# power-bi-data-professional-survey-dashboard
