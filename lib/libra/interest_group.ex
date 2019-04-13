defmodule Libra.InterestGroup do
  use Ecto.Schema

  @primary_key {:id, :string, autogenerate: false}

  @derive {Jason.Encoder, only: [:id, :name]}
  schema "interest_groups" do
    field :name, :string
  end
end
