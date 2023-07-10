defmodule HandleEventBugWeb.Router do
  use HandleEventBugWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {HandleEventBugWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HandleEventBugWeb do
    pipe_through :browser

    live "/", ParentLive, :home
  end

  # Other scopes may use custom stacks.
  # scope "/api", HandleEventBugWeb do
  #   pipe_through :api
  # end
end
