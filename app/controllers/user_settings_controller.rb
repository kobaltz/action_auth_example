class UserSettingsController < ApplicationController
  skip_before_action :create_user_settings_if_they_do_not_exist

  def edit
    @user_setting = Current.user.user_setting || Current.user.build_user_setting
  end

  def update
    @user_setting = Current.user.user_setting
    if @user_setting.update(user_setting_params)
      redirect_to root_path, notice: "User setting was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def user_setting_params
      params.require(:user_setting).permit(:first_name, :last_name)
    end
end
