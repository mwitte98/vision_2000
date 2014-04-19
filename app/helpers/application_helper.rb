module ApplicationHelper
  
  def full_title(page_title)
  	base_title = "Vision 2000 & Sunburst Tanning"
  	if page_title.empty?
  	  base_title
  	else
  	  "#{base_title} | #{page_title}"
  	end
  end

  def page_name
    if params[:name].nil?
      search_for = params[:public_page][:name]
    else
      search_for = params[:name].camelize
    end
    return search_for
  end
end
