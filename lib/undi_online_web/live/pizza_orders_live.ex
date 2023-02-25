defmodule UndiOnlineWeb.PizzaOrdersLive do
  use UndiOnlineWeb, :live_view

  alias UndiOnline.PizzaOrders
  import Number.Currency

  def mount(_params, _session, socket) do
    socket =
      assign(socket,
        pizza_orders: PizzaOrders.list_pizza_orders()
      )

    {:ok, socket, temporary_assigns: [pizza_orders: []]}
  end
end
