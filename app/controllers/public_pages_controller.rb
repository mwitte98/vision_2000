class PublicPagesController < ApplicationController
  
  def home
    @public_page = PublicPage.find_by(name: "Vision 2000")
  end

  def services
    @public_page = PublicPage.find_by(name: "Services")
  end

  def specials
    @public_page = PublicPage.find_by(name: "Specials")
  end

  def about
    @public_page = PublicPage.find_by(name: "About Us")
  end

  def contact
    @public_page = PublicPage.find_by(name: "Contact Us")
  end

  def new
    @public_page = PublicPage.new
  end

  def create
    @public_page = PublicPage.new(page_params)
    if @public_page.save
      flash[:success] = "Successful created new page!"
      render 'new'
    else
      render 'new'
    end
  end

  private

    def page_params
      params.require(:public_page).permit(:name, :content)
    end
end
