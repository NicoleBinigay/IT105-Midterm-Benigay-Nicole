# Database Normalization: Library System

## Unnormalized Form (UNF)
In this stage, data is messy and contains repeating groups in a single row.
| StudentID | Name | BorrowedBooks |
| :--- | :--- | :--- |
| 101 | Juan Dela Cruz | Harry Potter, The Hobbit, Macbeth |

## First Normal Form (1NF)
**Rule:** Eliminate repeating groups. Every cell must contain a single (atomic) value.
| StudentID | Name | BookTitle |
| :--- | :--- | :--- |
| 101 | Juan Dela Cruz | Harry Potter |
| 101 | Juan Dela Cruz | The Hobbit |
| 101 | Juan Dela Cruz | Macbeth |

## Second Normal Form (2NF)
**Rule:** Must be in 1NF and all non-key columns must depend on the whole Primary Key. We split the data into separate tables to remove partial dependencies.

**Table: Students**
| StudentID | Name |
| :--- | :--- |
| 101 | Juan Dela Cruz |

**Table: Books**
| BookID | Title |
| :--- | :--- |
| B1 | Harry Potter |

## Third Normal Form (3NF)
**Rule:** Must be in 2NF and have no transitive dependencies (non-key columns shouldn't depend on other non-key columns).
