# Pattern gleaned from https://thoughtbot.com/blog/mygem-configure-block
class Config
  attr_accessor :source_tile_size
  attr_accessor :destination_tile_size
  attr_accessor :tile_sheet_size

  def initialize
    @source_tile_size = 16
    @destination_tile_size = 16
    @tile_sheet_size = 256
  end
end

# Example usages
# Game.configure do |config|
#   config.source_tile_size  = 20
#   config.tile_sheet_size = 128
# end

# Game.configuration.title_sheet_size

# Game.configuration.title_sheet_size = 128
