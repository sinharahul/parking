class CarRegistration < ActiveRecord::Base
  validates_presence_of :owner
  validates_presence_of :license
  validates_presence_of :month
end
