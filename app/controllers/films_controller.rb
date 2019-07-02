class FilmsController < ApplicationController

  before_action :swapi_url

  def show
    response = RestClient.get "#{swapi_url}films/#{params[:id]}"

    @film = JSON.parse(response)

    # ***** Characters
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

    # ***** Planets
    planet_urls = []
    planet_urls = @film["planets"]
    planet_arr = []
    planet_urls.each do |url|
      name = RestClient.get url
      planet_arr << JSON.parse(name)
    end
    @planets = planet_arr

    # ***** Vehicles
    vehicle_urls = []
    vehicle_urls = @film["vehicles"]
    vehicle_arr = []
    vehicle_urls.each do |url|
      name = RestClient.get url
      vehicle_arr << JSON.parse(name)
    end
    @vehicles = vehicle_arr

    # ***** Species
    specie_urls = []
    specie_urls = @film["species"]
    specie_arr = []
    specie_urls.each do |url|
      name = RestClient.get url
      specie_arr << JSON.parse(name)
    end
    @species = specie_arr


    @data = { :film => @film, :characters => @characters, :planets => @planets, :vehicles => @vehicles, :species => @species }

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
