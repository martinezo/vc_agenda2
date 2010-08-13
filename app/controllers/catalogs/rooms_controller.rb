class Catalogs::RoomsController < ApplicationController
  layout "catalogs"
  # GET /catalogs/rooms
  # GET /catalogs/rooms.xml
  def index
    @catalogs_rooms = Catalogs::Room.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @catalogs_rooms }
    end
  end

  # GET /catalogs/rooms/1
  # GET /catalogs/rooms/1.xml
  def show
    @catalogs_room = Catalogs::Room.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @catalogs_room }
    end
  end

  # GET /catalogs/rooms/new
  # GET /catalogs/rooms/new.xml
  def new
    @catalogs_room = Catalogs::Room.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @catalogs_room }
    end
  end

  # GET /catalogs/rooms/1/edit
  def edit
    @catalogs_room = Catalogs::Room.find(params[:id])
  end

  # POST /catalogs/rooms
  # POST /catalogs/rooms.xml
  def create
    @catalogs_room = Catalogs::Room.new(params[:catalogs_room])

    respond_to do |format|
      if @catalogs_room.save
        format.html { redirect_to(@catalogs_room, :notice => 'Room was successfully created.') }
        format.xml  { render :xml => @catalogs_room, :status => :created, :location => @catalogs_room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @catalogs_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /catalogs/rooms/1
  # PUT /catalogs/rooms/1.xml
  def update
    @catalogs_room = Catalogs::Room.find(params[:id])

    respond_to do |format|
      if @catalogs_room.update_attributes(params[:catalogs_room])
        format.html { redirect_to(@catalogs_room, :notice => 'Room was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @catalogs_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/rooms/1
  # DELETE /catalogs/rooms/1.xml
  def destroy
    @catalogs_room = Catalogs::Room.find(params[:id])
    @catalogs_room.destroy

    respond_to do |format|
      format.html { redirect_to(catalogs_rooms_url) }
      format.xml  { head :ok }
    end
  end
end
