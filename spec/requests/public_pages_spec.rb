require 'spec_helper'

describe "Public pages" do
  
  describe "Home page" do

  	it "should have the content 'Vision 2000'" do
  	  visit '/public_pages/home'
  	  expect(page).to have_content('Vision 2000')
  	end
  end

  describe "Services page" do

  	it "should have the content 'Services'" do
  	  visit '/public_pages/services'
  	  expect(page).to have_content('Services')
  	end
  end

  describe "Specials page" do

  	it "should have the content 'Specials'" do
  	  visit '/public_pages/specials'
  	  expect(page).to have_content('Specials')
  	end
  end

  describe "About page" do

  	it "should have the content 'About'" do
  	  visit '/public_pages/about'
  	  expect(page).to have_content('About')
  	end
  end

  describe "Contact page" do

  	it "should have the content 'Contact'" do
  	  visit '/public_pages/contact'
  	  expect(page).to have_content('Contact')
  	end
  end
end