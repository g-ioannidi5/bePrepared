module ApplicationHelper
  # defines base_title and every the specific page the user is at.
  def title
    base_title = "BePrepared"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end