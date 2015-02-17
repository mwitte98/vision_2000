module ApplicationHelper

  def page_name
    if params[:name].nil?
      search_for = params[:public_page][:name]
    else
      search_for = params[:name].camelize
    end
    return search_for
  end

  def title_helper(title = '')
    main_title = "Vision 2000 & Sunburst Tanning"
    if title.empty?
      main_title
    else
      "#{title} | #{main_title}"
    end
  end
end
