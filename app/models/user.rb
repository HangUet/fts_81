class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
   :validatable

  has_many :user_courses
  has_many :trainee_subjects
  has_many :trainee_tasks
  has_many :reports

  has_many :active_admin_courses, class_name: User.name,
           foreign_key: :supervisor_id, dependent: :destroy
  has_many :monitorings, through: :active_admin_courses, source: :monitoring

  enum role: [:trainee, :supervisor]

  scope :accounts, ->{select(:id, :name, :email, :address, :phone)}

  scope :members, ->{accounts.trainee}
end
