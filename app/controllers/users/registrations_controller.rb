class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: %i[update destroy]

  def ensure_normal_user
    if resource.email == "guest@example.com"
      redirect_to root_path, alert: "guest user can't delete and edit"
    end
  end

  def after_update_path_for(_resource)
      user_path(current_user)
  end

end
