class Surfboard < ActiveRecord::Base
  has_many :surfspots
  validates :name, presence: :true
  validates :feet, presence: :true
  validates :inches, presence: :true
end
