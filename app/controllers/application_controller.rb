class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def prepare_params(redirect_path)
    if params[:market_id].nil? || params[:month].nil? || params[:year].nil?
      redirect_to redirect_path
    end
    if (params[:per_page].nil? || params[:per_page].empty?)
       per_page = 4
    else
      per_page = params[:per_page]
    end
    if params[:page].nil? || params[:page].empty?
      page = 1
    else
      page = params[:page]
    end
  end
end
