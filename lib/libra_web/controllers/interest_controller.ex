defmodule LibraWeb.InterestController do
  use LibraWeb, :controller

  def index(conn, _params) do
    json(conn, Libra.Repo.all(Libra.Interest))
  end
end
