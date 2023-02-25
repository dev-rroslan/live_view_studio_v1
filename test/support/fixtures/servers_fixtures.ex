defmodule UndiOnline.ServersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `UndiOnline.Servers` context.
  """

  @doc """
  Generate a server.
  """
  def server_fixture(attrs \\ %{}) do
    {:ok, server} =
      attrs
      |> Enum.into(%{
        deploy_count: 42,
        framework: "some framework",
        last_commit_message: "some message",
        name: "some name",
        size: 120.5,
        status: "up"
      })
      |> UndiOnline.Servers.create_server()

    server
  end
end
