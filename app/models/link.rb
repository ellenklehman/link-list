class Link < ActiveRecord::Base
  validates :url, :presence => true
  belongs_to :student
end
