defmodule BuudaaApiWeb.Router do
  use BuudaaApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BuudaaApiWeb do
    pipe_through :api
  end
end
