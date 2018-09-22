# UrlShortener

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Using
  1. `mix phx.server`
  2. """
    curl --request POST \
      --url http://localhost:4000/api/links/ \
      --header 'content-type: application/json' \
      --data '{
    "link": {
      "url": "https://www.youtube.com/"
    }
    }'
  """
  3. http://localhost:4000/ + returned hash