class PublicPagesController < ApplicationController

  def show
    search_for = params[:name].camelize
    if search_for == 'About'
      search_for = 'About Us'
    elsif search_for == 'Contact'
      search_for = 'Contact Us'
    end
    @public_page = PublicPage.find_by(name: search_for)
    if @public_page.nil?
      flash.now[:danger] = 'That page does not exist'
      redirect_to root_path
    end
  end
  
  def home
    @public_page = PublicPage.find_by(name: "Vision 2000")
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
