class Author < ApplicationRecord
  has_many :authorships
  has_many :books, through: :authorships

  validates :name, presence: true
  validates :birth_year, presence: true, numericality: {only_integer: true}

end
