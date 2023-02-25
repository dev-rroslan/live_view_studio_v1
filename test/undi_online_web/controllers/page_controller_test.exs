defmodule UndiOnlineWeb.PageControllerTest do
  use UndiOnlineWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Projects"
  end
end
