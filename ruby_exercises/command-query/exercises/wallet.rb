class Wallet
    attr_reader :cents, :coins
    def initialize
        @cents = 0
        @coins = {
            penny: 1,
            nickel: 5,
            dime: 10,
            quarter: 25
        }
    end
    def <<(money)
        @cents += coins[money]
    end
    def take(coin1, coin2 = nil)
        @cents -= coins[coin1] unless coins[coin1] > @cents
        if coin2 then @cents -= coins[coin2] unless coins[coin2] > @cents end
    end
end
