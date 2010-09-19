class WelcomeController < ApplicationController
  def index
    @active_page = PAGES.reject { |page| !page.has_value?( params[:selected_page] ) }[0] || PAGES[0]
  end
end
