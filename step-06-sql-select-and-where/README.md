# Step 06: SQL, SELECT and WHERE

Lesson: **SQL: SELECT and WHERE** (on ewoibuilds.com: `/lessons/sql-select-and-where`)

## Your workspace folder

`~/ewoi-learning/sql` (on Windows, in the Ubuntu terminal). SQLite 3.33 or newer: check with `sqlite3 --version`.

## What this step adds

A small SQLite database of lessons, your practice queries saved in a file, and the habit of keeping the SQL that builds a database in Git while the database file itself stays out.

## The files

```
sql/
├── .gitignore           keeps every .db file out of Git
├── create-database.sh   rebuilds lessons.db from lessons.sql (a helper; the lesson types the commands)
├── lessons.sql          the table and its rows, written by sqlite3 lessons.db .dump
└── practice.sql         the five practice queries
```

`lessons.sql` holds the lesson's seven rows plus five example rows for the practice task (ids 8 to 12). Yours will hold the five lessons you added.

## How to run it

Build the database the way the lesson does (type the `CREATE TABLE` and `INSERT` from the lesson at the `sqlite>` prompt), or rebuild it from this folder:

```
cd ~/ewoi-learning/sql
sh create-database.sh
```

It deletes any old `lessons.db`, rebuilds it from `lessons.sql` and prints how many rows it holds (12 here). Then run every practice query at once:

```
sqlite3 -header -column lessons.db < practice.sql
```

## Expected output

With the rows in this folder:

```
title                        minutes
---------------------------  -------
Your first commit            15
How the web works            20
Your first HTML page         20
Branches without fear        25
Linux files and permissions  30
CSS layout basics            35
title                     minutes
------------------------  -------
Caching for faster pages  50
short_lessons
-------------
5
title
------------------------
Your first commit
Your first Laravel route
Your first HTML page
level         average_minutes
------------  ----------------
advanced      47.5
beginner      24.1666666666667
intermediate  32.5
```

## Check

- Each of the five results answers its question (read the comment above each query in `practice.sql`).
- `git status` says `nothing to commit, working tree clean`, and `git ls-files` does not list `lessons.db`.

## Save your work

```
sqlite3 lessons.db .dump > lessons.sql
git init
echo "*.db" > .gitignore
git add .gitignore lessons.sql practice.sql
git commit -m "Add lessons database and practice queries"
```

## Commit message this step uses

`Add lessons database and practice queries`

Next: [step 07, write the query](../step-07-write-the-query/)

<!-- ewoi:step -->
---

**Next:** [step-07-write-the-query](../step-07-write-the-query/) &nbsp;&middot;&nbsp; **Stuck?** [Ask with the "I am stuck" form](https://github.com/ewoibuilds/developer-foundations/issues/new/choose) &nbsp;&middot;&nbsp; **Helped?** Star [the repo](https://github.com/ewoibuilds/developer-foundations) and follow [Ewoi Builds](https://github.com/ewoibuilds).
<!-- /ewoi:step -->
