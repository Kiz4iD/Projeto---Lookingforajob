# frozen_string_literal: true

require 'rails_helper'

feature 'creating companyuser' do
  #   scenario ' creating a companyuser with existed company' do
  #     company = Company.create!(company_name:"Campus Code", logo:"not yet",
  #                             address:"São Paulo", website: "www.campuscode.com.br",
  #                             instagram: "campuscodeinstagram", facebook:"campuscodeinstagram",
  #                             linkedin: "campuscodelinkedin", email_domain:"campuscode.com.br")
  #     visit root_path
  #     click_on "Company Users"
  #     fill_in "Email", with: "munizlucas_103@campuscode.com.br"
  #     fill_in "Password", with: "123456"
  #     fill_in "Password confirmation", with: "123456"
  #     click_on "Sign up"

  #     # expect(current_path).to eq (show_path)

  #     # expect(page).to have_content("munizlucas_103@hotmail.com")

  #   end

  scenario 'Company User does not have a company registred' do
    company = Company.create!(company_name: 'Code Saga', logo: 'not yet',
                              address: 'São Paulo', website: 'www.codesaga.com.br',
                              instagram: 'codesagainstagram', facebook: 'codesagainstagram',
                              linkedin: 'codesagelinkedin', email_domain: 'codesaga.com.br')

    visit root_path
    click_on 'Employer Section'
    fill_in 'Email', with: 'munizlucas@campuscode.com.br'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'

    expect(current_path).to eq companies_path
    expect(page).to have_content('company_name')
    expect(page).to have_content('logo')
    expect(page).to have_content('address')
    expect(page).to have_content('website')
    expect(page).to have_content('facebook')
    expect(page).to have_content('linkedin')
    expect(page).to have_content('email_domain')
    expect(page).to have_content('campuscode.com.br')
  end

  # scenario 'creator is the admin of the company' do
  #   creator = CompanyUser.create!(email:"lucas@codesaga.com.br", password:"123456" )
  #   company = Company.create!(company_name:"Code Saga", logo:"not yet",
  #                           address:"São Paulo", website: "www.codesaga.com.br",
  #                           instagram: "codesagainstagram", facebook:"codesagainstagram",
  #                           linkedin: "codesagelinkedin", email_domain:"codesaga.com.br")

  #   expect(creator.role).to eq "Admin"
  # end
end
