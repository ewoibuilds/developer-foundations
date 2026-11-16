# Solution: Write the query

Try every question first, with the hints in the step README. Then run the solution and compare:

```
sqlite3 -header -column shop.db < shop-answers.sql
```

The output should match [expected-output.txt](expected-output.txt) exactly.

## Why each answer works

| # | Key part | Why |
| --- | --- | --- |
| 1 | `WHERE stock = 0` | Keeps only the rows with nothing in stock |
| 2 | `WHERE category = 'school' AND price < 2000` | Both conditions must be true; text in single quotes, numbers without |
| 3 | `ORDER BY price DESC` | Largest price first |
| 4 | `ORDER BY price ASC LIMIT 3` | Smallest first, then keep three rows (`ASC` is the default and can be left out) |
| 5 | `COUNT(*) ... GROUP BY category` | One row per category, counting the rows in each |
| 6 | `SUM(price * stock) ... GROUP BY category` | Multiplies each row first, then adds the results per category |

## Check question 6 by hand

electronics: 850 x 40 + 1200 x 0 + 3500 x 7 = 34000 + 0 + 24500 = 58500.
