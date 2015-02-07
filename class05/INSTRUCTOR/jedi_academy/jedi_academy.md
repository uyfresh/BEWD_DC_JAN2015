# Jedi Academy


## 1. Setup

* Access the Postgres console using the `psql` command.

* Run `CREATE DATABASE jedi_academy;` to create the database.

* Run `\l` to see the list of available databases.

* Run `\c jedi_academy` to connect to the database.

* Run `\d` to see the list of database tables (there are none).

* Open `padawans.sql`, and copy the entire contents. Paste that into the Postgres console, and hit enter. What just happened? Review the SQL file:

  1. We purged any existing "padawans" table (line 1).
  2. We created a new "padawans" table (lines 3-9).
  3. We seeded the table with data (lines 11-34).

* Run `\d` to see the list of database tables now.

* Run `SELECT * FROM padawans;` to see all records.

## 2. Exercise

**Write SQL statements to perform the following tasks:**

1. Select all padawans with a purple lightsaber.

2. Select all padawans that have completed exactly 7 training missions.

3. Select all padawans that have completed more than 5 training missions, AND have a blue lightsaber.

4. Select all padawans with a red lightsaber, ordered alphabetically.

5. Select yourself by your primary key (id).

6. Update your lightsaber color to be your favorite color.

7. Update your apprenticeship status to being complete.

### Bonus

1. Insert Peter, Greg, and Martin into the academy.

2. Delete someone with a red lightsaber from the school.