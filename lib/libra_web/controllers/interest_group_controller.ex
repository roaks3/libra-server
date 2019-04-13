defmodule LibraWeb.InterestGroupController do
  use LibraWeb, :controller

  def index(conn, _params) do
    json(conn, Libra.Repo.all(Libra.InterestGroup))
  end
end
