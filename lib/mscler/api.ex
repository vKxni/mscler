defmodule Mscler.ApiBase do
  use HTTPoison.Base

  @token Application.get_env(:mscler, :token)

  @moduledoc """
  This handles the APi requests to the APi, requires authentication (APi key)
  """

  def process_request_headers(headers),
    do: headers ++ [{"Authorization", "Bearer #{@token}"}, {"Accept", "application/json"}]
end
