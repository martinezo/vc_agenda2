class Agenda::EventsController < ApplicationController
  layout "agenda"
  # GET /agenda/events
  # GET /agenda/events.xml
  def index
    @agenda_events = Agenda::Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @agenda_events }
    end
  end

  # GET /agenda/events/1
  # GET /agenda/events/1.xml
  def show
    @agenda_event = Agenda::Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agenda_event }
    end
  end

  # GET /agenda/events/new
  # GET /agenda/events/new.xml
  def new
    @agenda_event = Agenda::Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agenda_event }
    end
  end

  # GET /agenda/events/1/edit
  def edit
    @agenda_event = Agenda::Event.find(params[:id])
  end

  # POST /agenda/events
  # POST /agenda/events.xml
  def create
    @agenda_event = Agenda::Event.new(params[:agenda_event])

    respond_to do |format|
      if @agenda_event.save
        format.html { redirect_to(@agenda_event, :notice => 'Event was successfully created.') }
        format.xml  { render :xml => @agenda_event, :status => :created, :location => @agenda_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agenda_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agenda/events/1
  # PUT /agenda/events/1.xml
  def update
    @agenda_event = Agenda::Event.find(params[:id])

    respond_to do |format|
      if @agenda_event.update_attributes(params[:agenda_event])
        format.html { redirect_to(@agenda_event, :notice => 'Event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agenda_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda/events/1
  # DELETE /agenda/events/1.xml
  def destroy
    @agenda_event = Agenda::Event.find(params[:id])
    @agenda_event.destroy

    respond_to do |format|
      format.html { redirect_to(agenda_events_url) }
      format.xml  { head :ok }
    end
  end
end
