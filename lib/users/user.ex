defmodule Flightex.Users.User do
  @keys [:name, :email, :cpf, :id]
  @enforce_keys @keys
  defstruct @keys

  def build(name, email, cpf) do
    id = UUID.uuid4()

    {:ok,
     %__MODULE__{
       id: id,
       name: name,
       email: email,
       cpf: cpf
     }}
  end

  # def build(_name, _email, _cpf), do: {:error, "Invalid parameters"}
end
