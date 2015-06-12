class HelloWorldController < ApplicationController
	def show
	end

	def api
		render :json => {status: 'success', hello_text: params[:hello_text]}.to_json
	end
end
