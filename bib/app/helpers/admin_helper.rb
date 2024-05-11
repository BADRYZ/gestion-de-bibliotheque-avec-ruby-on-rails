# app/helpers/admin_helper.rb

module AdminHelper
  def logged_in?
    admin_signed_in?
  end
end
