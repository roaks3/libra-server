defmodule LibraWeb.InterestEventController do
  use LibraWeb, :controller

  def index(conn, _params) do
    json(conn, Libra.Repo.all(Libra.InterestEvent))
  end
end
