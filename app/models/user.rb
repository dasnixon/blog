# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  email             :string(255)      not null
#  crypted_password  :string(255)      not null
#  password_salt     :string(255)      not null
#  persistence_token :string(255)      not null
#  login_count       :integer          default(0), not null
#  last_request_at   :datetime
#  last_login_at     :datetime
#  current_login_at  :datetime
#  last_login_ip     :string(255)
#  current_login_ip  :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.login_field = 'email'
  end
end
