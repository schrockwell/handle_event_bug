defmodule HandleEventBugWeb.ChildLive do
  use HandleEventBugWeb, :live_view

  def mount(_params, _session, socket) do
    if connected?(socket) do
      :timer.sleep(:timer.seconds(5))
    end

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <button phx-click="click">Child click</button>
    """
  end

  def handle_event("click", _, socket) do
    IO.puts("good click")
    {:noreply, socket}
  end
end
