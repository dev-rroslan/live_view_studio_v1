defmodule UndiOnlineWeb.DonationsLive do
  use UndiOnlineWeb, :live_view

  alias UndiOnline.Donations

  def mount(_params, _session, socket) do
    donations = Donations.list_donations()

    socket =
      assign(socket,
        donations: donations
      )

    {:ok, socket, temporary_assigns: [donations: []]}
  end
end
