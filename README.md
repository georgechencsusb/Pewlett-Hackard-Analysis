# Pewlett-Hackard-Analysis

## Overview

The purpose of this challenge was to use SQL to query an employee database to determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program.

## Results

* Our first table, created by joining the Employees and Titles tables, had multiple rows for employees who had held more than one title and included employees that had already retired.
![Retirement_titles query](/Resources/retirement_title.png)
* When we filtered for distinct employees who were still with the company, we reduced the number of rows from 133,776 to 72,458.
![Unique_titles query](/Resources/unique_titles.png)
* Grouping the retiring employees by title, we found that most retiring employees are Senior Engineers or Senior Staff.
![Retiring_titles table](/Resources/retiring_titles.png)
* Our table of employees eligible for the mentorship program shows that eligible employees are pretty evenly distributed among the Staff, Senior Staff, Engineer, and Senior Engineer titles, with fewer employees holding the Assistant Engineer and Technique Leader titles, and no eligble employees that are Manangers.
![Mentorship_eligibility query](/Resources/mentorship_eligibility.png)

## Summary

* We know from the above tables that 72458 employees are near retirement: 23916 Senior Engineers, 24926 Senior Staff, 9285 Engineers, 7636 Staff, 3606 Technique Leaders, 1090 Assistant Engineers, and 2 Managers.
* To assess whether we have enough mentors, we should run a query to find the total employees in each role.
![Title_totals query](/Resources/title_totals.png)
* We can these results to the Retiring_Titles table to find the percentage of each role that is near retirement.
![Percent_retiring query](/Resources/percent_retiring.png)
* Around 30% of each role is near retirement, so it would appear that we have an adequate number of mentors.
