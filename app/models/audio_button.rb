class AudioButton < ActiveRecord::Base
  belongs_to :soundboard
  store_accessor :iphone4positioning, :x, :y, :width, :height
  store_accessor :iphone5positioning, :x, :y, :width, :height
  store_accessor :iphone6positioning, :x, :y, :width, :height
  store_accessor :iphone6pluspositioning, :x, :y, :width, :height
end
