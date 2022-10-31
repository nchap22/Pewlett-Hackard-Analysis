# Pewlett-Hackard-Analysis
## Overview of the analysis:
    The purpose is to determine the number of retiring employees per title, and identify 
    employees who are eligible to participate in the mentorship program. 
# Results:
## There is a bulleted list with four major points from the two analysis deliverables. 
    * There are 8 titles that are retiring, which are Senior Engineer, Senior Staff, 
    Engineer, Staff, Technique Leader, Assistant Engineer, and manager.
    * The title that has the most people retiring are senior engineers at 25,916.
    * The title that has the least amount of people retiring are managers at 2.
    * Also, the majority individuals who are of retiring age have senior titles such 
    as senior engineer or senior staff.
# Summary:
## The summary addresses the two questions and contains two additional queries or tables that may provide more insight. 
    * The first question we wanted to answer was how many people are retiring per title 
    and the retirment titles csv shows this.
   


    * The second question we wanted answered was who is eligible to participate in the mentorship 
    program and the mentorship ellligbility csv shows who is eligible.
    
   ## Queries
    * One additional query is to look at salary and this query looks at the salaries and counts the 
    number of people with each salary:
    
    SELECT emp.emp_no, emp.first_name, emp.last_name, emp.birth_date, sal.salary
    FROM employees as emp
    Inner Join salary as sal
    On (emp.emp_no = sal.emp_no)
    WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
    Order by emp.emp_no;
    
    * However, this can be changed to run a query that has ranges, such as below 
    45,000, 45,000 to 55,000, etc. 
    
    * Another additional query would be able to count all those eligible to retire in all the different
    departments instead of just looking at the different titles. 
