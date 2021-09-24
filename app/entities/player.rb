class Player < Draco::Entity
  r, g, b, a = State.colors.purple
  component Visible, glyph: '@', r: r, g: g, b: b, a: a
  component Position, x: 500, y: 500
end
# player_sprite = { x: player.x, y: player.y, text: player.glyph, size_enum: 2, alignment_enum: 1, r: 189, g: 147, b: 249, a: 255 }
