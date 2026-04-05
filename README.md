# Oracle PL/SQL

Collection of practical Oracle SQL and PL/SQL examples focused on real-world scenarios, including:

- PIVOT transformations for reporting
- Window functions (ROW_NUMBER, RANK, DENSE_RANK)
- BULK COLLECT and FORALL performance techniques
- Query tuning fundamentals (indexes, execution plans, performance comparisons)

This repository is designed to demonstrate hands-on experience with Oracle database concepts used in production environments.

More advanced tuning scenarios will be added progressively.

## Project Structure
```text
oracle-plsql/
├── sql/
│   ├── setup/
│   │   ├── 01_create_tables.sql
│   │   ├── 02_insert_sample_data.sql
│   │   └── 03_reset_lab.sql
│   │
│   ├── pivot/
│   │   └── pivot_examples.sql
│   │
│   ├── window-functions/
│   │   └── window_functions.sql
│   │
│   ├── bulk-processing/
│   │   ├── bulk_collect.sql
│   │   ├── forall.sql
│   │   └── bulk_vs_row_by_row.sql
│   |── Tuning
├── docs/
│   ├── pivot.md
│   ├── window-functions.md
│   └── bulk-processing.md
│
├── README.md