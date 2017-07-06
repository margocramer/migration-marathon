class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :pages, numericality: { only_integer: true }
  validates :favorite, inclusion: { in: [true, false] }
  validates :rating, numericality: {only_integer: true, allow_nil: true}, inclusion: {in: 0..100}

  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
end
