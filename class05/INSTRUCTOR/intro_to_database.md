# Intro to Database

**Objectives**

- What is a database?
- How do we talk to a database?
- What is CRUD?

## What is a Database?

A database is a piece of software designed to *efficiently* facilitate the storage and retrieval of data. There are many popular database applications, such a MySQL, Postgres, and MongoDB.

We'll be using Postgres. Postgres is a *tabular* database, meaning it stores values in tables of data (much like a spreadsheet).

## What is SQL?

Structured Query Language (SQL) is a way or formatting data and commands for a database to perform.

## Simple Example:

**houses** (database table)

| id | name        | color   |
|:-- |:----------- |:------- |
| 1  | Gryffindor  | Red     |
| 2  | Ravenclaw   | Purple  |
| 3  | Hufflepuff  | Yellow  |
| 4  | Slytherin   | Green   |

**SQL query:**

```
SELECT * FROM houses WHERE color = 'Red'
```

## CRUD

The basic operations for managing database records:

- **CREATE** -- Creates new records.
- **READ** -- Reads existing records.
- **UPDATE** -- Updates existing records.
- **DESTROY** -- Deletes existing records.