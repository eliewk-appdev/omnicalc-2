class MagicController < ApplicationController
  def web_form
    render({ :template =>"magic_templates/blank_web_form.html.erb" })
  end 


  def web_results
  params.fetch("zebra")


  require "google/cloud/vision"
  
  image_annotator = Google::Cloud::Vision::ImageAnnotator.new
  
  uploaded_data = params.fetch("zebra")

  a_file = File.open(uploaded_data)

  vision_api_results = image_annotator.web_detection({ :image => a_file })

  @responses = vision_api_results.responses

  @first_result = vision_api_results.responses.at(0)


    render({ :template =>"magic_templates/final_web_results.html.erb" })
  end 


end 