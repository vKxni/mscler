defmodule Mscler.MiddleBack do
  alias Wrapper

  @behaviour Mscler.Parser
  @impl Mscler.Parser
  def fetchData do
    url = Application.get_env(:mscler, :mscler_middle_back)
    Wrapper.fetchData(url)
  end

  @impl Mscler.Parser
  def getName do
    fetchData()
    |> Map.get("name")
  end

  @impl Mscler.Parser
  def getType do
    fetchData()
    |> Map.get("type")
  end

  @impl Mscler.Parser
  def getMuscle do
    fetchData()
    |> Map.get("muscle")
  end

  @impl Mscler.Parser
  def getDifficulty do
    fetchData()
    |> Map.get("difficulty")
  end

  @impl Mscler.Parser
  def getEquipment do
    fetchData()
    |> Map.get("equipment")
  end

  @impl Mscler.Parser
  def getInstructions do
    fetchData()
    |> Map.get("instructions")
  end

  @impl Mscler.Parser
  def getRaw do
    fetchData()
  end
end
