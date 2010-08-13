require 'common'

class Agenda::ReservationsController < ApplicationController  
  layout "agenda"

  attr_reader :calendar_day

  # GET /agenda/reservations
  # GET /agenda/reservations.xml
  def index
    @agenda_reservations = Agenda::Reservation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @agenda_reservations }
    end
  end

  # GET /agenda/reservations/1
  # GET /agenda/reservations/1.xml
  def show
    @agenda_reservation = Agenda::Reservation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agenda_reservation }
    end
  end

  # GET /agenda/reservations/new
  # GET /agenda/reservations/new.xml
  def new
    @agenda_reservation = Agenda::Reservation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agenda_reservation }
    end
  end

  # GET /agenda/reservations/1/edit
  def edit
    @agenda_reservation = Agenda::Reservation.find(params[:id])
  end

  # POST /agenda/reservations
  # POST /agenda/reservations.xml
  def create
    @agenda_reservation = Agenda::Reservation.new(params[:agenda_reservation])

    respond_to do |format|
      if @agenda_reservation.save
        format.html { redirect_to(@agenda_reservation, :notice => 'Reservation was successfully created.') }
        format.xml  { render :xml => @agenda_reservation, :status => :created, :location => @agenda_reservation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agenda_reservation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agenda/reservations/1
  # PUT /agenda/reservations/1.xml
  def update
    @agenda_reservation = Agenda::Reservation.find(params[:id])

    respond_to do |format|
      if @agenda_reservation.update_attributes(params[:agenda_reservation])
        format.html { redirect_to(@agenda_reservation, :notice => 'Reservation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agenda_reservation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda/reservations/1
  # DELETE /agenda/reservations/1.xml
  def destroy
    @agenda_reservation = Agenda::Reservation.find(params[:id])
    @agenda_reservation.destroy

    respond_to do |format|
      format.html { redirect_to(agenda_reservations_url) }
      format.xml  { head :ok }
    end
  end

  def months
    @year = params['yyyy'].to_i
    @month_num = params['mm'].to_i    
    @calendar_tab = Common::MONTHS[@month_num] + " - " + @year.to_s
    @rsv_month = Agenda::Reservation.where(:start_date_time => Date.new(@year,@month_num,1)..Date.new(@year,@month_num,Common.days_in_month(@year,@month_num))+1) #.select(:resource_id).group(:resource_id).all
    @res_month = @rsv_month.select(:resource_id).order(:resource_id).group(:resource_id).all
    @cal_res = {}
    @rsv_month.each { |res|
      
      @cal_res[res[:start_date_time].day - Date.new(@year,@month_num,1).wday] = { res[:resource_id] => res.resource[:id_color]}
    }
    puts @cal_res
  end

end
