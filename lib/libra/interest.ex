defmodule Libra.Interest do
  use Ecto.Schema

  @primary_key {:id, :string, autogenerate: false}

  @derive {Jason.Encoder, only: [:id, :name, :interest_group_id]}
  schema "interests" do
    field :name, :string
    field :interest_group_id, :string
  end
end
