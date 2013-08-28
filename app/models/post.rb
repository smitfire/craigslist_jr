require 'active_record'

class Post < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, presence: true
  validates :description, presence: true
  validates :email, presence: true
  validates :category_id, presence: true
  belongs_to :category
end
