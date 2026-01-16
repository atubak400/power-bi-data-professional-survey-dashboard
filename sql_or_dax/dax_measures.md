# DAX Measures and Calculations

This document outlines how calculations were handled within the Power BI dashboard.

---

## Approach to Calculations

This project did not require complex custom DAX measures. The analytical requirements were fully met using built-in Power BI aggregations and Power Query transformations.

Key metrics such as average salary, respondent counts, minimum and maximum values, and satisfaction scores were calculated using standard aggregation functions (Average, Count, Min, Max) applied directly within visuals.

This approach was chosen deliberately to:
- Keep the data model simple and easy to understand
- Reduce unnecessary complexity in calculations
- Ensure transparency and maintainability of the analysis

---

## Key Calculations Used

The following calculations were used throughout the dashboard:

- **Count of Survey Respondents**  
  Calculated using a count of unique respondent IDs to determine the total number of survey takers.

- **Average Salary**  
  Derived in Power Query by converting salary ranges into numeric values and calculating an average salary per respondent. This numeric column was then aggregated using standard averages within visuals.

- **Average Age**  
  Calculated using the built-in Average aggregation on the Current Age field.

- **Satisfaction Scores**  
  Work-life balance and salary satisfaction were summarised using Average, Minimum, and Maximum aggregations to support gauge visualisations.

- **Response Counts by Category**  
  Counts were used to analyse distributions across job roles, programming languages, countries, and perceived entry difficulty.

---

## Notes on DAX Usage

While Power BI supports advanced DAX calculations, this project demonstrates that clear insights can often be achieved without complex measures when the underlying data is properly cleaned and structured.

The project structure includes this file to allow for easy extension in the future should more advanced analytical requirements arise.
