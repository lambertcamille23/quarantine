class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @category = Category.find(params[:category_id])
    @events = @category.events



  end

  #def new
    #@category = Category.find(params[:category_id])
    #@event = Event.new


  #def create
    #@event = Event.new(event_params)
    #@event.category = Category.find(params[:category_id])
  #end

end
