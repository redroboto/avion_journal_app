class User < ApplicationRecord
  has_many: categories, inverse_of: :user, dependent: :destroy
  has_many: tasks, through: :categories
end
