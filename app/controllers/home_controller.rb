class HomeController < ApplicationController

  before_action :swapi_url

  def index
    @films = if params[:search]
      response = RestClient.get "#{swapi_url}films/?search=#{params[:search]}"
    else
      response = RestClient.get "#{swapi_url}films"
    end

    @films = JSON.parse(response)

    respond_to do |format|
      format.html {}
      format.json { render json: @films }
    end
  end

  private

  def swapi_url
    return "https://swapi.co/api/"
  end

end
