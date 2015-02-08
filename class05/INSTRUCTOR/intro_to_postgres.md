# Intro to Postgres

## PSQL Cheatsheet

 * `psql` : Opens the Postgres console (from Terminal).
 * `\l` : Lists all databases.
 * `\c database_name;` : Connects to a database.
 * `\d` : Lists all tables in the connected database.
 * `\q` : Quits out of Postgres console.

## Create & Connect to a Database

**First, open the Postgres console:**

`psql`

**Now list all of your Postgres databases:**

`\l`

**We probably don't have any databases to list yet, so let's create one:**

`CREATE DATABASE database_name;`

**Now let's connect to our database to interact with it:**

`\c database_name;`

**We've connected to our database.** Notice how the command line prompt has changed. That means we're now working in our database: 

`database_name=#`

## Creating Database Tables

A database stores tabular data (data in tables). Think of Excel spreadsheets. Each spreadsheet in an Excel document is akin to a table in a database.

**First, let's review the tables in our database:**

 `\d`

**We probably have no tables, so let's create one:**

```
CREATE TABLE heros (
  id    SERIAL PRIMARY KEY,
  name  VARCHAR(50) NOT NULL,
  email VARCHAR(150) UNIQUE,
  age   INTEGER DEFAULT 0
);
```

What does that do?

- `CREATE TABLE`: SQL command to create a table
- `heros`: name of the new table
- (`id`, `name`, `age`, `email`): column names.
- (`SERIAL`, `VARCHAR`, `INTEGER`, `BOOLEAN`): data types.
- (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`): constraints.
- (`DEFAULT`): a default for unspecified values.

Other notes:

- What is a `SERIAL PRIMARY KEY`? A primary key is a unique, not-null value used to identify records in a database table. We use the `SERIAL` datatype to make it an auto-incrementing integer.

- What is a `VARCHAR(n)`? Basically, it's a string (variable characters). We include a character limit when specifying a `VARCHAR` so Postgres can monitor the maximum possible data size in our database.

- What are constraints? These put limitations on data allowed into the table, such as making sure data is not blank (`NOT NULL`) or making sure only unique values are added (`UNIQUE`).


## Working with Tables 

**To INSERT rows of data in our table:**

`INSERT INTO heros (name, email, age) VALUES ('Yoda', 'yoda@jedi.net', 874);`

**To SELECT rows of data from our table:**

`SELECT * FROM heros;`  
*(all rows)*

`SELECT * FROM heros WHERE age > 20;`  
`SELECT * FROM heros WHERE age > 20 AND name='yoda';`  
*(certain rows)*

`SELECT * FROM heros WHERE name='yoda' ORDER BY name;`  
*(ordered return)*

**To UPDATE rows of data in our table:**

`UPDATE heros SET age=900 WHERE name='yoda';`

**To DELETE rows of data in our table:**

`DELETE FROM heros WHERE name='yoda';`



