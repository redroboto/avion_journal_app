class Category < ApplicationRecord
  has_many :tasks, inverse_of: :category, dependent: :destroy
  belongs_to :user

  accepts_nested_attributes_for :tasks
end
