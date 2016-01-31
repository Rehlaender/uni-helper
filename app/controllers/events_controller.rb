class EventsController < ApplicationController
  before_action :user_in_logged, only:[:new, :create, :edit, :update, :destroy]

  def index
    @events = Event.all
    @schools = School.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def edit
    @event = Post.find(params[:id])
  end

  def update
    @event = Post.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @post.destroy
    redirect_to events_path
  end

  #def schools
  #  @schools = Event.find(params[:id]).schools
  #end



  private
    def event_params
      params.require(:event).permit(:name, :school_id,:user_id, :description)
    end

end
