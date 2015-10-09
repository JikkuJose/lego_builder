module Lego
  class Builder
    @world = []
    @middle_wares = []

    def self.run(app)
      block_chain = @middle_wares.reverse.inject(app) do |stack, middle_ware|
        middle_ware.new(stack)
      end

      block_chain.call(@world)
    end

    def self.use(app)
      @middle_wares << app
    end

    def self.middle_wares
      @middle_wares
    end
  end
end
