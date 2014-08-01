class Location < ActiveRecord::Base
  acts_as_copy_target

  validates :zip, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :timezone, presence: true
  validates :dst, presence: true

  def to_param
    "#{zip}"
  end
end
