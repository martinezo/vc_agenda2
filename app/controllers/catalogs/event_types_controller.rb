class Catalogs::EventTypesController < ApplicationController
  layout "catalogs"
  # GET /catalogs/event_types
  # GET /catalogs/event_types.xml
  def index
    @catalogs_event_types = Catalogs::EventType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @catalogs_event_types }
    end
  end

  # GET /catalogs/event_types/1
  # GET /catalogs/event_types/1.xml
  def show
    @catalogs_event_type = Catalogs::EventType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @catalogs_event_type }
    end
  end

  # GET /catalogs/event_types/new
  # GET /catalogs/event_types/new.xml
  def new
    @catalogs_event_type = Catalogs::EventType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @catalogs_event_type }
    end
  end

  # GET /catalogs/event_types/1/edit
  def edit
    @catalogs_event_type = Catalogs::EventType.find(params[:id])
  end

  # POST /catalogs/event_types
  # POST /catalogs/event_types.xml
  def create
    @catalogs_event_type = Catalogs::EventType.new(params[:catalogs_event_type])

    respond_to do |format|
      if @catalogs_event_type.save
        format.html { redirect_to(@catalogs_event_type, :notice => 'Event type was successfully created.') }
        format.xml  { render :xml => @catalogs_event_type, :status => :created, :location => @catalogs_event_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @catalogs_event_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /catalogs/event_types/1
  # PUT /catalogs/event_types/1.xml
  def update
    @catalogs_event_type = Catalogs::EventType.find(params[:id])

    respond_to do |format|
      if @catalogs_event_type.update_attributes(params[:catalogs_event_type])
        format.html { redirect_to(@catalogs_event_type, :notice => 'Event type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @catalogs_event_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/event_types/1
  # DELETE /catalogs/event_types/1.xml
  def destroy
    @catalogs_event_type = Catalogs::EventType.find(params[:id])
    @catalogs_event_type.destroy

    respond_to do |format|
      format.html { redirect_to(catalogs_event_types_url) }
      format.xml  { head :ok }
    end
  end
end
