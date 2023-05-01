require_relative 'product'

class Catalog
    attr_reader :products
    def initialize
        @products = {}
    end
    def cheapest
        if @products.empty?
            nil
        else
            cheapest = @products.sort_by { |item, price| price }.first[0]
        end
    end
    def <<(product)
        @products[product.item] = product.price
    end
end
