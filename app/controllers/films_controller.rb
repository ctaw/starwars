class FilmsController < ApplicationController

  before_action :swapi_url

  def show
    response = RestClient.get "#{swapi_url}films/#{params[:id]}"

    @film = JSON.parse(response)

    # Get all characters for this film
    char_urls = []
    char_urls = @film["characters"]

    char_arr = []
    char_urls.each do |url|
      name = RestClient.get url
      char_arr << JSON.parse(name)
    end

    ## *** if name only call name_arr
    # name_arr = []
    # char_arr.each do |char|
    #   name_arr << char["name"]
    # end

    @characters = char_arr

    @data = { :film => @film, :characters => @characters }

    respond_to do |format|
      format.html {}
      format.json { render json: @data }
    end
  end

  private

  def swapi_url
    return "https://swapi.co/api/"
  end

end
