class Soundboard < ActiveRecord::Base
  has_many :audio_buttons
  has_one :button_style
  has_one :author
end
