module Api
	module V1
		class LinksController < ApplicationController

		  def create
		  	link = Link.new(link_params)
		  	if link.save
		  		render json: {status: 'Created', message: "link created", data: link}, status: :created
		  	else
		  		render json: {status: 'Error', message: "link not created", data: link.errors}, status: :unprocessable_entity
		  	end
		  end

		  def show 
		  	@link = Link.find_by_slug(params[:slug])
		  	puts @link 
		    render 'errors/404', status: 404 if @link.nil?
		    redirect_to @link.url
		  end

		  private 

		  def link_params
		  	params.permit(:url, :slug)
		  end
		end
	end
end