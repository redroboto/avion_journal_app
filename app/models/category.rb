class Category < ApplicationRecord
  has_many :tasks, inverse_of: :category, dependent: :destroy
  belongs_to :user

  # accepts_nested_attributes_for :tasks
  # accepts_nested_attributes_for :user
  
  # def user_attributes=(attributes)
  #   if attributes[:id].blank?
  #     self.user_id = current_user.id
  #   else
  #     super(attributes)
  #   end
  # end
end
