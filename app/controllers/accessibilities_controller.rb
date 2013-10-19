class AccessibilitiesController < ApplicationController
	def set
		if session[:accessibilities].nil?
			session[:accessibilities] = []
		end

		if !session[:accessibilities].include? params[:accessibility_id].to_i
			session[:accessibilities] << params[:accessibility_id].to_i
		else
			session[:accessibilities].delete params[:accessibility_id].to_i
		end
		render json: { message: 'ok', session:  session[:accessibilities] }
	end
end
