defmodule Mscler.Parser do
  @moduledoc """
  Some types / callbacks for the functions o.O

  The following functions are implemented:
  - getName
  - getType
  - getDifficulty
  - getMuscle
  - getInstructions
  - getEquipment
  - getAll (returns a map with all the data)
  """

  @type invalid_response :: {:error, :invalid_response}

  @callback getName() :: invalid_response | {:ok, String.t()}
  @callback getType() :: invalid_response | {:ok, String.t()}
  @callback getDifficulty() :: invalid_response | {:ok, String.t()}
  @callback getInstructions() :: invalid_response | {:ok, String.t()}
  @callback getEquipment() :: invalid_response | {:ok, String.t()}
  @callback getMuscle() :: invalid_response | {:ok, String.t()}
  @callback getRaw() ::
              invalid_response
              | %{
                  name: String.t(),
                  type: String.t(),
                  difficulty: String.t(),
                  muscle: String.t(),
                  instructions: String.t(),
                  equipment: String.t()
                }

  @callback fetchData() ::
              invalid_response
              | %{
                  name: String.t(),
                  type: String.t(),
                  difficulty: String.t(),
                  muscle: String.t(),
                  instructions: String.t(),
                  equipment: String.t()
                }
end
