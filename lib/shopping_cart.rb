# frozen_string_literal: true

require_relative "shopping_cart/version"

module ShoppingCart
  class Error < StandardError; end
  
  class Item
    attr_reader :product_ids, :product_unique_ids

    def initialize(product_ids)
      @product_ids = product_ids
      @product_unique_ids = @product_ids.uniq
    end
  end
end
