class PublicPagesController < ApplicationController

  def show
    if params[:id].nil?
      search_for = page_name
      @public_page = PublicPage.find_by(name: search_for)
    else
      @public_page = PublicPage.find(params[:id])
    end
    if @public_page.nil?
      flash.now[:danger] = 'That page does not exist'
      redirect_to root_path
    end
  end

  def edit
    search_for = page_name
    @public_page = PublicPage.find_by(name: search_for)
  end

  def update
    @public_page = PublicPage.find(params[:id])
    if @public_page.update_attributes(page_params)
      flash.now[:success] = "The page has been successfully updated!"
      render 'show'
    else
      flash[:danger] = "Unsuccessful page update"
      render 'edit'
    end
  end
  
  def home
    @public_page = PublicPage.find_by(name: "Vision 2000")
  end

  def create
    @public_page = PublicPage.new(page_params)
    if @public_page.save
      flash[:success] = "Successfully created new page!"
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
