class Link < ActiveRecord::Base
	validates :name, :presence => true
  validates :url, :presence => true
  validates :url, :uniqueness => true
  belongs_to :student
end
