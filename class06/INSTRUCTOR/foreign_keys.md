# psql and ActiveRecord tips

* Neat psql trick - Executing SQL files from the command line:

`psql -d your_database_name -a -f your_sql_file.sql`

* To print out the SQL commands that ActiveRecord writes for you:

`ActiveRecord::Base.logger = Logger.new(STDOUT)`

# Foreign Keys

###**One-to-many**:

```SQL
CREATE TABLE houses (
  id serial PRIMARY KEY,
  title varchar(300) NOT NULL,
  color varchar(50) NOT NULL
);

CREATE TABLE students (
  id serial PRIMARY KEY,
  house_id integer REFERENCES houses (id) NOT NULL,
  email varchar(300) UNIQUE NOT NULL,
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) DEFAULT '',
  last_name varchar(100) NOT NULL
);
```

###**Many-to-many**:

```SQL
CREATE TABLE professors (
  id serial PRIMARY KEY,
  name varchar(300) NOT NULL
);

CREATE TABLE students (
  id serial PRIMARY KEY,
  name varchar(300) NOT NULL
);

CREATE TABLE classes (
  id serial PRIMARY KEY,
  student_id integer REFERENCES students (id) NOT NULL,
  professor_id integer REFERENCES professors (id) NOT NULL
);
```
