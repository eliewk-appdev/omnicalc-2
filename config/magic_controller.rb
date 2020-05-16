class MagicController < ApplicationController
  def web_form
    render({ :template =>"magic_templates/web_results.html.erb" })
  end 
end 