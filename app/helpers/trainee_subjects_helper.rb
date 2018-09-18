module TraineeSubjectsHelper
  def check_finish_subject user_id, subject_id
    @trainee = TraineeSubject.find_by trainee_id: user_id
    if !@trainee.nil?
      @trainee_subject = TraineeSubject.find_by subject_id: subject_id
    else
      flash[:danger] = t ".subject_not_found"
    end
  end
end
