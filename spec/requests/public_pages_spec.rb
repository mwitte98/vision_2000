require 'spec_helper'

describe "Public pages" do

  subject { page }

  describe "Home page" do

  	before { visit root_path }

  	it { should have_content('Vision 2000') }
  	it { should have_title('Vision 2000 & Sunburst Tanning') }
  end

  describe "Services page" do

  	before { visit '/services' }

  	it { should have_content('Services') }
  	it { should have_title('Services') }
  end

  describe "Specials page" do

  	before { visit '/specials' }

  	it { should have_content('Specials') }
  	it { should have_title('Specials') }
  end

  describe "About page" do

  	before { visit '/about' }

  	it { should have_content('About Us') }
  end

  describe "Contact page" do

  	before { visit '/contact' }

  	it { should have_content('Contact Us') }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Services"
    expect(page).to have_title('Services')
    click_link "Specials"
    expect(page).to have_title('Specials')
    click_link "About Us"
    expect(page).to have_content('About Us')
    click_link "Contact Us"
    expect(page).to have_content('Contact Us')
  end
end