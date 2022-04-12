class Task < ApplicationRecord
  has_many :lessons
  belongs_to :section
  has_and_belongs_to_many :students
end


