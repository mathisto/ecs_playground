class RenderLabelsSystem < Draco::System
  filter Visible, Position

  def tick
    label_bucket = entities.map do |entity|
       {
        x: entity.position.x,
        y: entity.position.y,
        glyph: entity.visible.glyph,
        r: entity.visible.r,
        g: entity.visible.g,
        b: entity.visible.b,
        a: entity.visible.a,
        size_enum: entity.visible.size_enum,
        alignment_enum: entity.visible.alignment_enum,
      }
    end

    labels << label_bucket
  end
end
