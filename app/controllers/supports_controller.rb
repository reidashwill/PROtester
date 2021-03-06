class SupportsController < ApplicationController

  def index 
    expires_in 24.hours, public: true
    @food = HTTParty.get('https://warm-harbor-14009.herokuapp.com/businesses/food')
    @beauty = HTTParty.get('https://warm-harbor-14009.herokuapp.com/businesses/beauty')
    @health = HTTParty.get('https://warm-harbor-14009.herokuapp.com/businesses/health')
    @clothing = HTTParty.get('https://warm-harbor-14009.herokuapp.com/businesses/clothing')
    @design = HTTParty.get('https://warm-harbor-14009.herokuapp.com/businesses/design')
    @misc = HTTParty.get('https://warm-harbor-14009.herokuapp.com/businesses/misc')
    @publishing = HTTParty.get('https://warm-harbor-14009.herokuapp.com/businesses/publishing')
  end 

  def show
    expires_in 24.hours, public: true
    @business = HTTParty.get("https://warm-harbor-14009.herokuapp.com/businesses/#{params[:id]}")
  end

end
