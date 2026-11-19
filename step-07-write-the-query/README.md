# Step 07: Write the query (exercise)

Exercise: [Write the query](https://ewoibuilds.com/exercises/write-the-query)

## Your workspace folder

`~/ewoi-learning/sql`, the same folder and Git repository as step 06 (on Windows, in the Ubuntu terminal).

## What this step adds

A small shop database and six real questions from its owner. You answer each with one SQL query, save the answers in a file and commit them.

## The files

```
step-07-write-the-query/
├── starter/
│   ├── create-database.sh   rebuilds shop.db from shop.sql
│   ├── shop-answers.sql     the six questions, with space for your queries
│   └── shop.sql             the products table and its eight rows, as on the exercise page
└── solution/
    ├── README.md            how to check, and why the answers work (open it only after trying)
    ├── expected-output.txt  what the six answers print
    └── shop-answers.sql     one correct query per question
```

## How to run it

Type the set-up from the exercise page at the `sqlite>` prompt, or start from this folder:

```
cp starter/shop.sql starter/shop-answers.sql starter/create-database.sh ~/ewoi-learning/sql/
cd ~/ewoi-learning/sql
sh create-database.sh
```

It prints `8`, the number of products. Write your queries in `shop-answers.sql` under each question, then run them all:

```
sqlite3 -header -column shop.db < shop-answers.sql
```

## Expected output

Six result tables with 2, 2, 3, 3, 3 and 3 rows. For question 6: electronics 58500, home 16250, school 115800.

## Hints (try every question before reading on)

1. Questions 1 and 2 use `WHERE`. Question 2 needs two conditions joined with `AND`.
2. Questions 3 and 4: `ORDER BY` sorts, `DESC` means largest first, `LIMIT` keeps the first few rows.
3. Questions 5 and 6: `GROUP BY category` makes one result row per category. `COUNT(*)` counts rows; `SUM` adds values, and you can `SUM` a calculation such as `price * stock`.

## Check

Compare your output, not your SQL, with [solution/expected-output.txt](solution/expected-output.txt). Your queries can differ and still be right.

## Save your work

`.gitignore` from step 06 already keeps `shop.db` out. Saving the dump replaces `shop.sql` with SQLite's own copy of the same table and rows:

```
sqlite3 shop.db .dump > shop.sql
git add shop.sql shop-answers.sql
git commit -m "Answer the shop database questions"
```

## Commit message this step uses

`Answer the shop database questions`

Next: the final project, [Your portfolio website, live](https://ewoibuilds.com/projects/portfolio-website), with its own template repository, [portfolio-website](https://github.com/ewoibuilds/portfolio-website).

<!-- ewoi:step -->
---

**Next:** you finished the path: pick a project from [all free repos](https://github.com/ewoibuilds) &nbsp;&middot;&nbsp; **Stuck?** [Ask with the "I am stuck" form](https://github.com/ewoibuilds/developer-foundations/issues/new/choose) &nbsp;&middot;&nbsp; **Helped?** Star [the repo](https://github.com/ewoibuilds/developer-foundations) and follow [Ewoi Builds](https://github.com/ewoibuilds).
<!-- /ewoi:step -->
