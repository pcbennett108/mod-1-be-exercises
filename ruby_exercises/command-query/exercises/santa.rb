class Santa
    attr_reader :fits, :cookies
    def initialize
    @fits = true
    @cookies = 0
    end
    def fits?
        fits
    end
    def eats_cookies
        @cookies += 1
        if cookies > 2 then @fits = false end
        # if cookies > 2
        #     @fits = false
        # end
    end

end