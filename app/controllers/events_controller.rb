class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @category = Category.find_by(slug: params[:category_slug])
    @today = Date.today
    @selected_day = params[:day].present? ? Date.parse(params[:day]).to_datetime : Date.today.to_datetime
    @events = @category.events.where("date >= :start_day AND date < :end_day", start_day: @selected_day, end_day: @selected_day + 1.days )
  end

  #def new
    #@category = Category.find(params[:category_id])
    #@event = Event.new


  #def create
    #@event = Event.new(event_params)
    #@event.category = Category.find(params[:category_id])
  #end

end
