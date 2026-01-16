# Dashboard Visualisation Design

This document outlines the design decisions and reasoning behind the visualisations created for the Power BI dashboard. Each visual was deliberately chosen to answer specific analytical questions, support clear interpretation of the survey data, and communicate insights effectively to a non-technical audience.

---

## 1. Total Survey Respondents (KPI Card)

### Purpose
To provide immediate context on the size of the dataset and establish the scale of the analysis before presenting detailed insights.

### Fields Used
- Count of Unique ID (survey respondents)

### Why This Visual Was Chosen
A KPI card allows a single, high-impact metric to be communicated clearly and quickly. Placing this visual at the top of the dashboard ensures that all subsequent insights are interpreted with an understanding of how many respondents the analysis is based on.

### Insight Provided
This visual confirms that the dashboard insights are derived from **630 survey respondents**, helping users assess the reliability and representativeness of the findings.

---

## 2. Average Age of Survey Respondents (KPI Card)

### Purpose
To summarise the typical age of survey respondents and provide demographic context for interpreting salary, job role, and satisfaction insights.

### Fields Used
- Average of Q10 – Current Age

### Why This Visual Was Chosen
A KPI card allows a single summary statistic to be presented clearly and without distraction. Displaying the average age alongside the total respondent count helps frame the analysis within a demographic context and supports better interpretation of career stage–related insights.

### Insight Provided
This visual shows that the average age of survey respondents is approximately **29.9 years**, indicating that the dataset largely represents early to mid-career data professionals. This context is important when interpreting salary levels, career progression, and satisfaction metrics across the dashboard.

---

## 3. Average Salary by Job Title (Bar Chart)

### Purpose
To compare average salary levels across different data-related job roles and highlight how compensation varies by position within the data profession.

### Fields Used
- Job Title (Q1 – Which Title Best Fits Your Current Role?)
- Average Salary (numeric)

### Why This Visual Was Chosen
A horizontal bar chart allows for clear and intuitive comparison across job roles. This format makes differences in average salary easy to identify while accommodating longer category labels without reducing readability.

### Insight Provided
This visual shows that average salary varies significantly by role. Data Scientist and Data Engineer roles display the highest average salaries, while Data Analyst and Database Developer roles fall lower on the scale. Students or respondents not currently in a data role report the lowest average salaries. These differences provide insight into relative earning potential across roles and help contextualise career progression within the data field.


---

## 4. Favourite Programming Language by Job Role (Stacked Column Chart)

### Purpose
To identify the most commonly used programming languages among survey respondents and examine how language preferences vary across different data-related job roles.

### Fields Used
- Favourite Programming Language (Q5)
- Count of survey respondents
- Job Title (Q1 – Which Title Best Fits Your Current Role?)

### Why This Visual Was Chosen
A stacked column chart was chosen to show both overall popularity and role-based variation within a single visual. This format allows direct comparison of total usage by language while also highlighting how preferences differ between roles such as Data Analyst, Data Scientist, and Data Engineer.

### Insight Provided
This visual clearly shows that **Python is the dominant programming language** across all job roles, with particularly strong representation among Data Analysts and Data Scientists. Other languages such as R appear far less frequently, while languages like C++, JavaScript, and Java have minimal representation in the dataset. The stacked format also reveals that programming language preferences are broadly consistent across roles, reinforcing Python’s central position in the data profession.

---

## 5. Survey Respondents by Country (Treemap)

### Purpose
To show the geographic distribution of survey respondents and highlight which countries are most represented in the dataset.

### Fields Used
- Country (Q11 – Which Country do you live in?)
- Count of survey respondents

### Why This Visual Was Chosen
A treemap is well suited for comparing proportions across categorical data where relative size matters more than exact values. It allows users to quickly identify dominant countries while still showing the contribution of smaller groups in a compact, visually intuitive way.

### Insight Provided
The treemap shows that the **United States** represents the largest share of survey respondents, followed by **India**, **Canada**, and the **United Kingdom**. The presence of an **“Other”** category indicates participation from additional countries with smaller individual counts. This confirms that the dataset reflects a geographically diverse group of data professionals while being primarily concentrated in a few key regions.

---

6. ## Happiness With Work/Life Balance (Gauge Chart)

### Purpose
To measure overall satisfaction with work-life balance among survey respondents and provide a quick, intuitive summary of how respondents feel about this aspect of their current roles.

### Fields Used
- Average of Q6 – How Happy are you in your Current Position with the following? (Work/Life Balance)
- Minimum of Q6 – How Happy are you in your Current Position with the following? (Work/Life Balance)
- Maximum of Q6 – How Happy are you in your Current Position with the following? (Work/Life Balance)

### Why This Visual Was Chosen
A gauge chart is effective for displaying sentiment-based metrics that are measured on a fixed scale. Using the minimum and maximum values establishes the full response range (0–10), while the average value clearly communicates the overall level of satisfaction at a glance.

### Insight Provided
The visual shows that the average work-life balance satisfaction score is **5.74 out of 10**, indicating a moderate level of satisfaction among respondents. This suggests that while work-life balance is not viewed negatively overall, there is clear room for improvement across roles and industries.

---

7. ## Happiness With Current Salary (Gauge Chart)

### Purpose
To assess how satisfied survey respondents are with their current salary and provide a clear, high-level view of overall salary satisfaction.

### Fields Used
- Average of Q6 – How Happy are you in your Current Position with the following? (Salary)
- Minimum of Q6 – How Happy are you in your Current Position with the following? (Salary)
- Maximum of Q6 – How Happy are you in your Current Position with the following? (Salary)

### Why This Visual Was Chosen
A gauge chart is well suited for visualising satisfaction metrics measured on a fixed scale. Using the minimum and maximum values defines the full response range, while the average value highlights overall sentiment at a glance, making it easy for non-technical users to interpret.

### Insight Provided
The visual shows an average salary satisfaction score of **4.27 out of 10**, indicating that respondents are generally less satisfied with their salary than with their work-life balance. This highlights compensation as a potential concern across roles and suggests an area where expectations may not be fully met.

---

8. ## Entry Difficulty into the Data Profession (Donut Chart)

### Purpose
To understand how survey respondents perceive the difficulty of breaking into the data profession and capture overall sentiment around entry barriers into the field.

### Fields Used
- Q7 – How difficult was it to break into data?
- Count of responses (Number of voters)

### Why This Visual Was Chosen
A donut chart is well suited for showing the distribution of responses across a small number of categorical options. It allows viewers to quickly compare how opinions are spread between difficulty levels without overwhelming them with unnecessary detail.

### Insight Provided
The visual shows that a large proportion of respondents selected **“Neither easy nor difficult”** or **“Difficult”**, indicating that breaking into data is commonly perceived as moderately challenging. Fewer respondents reported the process as “Easy” or “Very Easy,” highlighting that entry into the data field often requires sustained effort, learning, and persistence.


---
## Design Considerations
- Consistent colour usage was applied to improve readability and visual cohesion.
- Visuals were arranged to guide the viewer from high-level context (KPIs) to detailed insights (salary, roles, tools).
- Unnecessary clutter was avoided to ensure the dashboard remains easy to interpret.

---

## Summary
The dashboard brings together demographic, professional, and sentiment-based insights to provide a well-rounded view of the data professional landscape. It establishes clear context through headline KPIs before exploring how salary varies by job role, which tools are most commonly used, and where respondents are geographically based. The inclusion of satisfaction metrics highlights a notable contrast between moderate work-life balance satisfaction and lower salary satisfaction, while the entry difficulty visual reveals that breaking into data is commonly perceived as challenging rather than easy. Overall, the visualisations work together to tell a coherent story about career progression, compensation, skills, and sentiment within the data profession, making the dashboard both informative and accessible to a non-technical audience.

