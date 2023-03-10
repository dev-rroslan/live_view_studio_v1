defmodule UndiOnline.ProductsTest do
  use ExUnit.Case, async: true

  alias UndiOnline.Products

  test "list_products/0 returns a list of products" do
    [product | _] = Products.list_products()

    assert "🪀" == product.image
    assert "Yoyo" == product.name
  end
end
