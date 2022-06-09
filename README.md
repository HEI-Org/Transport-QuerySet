# Transport-QuerySet

QuerySet for a Transport DB

## Database creation

- Create a database (ex: transport)
- If you're using psql connect to database

:warning: replace transport with your DB name

```shell
\c transport
```

- Run `GenerateDatabase.sql` file to create all table

```shell
psql -U postgres -d transport -f GenerateDatabase.sql
```

## Insert dummy data to the DB

- Run `InsertDummyData.sql` to insert dummy data to the database

```shell
psql -U postgres -d transport -f InsertDummyData.sql
```

## Models

![Transports Models](/assets/Model%20.png "Transport DB Models ")
