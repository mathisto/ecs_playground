class HandleInputSystem < Draco::System
  filter Position

  def tick
    case controls.send
    when :quit_down?
      exit
    when :reset_down?
      init
    when :north_down?
      entity.position.y += 1
    when :south_down?
      entity.position.y -= 1
    when :east_down?
      entity.position.x += 1
    when :west_down?
      entity.position.y -= 1
    when :northeast_down?
      entity.position.x += 1
      entity.position.y += 1
    when :northwest_down?
      entity.position.y += 1
      entity.position.x -= 1
    when :southeast_down?
      entity.position.x += 1
      entity.position.y -= 1
    when :southwest_down?
      entity.position.y -= 1
      entity.position.y -= 1
    end
  end
end
