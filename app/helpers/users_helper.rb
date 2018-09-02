module UsersHelper
  def get_user id
    @user = User.find_by_id id
  end
end
