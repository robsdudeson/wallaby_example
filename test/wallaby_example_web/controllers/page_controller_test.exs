defmodule WallabyExampleWeb.PageControllerTest do
  use WallabyExampleWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  describe "throw away" do
    @describetag :e2e
    test "this fails" do
      assert false
    end
  end
end
