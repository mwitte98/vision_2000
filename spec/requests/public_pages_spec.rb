require 'spec_helper'

describe "Public pages" do

  subject { page }

  describe "Home page" do

  	before { visit root_path }

  	it { should have_content('Vision 2000') }
  	it { should have_title(full_title('')) }
  end

  describe "Services page" do

  	before { visit '/services' }

  	it { should have_content('Services') }
  	it { should have_title(full_title('Services')) }
  end

  describe "Specials page" do

  	before { visit '/specials' }

  	it { should have_content('Specials') }
  	it { should have_title(full_title('Specials')) }
  end

  describe "About page" do

  	before { visit '/about' }

  	it { should have_content('About Us') }
  	it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do

  	before { visit '/contact' }

  	it { should have_content('Contact Us') }
  	it { should have_title(full_title('Contact Us')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Services"
    expect(page).to have_title(full_title('Services'))
    click_link "Specials"
    expect(page).to have_title(full_title('Specials'))
    click_link "About Us"
    expect(page).to have_title(full_title('About Us'))
    click_link "Contact Us"
    expect(page).to have_title(full_title('Contact Us'))
  end
end