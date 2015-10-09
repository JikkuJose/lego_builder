require_relative './lib/builder.rb'
require_relative './lib/block.rb'


Lego::Builder.use Lego::Chimney
Lego::Builder.use Lego::Roof
Lego::Builder.use Lego::Window
Lego::Builder.use Lego::Window
Lego::Builder.use Lego::Door
Lego::Builder.use Lego::Foundation

puts Lego::Builder.run Lego::Floor.new
