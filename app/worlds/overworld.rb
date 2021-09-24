class Overworld < Draco::World
  entity Player, as: :player
  systems \
    RenderLabelsSystem,
    HandleInputSystem
end
