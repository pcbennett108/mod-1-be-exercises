class Item
    attr_reader :sku, :price, :discount
    def initialize(sku, price: 0, discount: 0)
        @sku = sku
        @price = price
        @discount = discount
    end
end