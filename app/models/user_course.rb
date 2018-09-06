class UserCourse < ApplicationRecord
  belongs_to :monitoring, class_name: User.name, foreign_key: :supervisor_id
  belongs_to :be_admin, class_name: UserCourse.name, foreign_key: :course_id
  validates :supervisor_id, presence: true
  validates :course_id, presence: true
end
