defmodule LibraWeb.InterestEventController do
  use LibraWeb, :controller

  def index(conn, _params) do
    json(conn, Libra.Repo.all(Libra.InterestEvent))
  end

  def create(conn, %{
        "completed_on" => completed_on,
        "duration" => duration,
        "fulfillment" => fulfillment,
        "interest_id" => interest_id
      }) do
    res =
      Libra.Repo.insert!(
        %Libra.InterestEvent{
          completed_on: Date.from_iso8601!(completed_on),
          duration: duration,
          fulfillment: fulfillment,
          interest_id: interest_id
        },
        returning: true
      )

    json(conn, res)
  end
end
