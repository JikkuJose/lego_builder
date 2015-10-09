module Lego
  class Block
    def initialize(app = nil)
      @app = app
    end

    def call(world)
      (world ||= []) << shape

      if @app.nil?
        world
      else
        @app.call(world)
      end
    end

    def shape
      self.class.to_s
    end
  end
end

Dir.glob('./lib/blocks/*').each do |block|
  block.sub!(/lib\//, '')
  require_relative block
end
