require 'rails_helper'

  feature 'Visitor looking the root' do 
    scenario 'everything in the root page is working' do
      
      visit root_path
      expect(page).to have_content('LOOKING FOR A JOB')
    end

    scenario 'Looking if the company users link is working' do

      visit root_path
      click_on "Company Users"
      expect(page).to have_content("E-mail")
      expect(page).to have_content("Password")
      expect(page).to have_content("I'm already registred")      
    end

    scenario 'Looking if the users link is working' do     
      visit root_path
      click_on "Users"
      expect(page).to have_content("E-mail")
      expect(page).to have_content("Password")
      expect(page).to have_content("I'm already registred")
    end

    scenario 'Looking if the companies link is working' do 
      company = Company.create!(companyname:"Pizzaria Xablau", logo:"xxxxxxxxx",
                            address:"Santa Monica", website: "PizzariaXablau.com.br",
                            instagram: "instagrampizzariaxablau", facebook:"facebookxablau",
                            linkedin: "linkedinpizzariaxablau")    
      visit root_path
      click_on "Companies"
      expect(page).to have_content("Pizzaria Xablau")
    end

  end
