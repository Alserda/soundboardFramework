class CreateAudioButtons < ActiveRecord::Migration
  def change
    create_table :audio_buttons do |t|
      t.string :title, default: "Title"
      t.string :url
      t.hstore :iphone4positioning
      t.hstore :iphone5positioning
      t.hstore :iphone6positioning
      t.hstore :iphone6pluspositioning
      t.belongs_to :soundboard

      t.timestamps null: false
    end
  end
end
