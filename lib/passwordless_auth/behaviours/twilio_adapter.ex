defmodule PasswordlessAuth.Behaviours.TwilioAdapter do
  @callback init() :: any()
  defmodule Message do
    @type request :: map()
    @type response :: any() # ExTwilio uses a struct but we don't do anything with it currently

    @doc """
    Creates a request to send an SMS based on the details given in the request map
    """
    @callback create(request) :: {:ok, response} | {:error, binary(), integer()}
  end
end