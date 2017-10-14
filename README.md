# amber_blog

Your description here

## Installation

Create a pg database called `demo` and configure the `config/database.yml`
to provide the credentials to access the table.

Then:
```
shards update
amber migrate up
```

## Example Post Table

```SQL
CREATE TABLE posts (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    title TEXT,
    body VARCHAR(255),
    draft BOOL,
    updated_at TIMESTAMP NULL,
    created_at TIMESTAMP NULL
);
```
## Usage

To run the demo:
```
crystal build src/amber_blog.cr
./amber_blog
```

## Docker and Docker Compose

This will start an instance of postgres, migrate the database, run the specs,
and launch the site at http://localhost:3000
```
docker-compose up -d
```

To view the logs:
```
docker-compose logs -f
```

Note: The Docker images are compatible with Heroku.  

## Contributing

1. Fork it ( https://github.com/[your-github-name]/your_project/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [jradd](https://github.com/jradd) jradd  - creator, maintainer
