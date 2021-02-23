# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.instance_of?(Employer)
      current_email = resource.email
      current_email_domain = email_domain(current_email)
      redirect_to new_companies_path unless email_domain_already_exist?(current_email_domain)

    end
  end

  def email_domain(email)
    _, email_domain = email.split('@')
    email_domain
  end

  def email_domain_already_exist?(email_domain)
    Company.find_by(email_domain: email_domain)
  end
end
