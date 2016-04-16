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

  def etsimation_flight
    @title = "Flight Estimation"
  end
end
