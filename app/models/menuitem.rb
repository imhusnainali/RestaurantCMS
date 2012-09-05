class Menuitem < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image

  validates_presence_of :image, :name, :description, :price
  validates_numericality_of :price, :only_integer => false

  belongs_to :restaurant

  has_attached_file :image, :styles => { :small => "150x150>" }
end
