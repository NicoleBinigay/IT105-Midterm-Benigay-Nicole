# IT105 Midterm: Library Management System

## System Description
The Library Management System is a relational database designed to streamline the tracking of books, authors, and member borrowings. It ensures data integrity by separating entities into normalized tables, allowing a library to manage its inventory and loan history efficiently without data redundancy.

## Tables Description
1. **Authors**: Stores the unique names of authors and their respective IDs.
2. **Books**: Contains book details including titles and ISBNs, linked to the Authors table.
3. **Members**: Stores registered library users' information, such as names and contact emails.
4. **Loans**: A junction table that records which member borrowed which book, including loan and return dates.

## Features Implemented
* **Relational Database Schema**: 4 interconnected tables with Primary and Foreign Keys.
* **Database Normalization**: Structured from UNF to 3NF to ensure zero data redundancy.
* **CRUD Operations**: Complete SQL scripts for Selecting, Inserting, Updating, and Deleting data.
* **Advanced Queries**: Implementation of JOINS and Subqueries for complex data retrieval.
* **Performance Optimization**: B-Tree Indexing applied to the `Title` column for faster search results.

## Reflection
Through this project, I learned the critical importance of Database Normalization in preventing data anomalies. I discovered that while designing a schema takes time, it makes querying much more logical and efficient. I also gained hands-on experience in performance tuning by seeing how indexing can transform a slow full-table scan into a fast index seek, which is vital for real-world applications with large datasets.