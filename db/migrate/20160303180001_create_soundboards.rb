class CreateSoundboards < ActiveRecord::Migration
  def change
    create_table :soundboards do |t|
      t.string :title
      t.string :backgroundColor
      t.string :backButtonColor
      t.string :statusBarStyle
      t.string :backgroundImageURL

      t.timestamps null: false
    end
  end
end
