class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  has_many :comments
  
  validates :title, :presence => true
  validates :description, :presence => true
end
