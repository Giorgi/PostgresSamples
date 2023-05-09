# Postgres Samples

Import CSV file by running

```sql
CREATE TABLE post(id SERIAL PRIMARY KEY, title TEXT NOT NULL, body TEXT NOT NULL, author TEXT NOT NULL, tags TEXT NOT NULL);`
```

```sql
COPY post(title, body, author, tags)
FROM 'C:\Users\Giorgi\Downloads\QueryResults.csv'
DELIMITER ','
CSV HEADER;
```

```sql
Update post set tags = replace(tags, '><',' ')
Update post set tags = replace(tags, '<', '')
Update post set tags = replace(tags, '>', '')
```

CSV generated at https://data.stackexchange.com/stackoverflow by running

```SQL
Select top 100000
Title, Body, OwnerDisplayName as Author, Tags
from posts
where posttypeid=1 and OwnerDisplayName is not null
and len(Body) < 1000
and body like '%full%'
```
