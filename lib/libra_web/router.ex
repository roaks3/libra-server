defmodule LibraWeb.Router do
  use LibraWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LibraWeb do
    pipe_through :api

    resources "/interests", InterestController, only: [:index]
    resources "/interest_groups", InterestGroupController, only: [:index]
    resources "/interest_events", InterestEventController, only: [:index, :create]
  end
end
