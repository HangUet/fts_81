class TraineeTask < ApplicationRecord
  belongs_to :user, foreign_key: :trainee_id
  belongs_to :task
  enum status: {start: 0, inprogress: 1, finish: 2}
end
