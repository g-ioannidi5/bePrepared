class BePreparedController < ApplicationController
  def index
    @title = "Home"
  end

  def about_us
    @title = "About us"
  end

  def resources
    @title = "Resources"
  end

  def estimation_flight
    require 'rubygems'
    require 'geokit'
    require 'httparty'






    @title = "Flight Estimation"


    @location = Geokit::Geocoders::GoogleGeocoder.geocode (params[:search])

    url ="http://api.wunderground.com/api/5640750144c0346d/conditions/q/"+@location.lat.to_s+","+@location.lng.to_s+".json"
    response = HTTParty.get(url)
    response.parsed_response
    @results = response

    



  end
end
