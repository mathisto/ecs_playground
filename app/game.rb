Maw!

include Colors

class << self
  attr_accessor :config

  def config
    self.config ||= Config.new
    yield(self.config)
  end
end

init do
  controls.define :reset, keyboard: :r
end

tick do
  player = { x: 500, y: 500, text: "@", size_enum: 2, alignment_enum: 1, r: 189, g: 147, b: 249, a: 255 }
  background! Colors::BACKGROUND
  labels << player
  init if controls.reset_down?
end
