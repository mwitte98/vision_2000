require 'spec_helper'

describe "Authentication" do
  
  subject { page }

  describe "signin page" do
  	before { visit '/signin' }

  	it { should have_content('Sign in') }
  	it { should have_title('Sign in') }
  end

  describe "signin" do
  	before { visit '/signin' }

  	describe "with invalid information" do
  	  before { click_button "Sign in" }

  	  it { should have_title('Sign in') }
  	  it { should have_selector('div.alert.alert-danger') }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-danger') }
      end
  	end

  	describe "with valid information" do
  	  let(:user) { FactoryGirl.create(:user) }
  	  before { sign_in(user) }

  	  it { should have_title('') }
      it { should have_link('Edit profile', href: edit_user_path(user)) }
  	  it { should have_link('Sign out', href: signout_path) }

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should_not have_link('Sign out') }
      end
  	end
  end
end
