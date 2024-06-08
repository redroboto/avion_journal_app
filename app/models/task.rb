class Task < ApplicationRecord
  belongs_to :category

  before_validation :find_or_set_category_id

  private

  def find_or_set_category_id
    category_on_record = Category.find_by(name: self.category_name)

    if category_on_record
      self.category_id = category_on_record.id
    else
      new_category = Category.create(name: self.category_name)
      self.category_id = new_category.id
    end
  end
  
end
