class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(resource)
    new_company_path
  end

  #   if email_already_exist?(email_domain)
  #     render root_path
  #   else
  #     redirect_to new_companies_path 
  #   end
  # end

  # def email_domain(email)
  #   _, email_domain = email.split("@")
  #   email_domain
  # end

  # def email_already_exist?(email_domain)
  #   Company.find_by(email_domain: email_domain)
  # end
end