defmodule Mscler do
  @moduledoc """
  Mscler, the Elixir Package for the Mscle website.

  Returns random gym exercises based on a muscle group.
  """
  @behaviour Mscler.Parser

  @doc """
  This is the main module for the Mscler package.
  It is returning a random exercise based from a random muscle group.

  If you want to get a specific muscle group, use the specific module.
  e.g.
  Mscler.Chest.<function>
  """

  @impl Mscler.Parser
  def fetchData do
    url = Application.get_env(:mscler, :mscler_url)
    apihost = Application.get_env(:mscler, :mscler_host)
    apikey = Application.get_env(:mscler, :token)

    mscler_key = Application.get_env(:mscler, :mscler_key)
    mscler_port = Application.get_env(:mscler, :mscler_port)

    headers = [
      {mscler_key, apikey},
      {mscler_port, apihost}
    ]

    with {:ok, %{body: body}} <- Mscler.ApiBase.get(url, headers) do
      body
      |> Poison.decode!()
      |> Enum.random()
    end
  end

  @doc """
  ```elixir
  |> List.first()
  |> Map.fetch(:name)

  # instead, doing this, or fn below
  |> Map.get("name")
  ```
  Map.fetch returns {:ok, value} (if the key, like name is there) and
  :error if it's not

  Map.get returns the value if the key is present or a
  default if it's not. The default value is optional an defaults to nil
  """

  @impl Mscler.Parser
  def getName do
    case Mscler.fetchData() do
      %{"name" => name} -> name
      _ -> {:error, :invalid_response}
    end
  end

  @doc """
  Returns a random type of exercise (e.g. "cardio", "strength", "stretching")
  """
  @impl Mscler.Parser
  def getType do
    case Mscler.fetchData() do
      %{"type" => type} -> type
      _ -> {:error, :invalid_response}
    end
  end

  @doc """
  Returns the difficulty of the exercise (e.g. beginner, intermediate, advanced)
  """
  @impl Mscler.Parser
  def getDifficulty do
    case Mscler.fetchData() do
      %{"difficulty" => difficulty} -> difficulty
      _ -> {:error, :invalid_response}
    end
  end

  @doc """
  Returns the muscle for the exercise (e.g. biceps)
  """
  @impl Mscler.Parser
  def getMuscle do
    case Mscler.fetchData() do
      %{"muscle" => muscle} -> muscle
      _ -> {:error, :invalid_response}
    end
  end

  @doc """
  Returns the instructions for the exercise, aka a "how to" guide
  """
  @impl Mscler.Parser
  def getInstructions do
    case Mscler.fetchData() do
      %{"instructions" => instructions} -> instructions
      _ -> {:error, :invalid_response}
    end
  end

  @doc """
  Returns the equipment needed for the exercise (e.g. dumbbells, barbell, etc.)
  """
  @impl Mscler.Parser
  def getEquipment do
    case Mscler.fetchData() do
      %{"equipment" => equipment} -> equipment
      _ -> {:error, :invalid_response}
    end
  end

  @doc """
  Returns the whole map of the response, aka the whole exercise
  """
  @impl Mscler.Parser
  def getRaw do
    case Mscler.fetchData() do
      %{
        "name" => name,
        "type" => type,
        "difficulty" => difficulty,
        "muscle" => muscle,
        "instructions" => instructions,
        "equipment" => equipment
      } ->
        %{
          name: name,
          type: type,
          difficulty: difficulty,
          muscle: muscle,
          instructions: instructions,
          equipment: equipment
        }

      _ ->
        {:error, :invalid_response}
    end
  end
end
