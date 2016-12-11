module ApplicationHelper

  def page_name
    name = params[:name]
    search_for = name.nil? ? params[:public_page][:name] : name.camelize
    search_for
  end

  def title_helper(title = '')
    main_title = 'Vision 2000 & Sunburst Tanning'
    if title.empty?
      main_title
    else
      "#{title} | #{main_title}"
    end
  end
end
