class Response < ActiveRecord::Base
  validates :name, :presence => true
  validates :number, :numericality => true
end
