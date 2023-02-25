defmodule UndiOnlineWeb.Layouts do
  @moduledoc false
  use UndiOnlineWeb, :html


  import UndiOnlineWeb.LayoutComponents
  import UndiOnlineWeb.Components.Dropdowns, only: [dropdown: 1]

  embed_templates "layouts/*"

  def app_name, do: Application.get_env(:undi_online, :app_name)
  def company_name, do: Application.get_env(:undi_online, :company_name)


end
