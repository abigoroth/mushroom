class WelcomeController < ApplicationController
	layout "blank"
	skip_before_filter :verify_authenticity_token , :only => [:sign_in, :index]

	def index

	end

	def sign_in
		if params[:email] == "manager@arra.com" && params[:password] == "13241234"
			session[:level] = "manager"
			redirect_to "/houses"
		elsif params[:email] == "staff@arra.com" && params[:password] == "1234"
			session[:level] = "staff"
			redirect_to "/markets"
		elsif params[:email] == "worker@arra.com" && params[:password] == "1234"
			session[:level] = "worker"
			redirect_to "/production2s"
		else
			redirect_to "/"
		end
	end

	def sign_out
		session[:level] = nil
		redirect_to "/"
	end
end