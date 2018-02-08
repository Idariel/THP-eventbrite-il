class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def create
    # @event = Event.create(event_params)
    @event = @user.events.create(event_params)
    @event.save
    redirect_to @event
  end
  def show
    # return one user
    @event = Event.find(params[:id])
  end
  def edit # idem new
    @event = Event.find(params[:id])
  end
  def update # pratiquement identique à create
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to users_path
  end

  # Utilisé dans create et update
  private
  def event_params
    params.require(:event).permit(:description, :date, :place)
  end


end
