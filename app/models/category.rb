class Category < ApplicationRecord
  has_many :tasks, inverse_of: :category, dependent: :destroy
  belongs_to :user, inverse_of: :categories
end
