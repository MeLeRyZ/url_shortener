defmodule UrlShortenerWeb.Router do
  use UrlShortenerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", UrlShortenerWeb do
    pipe_through :api
    resources "/links", LinkController, except: [:edit]
  end

  scope "/", UrlShortenerWeb do
    get "/:id", LinkController, :get_and_redirect
  end

end
