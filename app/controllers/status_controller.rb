class StatusController < ApplicationController
  before_action :authenticate_user!
    @@no_of_lots=100
  def index
      time =Time.now
      @time=time
      @lot_count=@@no_of_lots
      @title="Welcome to Harrision By The Train Track Parking Lot"
      @month=Date::MONTHNAMES[Date.today.month]
      #Hack
      @car_registrations=CarRegistration.all
  end
  def stat
      #byebug
      time =Time.now
      @time=time
      @ps=`ps aux`

  end
      
end
