module ApplicationHelper
  def title
    base_title = "Web design Piper"
    
    if @title.nil?
      base_title
    else
      "#{@title} | #{base_title}"
    end
  end
  
  def meta_description
    base_description  = "Web design Piper or webdesignpiper is a listsing for web technology jobs in the web industry based on ruby on rails and related professions and technologies. "
    
    if @meta_description.nil?
      base_description
    else
      "#{@meta_description}"
    end
  end
  
  def meta_author
    base_author = "Shoonya Sikitu"
    if @meta_author.nil?
      base_author
    else
      "#{@meta_author}"
    end
  end
  
  def kramdown(text)
    sanitize Kramdown::Document.new(text).to_html
  end
  
end
