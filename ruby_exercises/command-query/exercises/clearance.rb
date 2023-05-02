require_relative 'item'

class Clearance
    attr_reader :items
    def initialize
        @items = {}
    end
    def best_deal
        if @items.empty?
            nil
        else
            deals = {}
            items.each do |item, value|
                deal = value[:discount].to_f / value[:price].to_f * 100
                deals[item] = deal
            end
            deals.max_by { |item, discount| discount}[0]
        end
    end
    def <<(item)
        @items[item.sku] = {price: item.price, discount: item.discount}
    end
end
