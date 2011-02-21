class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_active_page
    @active_page = PAGES.reject { |page| !page.has_value?( params[:selected_page] ) }[0] || PAGES[0]
  end
end
