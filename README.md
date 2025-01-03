## HR Management Data Analysis Project
![58n1mdx8](https://github.com/user-attachments/assets/844e7627-e438-4264-9137-4d1206fe0382)
*HR Image www.vecteezy.com*

## Question

Using the HR Management data, your company requires you to delve into data analysis using SQL to 
uncover insights for HR department and visualize the results using Power BI in other to make an 
informed decisions and strategic workforce planning.

## Problem Statement

1.  What is the gender breakdown in the Company?
2. How many employees work remotely for each department?
3. What is the distribution of employees who work remotely and HQ
4. What is the race distribution in the Company?
5. What is the distribution of employee across different states?
6. What is the number of employees whose employment has been terminated
7. Who is/are the longest serving employee in the organization.
8. Return the terminated employees by their race
9. What is the age distribution in the Company?
10. How have employee hire counts varied over time?
11. What is the tenure distribution for each department?
12. What is the average length of employment in the company?
13. Which department has the highest turnover rate?

## Data Source and Overview

Source: Kaggle

Dataset Size: 22,157 rows, 13 columns

Columns: ID , First Name, Last Name , Birthdate, Gender, Race, Department, Job Title, Location, Hire Date, Termination Date, Location City

## Objective

Using HR Management data, the company required insights to support informed decision-making and strategic workforce planning. The analysis was conducted using SQL and visualized in Power BI.

## Data Cleaning Process

1. Duplicate Check: No duplicate values were found.

2. Date Formatting: Standardized the Hire Date and Birthdate columns to SQL-compatible formats.

3. Outlier Handling: Addressed outliers in the Birthdate column.

4. Data Type Corrections: Ensured all columns were formatted with appropriate data types.

5. Derived Column: Added an Age column by subtracting the Birthdate from the current date.

## Data Exploration and Insights

Here's a detailed explanation for each question from the project analysis, incorporating the provided data and insights:  

### **Data Exploration**  

#### 1. **Gender Breakdown**  
- **Counts**:  
  - Male: 11,258  
  - Female: 10,297  
  - Non-Conforming: 602  
- **Insight**:  
  Male employees slightly outnumber females. The presence of 602 non-conforming employees reflects inclusivity and diversity in hiring practices.  

#### 2. **Remote Work by Department**  
- **Top Remote Departments**:  
  - Engineering: 1,612  
  - Accounting: 856  
  - Sales: 467  
  - Human Resources: 464  
  - Training: 420  
- **Lowest Remote Departments**:  
  - Audit: 10  
  - Legal: 63  
- **Insight**:  
  Roles in Engineering and Accounting are conducive to remote work due to the nature of tasks. Conversely, Audit and Legal require physical presence for accuracy and compliance reasons.  

#### 3. **Remote vs. HQ Distribution**  
- **Counts**:  
  - Headquarters: 16,674  
  - Remote: 5,484  
- **Insight**:  
  Majority of employees work from the HQ, likely due to job roles requiring physical presence or organizational preferences for centralized operations.  

#### 4. **Race Distribution**  
- **Counts**:  
  - White: 6,311  
  - Two or More Races: 3,640  
  - Black/African American: 3,607  
  - Asian: 3,552  
  - Native Hawaiian/Other Pacific Islander: 1,226  
  - American Indian/Alaska Native: 1,325  
- **Insight**:  
  The company demonstrates racial diversity, but there is a clear majority of White employees. Efforts might be needed to further diversify minority group representation.  

#### 5. **Job Title Distribution**  
- **Most Common Titles**:  
  - Research Assistant II: 753  
  - Business Analyst: 708  
  - HR Analyst II: 612  
- **Least Common Titles**:  
  - Marketing Manager, Office Assistant IV, Associate Professor, Assistant Professor (1 each).  
- **Insight**:  
  Roles with higher counts might indicate essential business operations, whereas roles with fewer counts may reflect specialized or leadership positions.  

#### 6. **Terminated Employees**  
- **Count**: 2,624 terminated employees.  
- **Insight**:  
  High termination counts could be attributed to performance issues, end-of-contract terms, or workforce optimization strategies.  

#### 7. **Longest Serving Employees**  
- **Details**:  
  - Guendolen: Hired on 2000-10-17  
  - Carole: Hired on 2000-10-18  
- **Insight**:  
  These individuals demonstrate loyalty and longevity, potentially making them valuable assets to the organization.  

#### 8. **Terminated Employees by Race**  
- **Counts**:  
  - White: 1,111  
  - Two or More Races: 659  
  - Black/African American: 633  
  - American Indian/Alaska Native: 229  
- **Insight**:  
  White employees have the highest termination count, possibly due to their larger representation.  

#### 9. **Age Distribution**  
- **Age Groups**:  
  - 30–39: 6,127  
  - 40–49: 5,895  
  - 50–59: 5,205  
  - 20–29: 4,930  
- **Insight**:  
  The workforce predominantly falls within the 30–49 age range, representing mid-career professionals.  

#### 10. **Employee Hire Trends Over Time**  
- **Counts**:  
  - 2000–2005: 5,766  
  - 2006–2010: 5,543  
  - 2011–2015: 5,421  
  - 2016–2020: 5,436  
- **Insight**:  
  Hiring remains relatively stable over the years, suggesting consistent growth or replacement strategies.  

#### 11. **Tenure Distribution by Department**  
- **Highest Tenure**:  
  - Audit: ~16 years  
  - Engineering, Business Development: ~15 years  
- **Lowest Tenure**:  
  - Legal, Marketing: ~14 years  
- **Insight**:  
  Tenure differences may indicate department-specific retention challenges or job role structures.  

#### 12. **Average Length of Employment**  
- **Average**: 14 years.  
- **Insight**:  
  High average tenure indicates a stable and committed workforce.  

#### 13. **Turnover Rate by Department**  
- **Highest Turnover**: Audit: 17.3%.  
- **Insight**:  
  High turnover in Audit could stem from job stress, lack of role satisfaction, or competitive industry demand.  

---

### **Recommendations**  
1. **Improve Remote Work Opportunities**:  
   - Extend remote work options to departments with lower representation, like Audit and Legal, where feasible.  
2. **Diversity Initiatives**:  
   - Implement targeted recruitment and mentorship programs to increase minority representation.  
3. **Employee Retention**:  
   - Conduct surveys to understand reasons for high turnover, particularly in Audit.  
   - Offer tailored professional development programs and well-being initiatives.  
4. **Future Workforce Planning**:  
   - Align hiring strategies with historical trends and forecasted company needs.  
   - Focus on maintaining a balanced age distribution to ensure long-term growth.  

---

### **Conclusion**  
This HR analysis provided key insights into employee demographics, tenure, hiring trends, and turnover rates. The company benefits from a diverse and stable workforce but has opportunities for improvement in remote work policies, diversity initiatives, and department-specific retention strategies. By addressing these areas, the organization can ensure sustainable growth and a more inclusive work environment.  



