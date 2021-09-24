class Visible < Draco::Component
  r, g, b, a = State.colors.foreground
  attribute :glyph, default: '%'
  attribute :r, default: r
  attribute :g, default: g
  attribute :b, default: b
  attribute :a, default: a
  attribute :size_enum, default: 2
  attribute :alignment_enum, default: 1
end
