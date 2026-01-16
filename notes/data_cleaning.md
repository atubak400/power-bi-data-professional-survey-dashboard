# Data Cleaning and Preparation Notes

This document outlines the data cleaning and preparation steps carried out before and during analysis. The purpose of these steps was to improve data quality, ensure consistent categorisation, and prevent misleading results in the Power BI dashboard.

---

## 1. Removal of Unnecessary Columns

### Issue
The dataset contained several columns that were not relevant to the analysis, such as browser information, referrer data, and other technical metadata automatically captured during the survey. These fields did not contribute to any analytical insight or dashboard metric.

If left in the dataset, these columns would add unnecessary clutter, make the data model harder to navigate, and increase the risk of confusion during analysis.

---

### Action Taken
Unnecessary columns were removed in **Power Query** using the **Remove Columns** feature. This step was performed at the beginning of the cleaning process so that only fields relevant to analysis remained.

---

### Result
- Reduced dataset complexity  
- Improved clarity within the data model  
- Made subsequent cleaning steps easier and more focused  
- Improved overall performance and usability in Power BI  

---

### Why This Step Matters
Removing irrelevant columns early is a data preparation best practice. It simplifies the data model, reduces noise, and ensures analytical focus remains on fields that directly support insights and decision-making.

---

## 2. Job Title Standardisation

### Issue
The **Job Title** column contained inconsistent values due to free-text responses, particularly entries such as *“Other (please specify…)”*. In these cases, respondents added custom descriptions in brackets, which resulted in many slightly different job titles that represented the same category.

If left uncleaned, this would have caused Power BI visuals to display dozens of nearly identical job titles, making charts difficult to read and reducing the accuracy of aggregations.

---

### Action Taken
The column was cleaned using **Power Query’s Split Column feature** by splitting the text at the opening bracket **“(”**. This removed the free-text descriptions while retaining a clean and consistent value such as **“Other”**.

---

### Result
- Reduced the number of unique job title values
- Created a consistent set of job role categories
- Enabled accurate grouping and aggregation in visuals
- Improved dashboard readability and interpretability

---

### Why This Step Matters
Standardising categorical data early in the process is essential for reliable analysis. This step ensured that job titles could be grouped correctly, prevented misleading charts, and allowed the dashboard to present a clear and accurate story of the survey results.

---

## 3. Favourite Programming Language Standardisation

### Issue
The **Favourite Programming Language** column contained inconsistent values due to free-text responses entered under the “Other” option. Respondents provided programming language names in different formats and spellings, resulting in multiple values that represented the same language (for example, several variations of SQL).

If left uncleaned, this would have caused Power BI visuals to split counts across multiple labels for the same programming language, leading to misleading popularity comparisons.

---

### Action Taken
The column was cleaned in **Power Query** using the **Split Column** feature by splitting the text at the colon **“:”**. This removed free-text descriptions following entries such as *“Other:”* while preserving a simplified and consistent category value such as **“Other”**.

---

### Result
- Reduced duplication of programming language values  
- Created clearer and more consistent language categories  
- Enabled accurate counting and comparison in visuals  
- Improved readability of programming language charts  

---

### Why This Step Matters
Standardising categorical text data is essential for accurate aggregation and comparison. This step ensured that programming language popularity was not distorted by inconsistent naming and allowed the dashboard to present a clear and reliable comparison of respondents’ preferred tools.

## 4. Salary Range Conversion and Average Salary Calculation

### Issue
The **Current Yearly Salary** column was stored as text and contained salary ranges rather than numeric values. These ranges included non-numeric characters such as symbols, text, and separators, which meant the column could not be used directly for calculations, averages, or comparisons in Power BI.

Without converting this column into numeric values, it would not have been possible to analyse salary trends accurately across job roles, countries, or other dimensions.

---

### Action Taken
To preserve the original data and maintain transparency, the **Current Yearly Salary** column was **duplicated** before any transformations were applied. All cleaning and transformation steps were performed on the duplicated column.

The following steps were then carried out in **Power Query**:

- The duplicated salary column was split using the **Split Column by Digit to Non-Digit** option to separate numeric values from text and symbols.
- Unnecessary columns created during the split were removed, leaving only the numeric values representing the lower and upper bounds of each salary range.
- The remaining numeric values were initially stored as text and were converted to **number** data types to enable calculations.
- A new custom column named **Average Salary** was created using the **Add Column** feature. This column calculated the average of the lower and upper salary values for each respondent.

The original **Current Yearly Salary** column was retained for reference, while the **Average Salary** column was used for analysis and visualisation.

---

### Result
- Preserved the original salary data for traceability  
- Enabled numerical salary analysis and comparison  
- Supported calculation of average salary by role, country, and other categories  
- Improved accuracy of salary-related KPIs and visuals  

---

### Why This Step Matters
Duplicating the salary column before transformation is a data preparation best practice. It preserves the original raw data, improves transparency, and allows analytical assumptions to be clearly documented. Converting salary ranges into numeric averages enabled meaningful aggregation and ensured salary insights in the dashboard were accurate and reliable.

## 5. Country and Industry Standardisation

### Issue
The **Which country do you live in?** and **Which industry do you work for?** columns contained inconsistent values due to free-text input. Many responses included additional explanations following structured options, often separated by delimiters such as a colon `:` or enclosed in brackets `(`.

As a result, multiple values represented the same country or industry but appeared as separate categories. If left uncleaned, this would have led to fragmented groupings, cluttered visuals, and misleading comparisons in the dashboard.

---

### Action Taken
Both columns were cleaned in **Power Query** using a consistent standardisation approach:

- The columns were split using the **Split Column by Delimiter** feature at the colon `:` to separate structured category values from free-text responses.
- The left-most value, representing the intended category, was retained.
- A further split was applied using the opening bracket `(` to remove additional explanatory text.
- The newly created columns containing non-standardised free-text inputs were removed.

This ensured that only clean, consistent category values remained in both columns.

---

### Result
- Reduced the number of duplicate and fragmented category values  
- Created consistent country and industry groupings  
- Improved readability and accuracy of charts and filters  
- Enabled meaningful comparison across countries and industries  

---

### Why This Step Matters
Country and industry fields are key dimensions in survey analysis. Standardising these categorical values ensures that counts and comparisons are accurate and that insights are not distorted by inconsistent or free-text responses. This step improved the reliability of the analysis and supported clearer, more interpretable dashboard visuals.

## 6. Date Taken Parsing and Locale Correction

### Issue
The **Date Taken (America/New_York)** column initially generated errors when Power BI attempted to load the dataset. Although the values appeared to be valid dates, they were stored as text using a **US-specific date format (MM/DD/YYYY)**.

Because the default locale settings expected a different date format, Power BI could not correctly parse values such as `6/13/2022`, resulting in `Error` values across the entire column.

---

### Action Taken
The column was corrected in **Power Query** by explicitly converting the data type **using locale settings**:

- The column data type was changed to **Date** using the **Change Type → Using Locale** option.
- The locale was set to **English (United States)** to correctly interpret the MM/DD/YYYY date format.
- This ensured Power BI parsed the date values accurately without altering the underlying data.

No rows were removed, and the original date information was preserved.

---

### Result
- Resolved all date parsing errors in the column  
- Successfully converted the column to a valid Date data type  
- Enabled the dataset to load correctly into the Power BI model  
- Made the date field usable for filtering and reference if required  

---

### Why This Step Matters
Date fields are sensitive to regional formatting differences. Explicitly setting the correct locale prevents misinterpretation of valid dates and avoids loading errors. Addressing this issue ensured data integrity, allowed the transformation process to complete successfully, and confirmed that the dataset was ready for analysis and visualisation.

## 7. Average Salary Data Type Conversion

### Issue
After calculating the **Average Salary** column, the values were stored as text. Although the column contained numeric-looking values, Power BI could not use it for aggregation or visualisation while it remained a text data type.

---

### Action Taken
The **Average Salary** column was converted from a **text** data type to a **numeric (number)** data type in Power Query. This allowed Power BI to correctly interpret the values as numbers.

---

### Result
- Enabled salary values to be aggregated and analysed  
- Allowed the Average Salary field to be used in charts, KPIs, and measures  
- Ensured accurate calculations and visualisation behaviour  

---

### Why This Step Matters
Correct data types are essential for accurate analysis. Converting the Average Salary column to a numeric data type ensured that salary insights could be visualised and calculated correctly, supporting reliable and meaningful dashboard outputs.

---

## Summary
The data cleaning process focused on reducing dataset complexity, standardising key fields, and preparing the data for accurate analysis. All cleaning steps were designed to improve data quality, support clear and reliable visualisation, and ensure that the Power BI dashboard delivers meaningful and trustworthy insights.

