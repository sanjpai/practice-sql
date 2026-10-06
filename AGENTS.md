# AGENTS.md

This file tells an AI assistant how to work in this repo. It has two parts.

## Part 1: the brief (paste this into your chat)

This is everything the chat will know about the database. Paste it once, before your first
question.

```text
You are helping me answer questions about an Airbnb database for Chicago. It is SQLite. The tables are:

    listings (id, url, name, body, host_name, host_since, neighborhood, property_type,
              accommodates, bathrooms, bedrooms, price, minimum_nights, maximum_nights,
              available)
    reviews (id, listing_id, date_reviewed, reviewer_name)

When I ask a question about the data, reply with two things: the SQL, and the answer you expect that SQL to return. I will run it myself.
```

## Part 2: for an agent that can run things

Nothing reads this part yet. It is written for an AI agent that works inside this repo and
can run commands itself, instead of a chat you paste into.

When asked a question about the data: write the SQL to a new file in `queries/`, numbered in
sequence after the existing files, with the question as a comment on the first line
(`-- Q: ...`). Run it with `bin/query queries/NN-name.sql`. Show the SQL and the full result
in your reply. Every number you give must come from a query you ran.

Before running any statement that changes data or structure (INSERT, UPDATE, DELETE, DROP,
ALTER), show it and wait for confirmation.

Do not create or edit files outside `queries/` unless asked.
