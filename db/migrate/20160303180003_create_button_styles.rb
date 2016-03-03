class CreateButtonStyles < ActiveRecord::Migration
  def change
    create_table :button_styles do |t|
      t.integer :cornerRadius, default: 0
      t.string :backgroundColor, default: "#FFFFFF"
      t.string :backgroundColorHighlighted, default: "#666666"
      t.string :bottomBorderColor, default: "#666666"
      t.hstore :font
      t.belongs_to :soundboard

      t.timestamps null: false
    end
  end
end
