defmodule SimpleWebSockets do

  use Riverside, otp_app: :my_app
  @moduledoc """
  Documentation for `SimpleWebSockets`.
  """

  @impl Riverside
  def init(session, state) do
    # initialization
    {:ok, session, state}
  end

  @impl Riversides
  def handle_message(msg, session, state) do
    IO.puts msg
    deliver_me(msg)
    {:ok, session, state}

  end

  @impl Riverside
  def handle_info(into, session, state) do
    {:ok, session, state}
  end

end
