defmodule HandleEventBugWeb.ParentLive do
  use HandleEventBugWeb, :live_view

  def render(assigns) do
    ~H"""
    <%= live_render(@socket, HandleEventBugWeb.ChildLive, id: "child") %>
    """
  end

  def handle_event("click", _, _socket) do
    raise "bad click!"
  end
end
