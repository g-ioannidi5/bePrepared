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

    if(params[:search].present?)
      require 'rubygems'
      require 'geokit'
      require 'httparty'
      @title = "Flight Estimation"

      if(params[:search]=="")
        flash[:alert] = "You have to enter a location"
        redirect_to root_path
      else
        @location = Geokit::Geocoders::GoogleGeocoder.geocode (params[:search])
        url ="http://api.wunderground.com/api/5640750144c0346d/conditions/q/"+@location.lat.to_s+","+@location.lng.to_s+".json"
        response = HTTParty.get(url)
        response.parsed_response

        if(response["response"]["error"].present?)
          flash[:alert] = "Invalid location"
          redirect_to root_path
        else

          @results = response
        end
      end
    else
        flash[:alert] = "Unauthorised Access"
        redirect_to root_path
    end

  end
end
