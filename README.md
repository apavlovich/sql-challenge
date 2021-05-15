<h1>SQL Challenge</h1>

<h2>Data Modeling</h2>
I used the free [quickdatabasediagrams](http://www.quickdatabasediagrams.com) tool to sketch out an ERD of the tables:

<p align="center">
  <img width="600" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/ERD.PNG">
</p>

<h2>Data Engineering</h2>
<h3>Instructions</h3>

  * Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

     * For the primary keys check to see if the column is unique, otherwise create a composite key Which takes to primary keys in order to uniquely identify a row.
      * Be sure to create tables in the correct order to handle foreign keys.

  * Import each CSV file into the corresponding SQL table. **Note** be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

<h2>Data Analysis</h2>
<h4>Images show snipets of the results for each query</h4>

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

<p align="center">
  <img width="600" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/1.PNG">
</p>

2. List first name, last name, and hire date for employees who were hired in 1986.

<p align="center">
  <img width="600" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/2.PNG">
</p>

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

<p align="center">
  <img width="600" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/3.PNG">
</p>

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

<p align="center">
  <img width="600" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/4.PNG">
</p>

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

<p align="center">
  <img width="400" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/5.PNG">
</p>

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

<p align="center">
  <img width="450" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/6.PNG">
</p>

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

<p align="center">
  <img width="450" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/7.PNG">
</p>

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

<p align="center">
  <img width="300" height="500" src="https://github.com/apavlovich/sql-challenge/blob/main/Images/8.PNG">
</p>

<h2>BONUS</h2>

1. Import the SQL database into Pandas
2. Create a histogram to visualize the most common salary ranges for employees.

![histogram](https://github.com/apavlovich/sql-challenge/blob/main/Images/MeanSalary.png)

3. Create a bar chart of average salary by title.

![bar chart](https://github.com/apavlovich/sql-challenge/blob/main/Images/AvgSalaryByTitle.png)

**Full images can be seen in the Jupyter Notebook file**
