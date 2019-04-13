defmodule Libra.InterestEvent do
  use Ecto.Schema

  @primary_key {:id, :string, autogenerate: false}

  @derive {Jason.Encoder, only: [:id, :completed_on, :duration, :fulfillment, :interest_id]}
  schema "interest_events" do
    field :completed_on, :date
    field :duration, :integer
    field :fulfillment, :integer
    field :interest_id, :string
  end
end
