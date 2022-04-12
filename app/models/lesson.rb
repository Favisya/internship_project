class Lesson < ApplicationRecord
  belongs_to :task
  has_and_belongs_to_many :students
end
