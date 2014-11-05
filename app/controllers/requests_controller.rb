class RequestsController < ApplicationController
#  before_action :set_request, only: [:lookup]


  def lookup
    
    domain = params[:domain]
    @request = Request.new.lookup(domain)
    respond_to do |format|
      if @request != nil
        format.html {}
        format.json { render :new, status: :searched, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

end
