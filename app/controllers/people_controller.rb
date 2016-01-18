class PeopleController < ApplicationController
  def list
    Person.all
  end
  
end
