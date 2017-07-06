class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :categorizations
  has_many :books, through: :categorizations
end
