class ApplicationController < ActionController::Base
  before_action :create_user_settings_if_they_do_not_exist

  private

  def create_user_settings_if_they_do_not_exist
    return unless user_signed_in?
    return if Current.user.user_setting
    redirect_to edit_user_settings_path
  end
end
