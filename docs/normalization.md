# Database Normalization Report

### 1. Unnormalized Form (UNF)
In this stage, data is a mess. One row might contain multiple subjects or grades for one student, making it hard to search.
- **Example:** Nicole | IT105, IT102 | 1.25, 1.50

### 2. First Normal Form (1NF)
We ensure each cell contains only one value. No more lists in a single box.
- **Structure:** StudentID, FirstName, LastName, Subject, Grade.

### 3. Second Normal Form (2NF)
We remove partial dependencies. We split the data into two tables because student names shouldn't repeat every time a new grade is entered.
- **Table 1 (Students):** StudentID, FirstName, LastName, Email, Course.
- **Table 2 (Grades):** GradeID, StudentID, Subject, Grade.

### 4. Third Normal Form (3NF)
We ensure that all columns depend only on the Primary Key. Since our tables are already focused (one for people, one for scores), we have achieved 3NF.