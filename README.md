# Setup

## Prerequisites
 * Clone the repository
 * EITHER have a SQLite DB browser of your choice.
    * Recommended: [DB Browser for SQLite](https://sqlitebrowser.org/)
 * OR have SQLite command-line downloaded from [https://sqlite.org/](https://sqlite.org/)

## Setting up the DB
**Note: the DB _should_ be ready after cloning the repo, but these steps can be followed in case of any issues**

1. Open the DB with your browser/on the CLI
2. Open and run [`core/verify.sql`](./core/verify.sql). If you see that all the tables have been loaded, then skip to [examples](#examples). If not, continue to step 3.
3. Open and run [`core/clean.sql`](./core/clean.sql). This drops the tables if they exist, and if they don't it exits silently without any errors.
4. Open and run [`core/schemal.sql`](./core/schema.sql). This creates the tables if they don't exist, and silently exits without error if they already exist.
5. Open and run [`core/data.sql`](./core/data.sql). This inserts the new rows into the tables. Running this repeatedly without deleting the previous rows/dropping and re-creating the tables will insert the rows again and again.
6. Open and run [`core/verify.sql`](./core/verify.sql), the tables should have been loaded. If not, then retry steps 3-5 in order.

# Examples
The examples in this repository match the examples shown in the slides for the SQLite workshop (Hackerschool Week 6, [Introduction to SQL with SQLite](https://hckr.cc/hs-2627s1-sql-luma)). To run any of the examples, simply open up the DB using a DB browser of your choice, open the file, and run it, or copy-paste the SQL query into the query console of your browser.