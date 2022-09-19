defmodule Wrapper do
  @moduledoc """
  This module is a wrapper for custom API calls.

  url = a string with the url to the API Endpoint
  """
  def fetchData(url) do
    apihost = Application.get_env(:mscler, :mscler_host)
    apikey = Application.get_env(:mscler, :token)

    mscler_key = Application.get_env(:mscler, :mscler_key)
    mscler_port = Application.get_env(:mscler, :mscler_port)

    headers = [
      {mscler_key, apikey},
      {mscler_port, apihost}
    ]

    # fetch the api, add the headers, decode and randomize the response
    with {:ok, %{body: body}} <- Mscler.ApiBase.get(url, headers) do
      body
      |> Poison.decode!()
      |> Enum.random()
    end
  end
end
