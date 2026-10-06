# Airbnb

The practice exercise for week 2. The same loop as the baseball exercise in class, on your
own this time, on real data: every Airbnb listing in Chicago and every review of one, as of
October 2021 (from Inside Airbnb).

The text of the reviews is left out to keep the database small enough to ship. If you want
to ask questions about what reviewers wrote, ask on Slack and we will send you the full
version.

## The brief

Paste this into a new chat before your first question. It is all the chat will know about
the database.

```text
You are helping me answer questions about an Airbnb database for Chicago. It is SQLite. The tables are:

    listings (id, url, name, body, host_name, host_since, neighborhood, property_type,
              accommodates, bathrooms, bedrooms, price, minimum_nights, maximum_nights,
              available)
    reviews (id, listing_id, date_reviewed, reviewer_name)

When I ask a question about the data, reply with two things: the SQL, and the answer you expect that SQL to return. I will run it myself.
```

## Getting started

1. Click **Use this template**, then **Create a new repository** in your own account.
2. In your new repository: **Code**, then **Codespaces**, then **Create codespace on main**.
   The first start takes about three minutes.
3. In the terminal, run `bin/rails server`, then open the port it offers.

## The questions

1. What is the average nightly price in Lincoln Park?
2. Which individual host, a person rather than a company, has the most listings?
3. What is the most recent review?
4. One question of your own, about anything in the data.

For each one:

1. Paste the question to your chat, exactly as written.
2. Read what comes back: the SQL, and the number it says to expect.
3. Run the SQL on the **Run SQL** page, the first page the app opens on. Compare the two.
4. Save it as `queries/NN-name.sql` with the question on the first line, as
   `-- Q: ...`, and open the **Queries** page to see it with the others.
5. Decide, and write your decision into the file as the last line:

   ```sql
   -- verdict: trust. Because ...
   ```

   or `-- verdict: don't trust. Because ...`, in one sentence.

When all four are done, commit, and submit your repository's URL on Canvas.

## What is where

| Path | What it is |
|---|---|
| `db/airbnb.sqlite3` | The database, one file. If anything damages it: `git checkout db/airbnb.sqlite3` |
| `queries/` | Your questions, one `.sql` file each. The **Queries** page shows all of them |
| `bin/query FILE` | Runs one `.sql` file from the terminal, if you prefer that to the pages |
| `AGENTS.md` | The brief above, plus instructions for an AI agent that can run things |
| `/` | **Run SQL**: a box for any SQL, the page the app opens on |
| `/queries` | **Queries**: every file in `queries/`, run fresh on each refresh |
