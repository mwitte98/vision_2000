class PublicPagesController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update, :create]

  def show
    id = params[:id]
    if id.nil?
      search_for = page_name
      @public_page = PublicPage.find_by(name: search_for)
    else
      @public_page = PublicPage.find(id)
    end
    return unless @public_page.nil?
    flash.now[:danger] = 'That page does not exist'
    redirect_to root_path
  end

  def edit
    search_for = page_name
    @public_page = PublicPage.find_by(name: search_for)
  end

  def update
    @public_page = PublicPage.find(params[:id])
    if @public_page.update_attributes(page_params)
      flash.now[:success] = 'The page has been successfully updated!'
      if @public_page.id == 1
        redirect_to root_path
      else
        redirect_to "/#{@public_page.name.downcase}"
      end
    else
      flash[:danger] = 'Unsuccessful page update'
      render 'edit'
    end
  end

  def home
    @public_page = PublicPage.find_by(name: 'Vision 2000')
  end

  def create
    @public_page = PublicPage.new(page_params)
    flash[:success] = 'Successfully created new page!' if @public_page.save
    render 'new'
  end

  private

  def page_params
    params.require(:public_page).permit(:name, :content)
  end

  # Before filters

  def signed_in_user
    return if signed_in?
    flash[:warning] = 'You must be signed in to access that page.'
    redirect_to root_url
  end

end
