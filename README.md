# URL Shortener

## What it's Made of
Ruby on Rails and Postgres

## How it Works
By entering a valid URL in the form at /shorten and POSTing to /shorten, a
`Link` object is persisted to the database.

Links are stored in the database with their `long_url` and `short_url`. Long
URLS hash to short URLs with the following function:
```
def create_short_url
  self.short_url ||= self.long_url.hash.to_s(36)
end
```

When a GET request is made to '/' with a :short_url in params, the database is
queried for a `Link` with that short_url.
