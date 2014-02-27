class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @accessibilities = Accessibility.all
  end

  def contact
    render 'static_pages/contact'
  end

  def about
    render 'static_pages/about_us'
  end

  def comming_soon
    if params[:beta] == 'true'
      render :index
    else
      render 'static_pages/comming_soon', layout: 'stripped'
    end
  end
end
