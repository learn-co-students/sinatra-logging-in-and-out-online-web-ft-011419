class Helpers

  def self.current_user(session)
    @user = session.find_by()
  end

  def is_logged_in?
  end

end
