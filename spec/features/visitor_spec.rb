require "rails_helper"

#
#Home
#
feature "Contact home index" do
  scenario "allows a guest acess to home page" do
    visit home_index_path

    expect(page).to have_content 'Home page'
  end

  scenario 'Displayed Button: Click for JS Alert' do
    visit home_index_path 

    expect(page).to have_button('Добавить в корзину')
  end


  scenario 'JS Alert: Hello everyone!' do
    Capybara.current_driver = :selenium_chrome
    visit home_index_path

    accept_alert do
      click_button 'Добавить в корзину'
    end

    expect(page).to have_content 'Home page'
  end
end  


#
#About
#
feature "Contact about" do
  scenario "allows a guest acess to about page" do
    visit about_path

    expect(page).to have_content 'About Page'
  end

  scenario "allows a guest acess to about page" do
    visit home_index_path

    click_link 'Show about_path'
    expect(page).to have_content 'About Page'
  end 

  scenario 'JS Alert: Hello everyone!' do
    Capybara.current_driver = :selenium_chrome
    visit about_path

    accept_alert do
      click_button 'Добавить в корзину'
    end

    expect(page).to have_content 'About Page'
  end


end


