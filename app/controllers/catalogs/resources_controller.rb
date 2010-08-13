class Catalogs::ResourcesController < ApplicationController
  layout "catalogs"

  attr_reader :color_list
  
  def initialize
    super
    @color_list = { "#999999" => {:style => 'background:#999999;'}, \
                    "#820000" => {:style => 'background:#820000;'}, \
                    "#CC0000" => {:style => 'background:#CC0000;'}, \
                    "#FF9900" => {:style => 'background:#FF9900;'}, \
                    "#FFFF33" => {:style => 'background:#FFFF33;'}, \
                    "#000066" => {:style => 'background:#000066;'}, \
                    "#009999" => {:style => 'background:#009999;'}, \
                    "#33FFFF" => {:style => 'background:#33FFFF;'}, \
                    "#006600" => {:style => 'background:#006600;'}, \
                    "#009900" => {:style => 'background:#009900;'}, \
                    "#66FF66" => {:style => 'background:#66FF66;'}, \
                    "#BEFF66" => {:style => 'background:#BEFF66;'}, \
                    "#9900FF" => {:style => 'background:#9900FF;'}, \
                    "#CC33FF" => {:style => 'background:#CC33FF;'}, \
                    "#FF99FF" => {:style => 'background:#FF99FF;'},
    }

    #"<option style='background:#999999;' value='#999999'>Gris</option>" + \
    #"<option style='background:#820000;' value='#820000'>Vino</option>" + \
    #"<option style='background:#CC0000;' value='#CC0000'>Rojo</option>" + \
    #"<option style='background:#FF9900;' value='#FF9900'>Naranja</option>" + \
    #"<option style='background:#FFFF33;' value='#FFFF33'>Amarillo</option>" + \
    #"<option style='background:#000066;' value='#000066'>Azul Marino</option>" + \
    #"<option style='background:#009999;' value='#009999'>Turquesa</option>" + \
    #"<option style='background:#33FFFF;' value='#33FFFF'>Azul</option>" + \
    #"<option style='background:#006600;' value='#006600'>Verde Pino</option>" + \
    #"<option style='background:#009900;' value='#009900'>Verde bandera</option>" + \
    #"<option style='background:#66FF66;' value='#66FF66'>Verde</option>" + \
    #"<option style='background:#BEFF66;' value='#BEFF66'>Limón</option>" + \
    #"<option style='background:#9900FF;' value='#9900FF'>Morado</option>" + \
    #"<option style='background:#CC33FF;' value='#CC33FF'>Violeta</option>" + \
    #"<option style='background:#FF99FF;' value='#FF99FF'>Rosa</option>"
  end
                   
  # GET /catalogs/resources
  # GET /catalogs/resources.xml
  def index
    @catalogs_resources = Catalogs::Resource.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @catalogs_resources }
    end
  end

  # GET /catalogs/resources/1
  # GET /catalogs/resources/1.xml
  def show
    @catalogs_resource = Catalogs::Resource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @catalogs_resource }
    end
  end

  # GET /catalogs/resources/new
  # GET /catalogs/resources/new.xml
  def new
    @catalogs_resource = Catalogs::Resource.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @catalogs_resource }
    end
  end

  # GET /catalogs/resources/1/edit
  def edit
    @catalogs_resource = Catalogs::Resource.find(params[:id])    
  end

  # POST /catalogs/resources
  # POST /catalogs/resources.xml
  def create
    @catalogs_resource = Catalogs::Resource.new(params[:catalogs_resource])

    respond_to do |format|
      if @catalogs_resource.save
        format.html { redirect_to(@catalogs_resource, :notice => 'Nuevo registro guardado.') }
        format.xml  { render :xml => @catalogs_resource, :status => :created, :location => @catalogs_resource }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @catalogs_resource.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /catalogs/resources/1
  # PUT /catalogs/resources/1.xml
  def update
    @catalogs_resource = Catalogs::Resource.find(params[:id])

    respond_to do |format|
      if @catalogs_resource.update_attributes(params[:catalogs_resource])
        format.html { redirect_to(@catalogs_resource, :notice => 'Registro actualizado.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @catalogs_resource.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/resources/1
  # DELETE /catalogs/resources/1.xml
  def destroy
    @catalogs_resource = Catalogs::Resource.find(params[:id])
    @catalogs_resource.destroy

    respond_to do |format|
      format.html { redirect_to(catalogs_resources_url) }
      format.xml  { head :ok }
    end
  end
end
