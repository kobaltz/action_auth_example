class User < ActionAuth::User
  has_one :user_setting
end
