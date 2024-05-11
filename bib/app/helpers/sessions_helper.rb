module SessionsHelper
  def admin_signed_in?
    current_admin.present?
  end
  def log_out
    session.delete(:utilisateur_id)
    @utilisateur_courant=nil
  end
end
