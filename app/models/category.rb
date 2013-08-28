require 'active_record'

class Category < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :posts, dependent: :destroy
end
