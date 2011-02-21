class ResponsesController < ApplicationController
  before_filter :set_active_page

  def new
    @response = Response.new( :number => 0 )
  end

  def create
    @response = Response.new( params[:response] )
    if( @response.save )
      flash[:notice] = "Thanks much for RSVPing!"
      redirect_to "/rsvp"
    else
      render :new
    end
  end
end
