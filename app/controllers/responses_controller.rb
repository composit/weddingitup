class ResponsesController < ApplicationController
  def new
    @response = Response.new
  end

  def create
    @response = Response.new( params[:response] )
    if( @response.save )
      flash[:notice] = "Thanks much for RSVPing!"
      redirect_to rsvp_url
    else
      render :controller => "welcome", :action => "index", :selected_page => "rsvp"
    end
  end
end
