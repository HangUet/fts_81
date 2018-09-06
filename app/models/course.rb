class Course < ApplicationRecord
  validate :end_must_be_after_start
  has_many :subjects

  has_many :passive_admin_courses, class_name: UserCourse.name,
           foreign_key: :course_id, dependent: :destroy
  has_many :be_admins, through: :passive_admin_courses, source: :be_admin

  private

  def end_must_be_after_start
    if :start_time >= :end_time
      errors.add(:end_time, "must be after start time")
    end
  end
end
