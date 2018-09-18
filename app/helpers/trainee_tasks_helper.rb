module TraineeTasksHelper
  def check_finish_task user_id, task_id
    @trainee = TraineeTask.find_by trainee_id: user_id
    if !@trainee.nil?
      @trainee_task = TraineeTask.find_by task_id: task_id
    else
      flash[:danger] = t ".subject_not_found"
    end
  end
end
