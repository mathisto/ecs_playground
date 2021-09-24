Maw!
require 'app/colors.rb'
require 'app/controls.rb'
State = $gtk.args.state

init do
  $world = Overworld.new
end

tick do
  background! State.colors.background
  $world.tick(args)
end
