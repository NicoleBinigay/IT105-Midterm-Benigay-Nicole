# Indexing Demonstration

### SQL Commands Executed
```sql
-- Before Indexing
SELECT * FROM Books WHERE Title LIKE 'The%';

-- Applying the Index
CREATE INDEX idx_book_title ON Books(Title);

-- After Indexing
SELECT * FROM Books WHERE Title LIKE 'The%';'''

## 1. What Changed?
The database shifted from performing a Full Table Scan to utilizing a B-Tree Index Seek. Instead of reading every row sequentially, the system now references a sorted "map" of the Title column. This creates a direct path to the specific data requested, bypassing all irrelevant records.

## 2. Why Faster?
It is faster because it reduces the search complexity from $O(n)$ to $O(\log n)$. By using a sorted index, the database only needs to perform a few mathematical comparisons rather than scanning thousands of rows. This drastically minimizes Disk I/O and CPU time required to fetch the results.

## 3. Why Indexing is Important?
Indexing is critical because it ensures that database performance remains consistent as the dataset grows into millions of records. It optimizes the overall user experience by providing near-instant search results for applications. Additionally, it reduces server overhead, allowing the database to handle more simultaneous users efficiently.
