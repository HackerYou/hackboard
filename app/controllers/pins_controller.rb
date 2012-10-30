class PinsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  respond_to :html, :json

  # GET /pins
  # GET /pins.json
  def index
    @pins = Pin.all

    respond_with @pins
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @pin = Pin.includes(:comments).find(params[:id])

    respond_with @pin
  end

  # GET /pins/new
  # GET /pins/new.json
  def new
    @pin = Pin.new

    respond_with @pin
  end

  # GET /pins/1/edit
  def edit
    @pin = Pin.find(params[:id])
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = current_user.pins.build(params[:pin])

    respond_to do |format|
      if @pin.save
        format.html { redirect_to root_path, notice: 'Pin was successfully created.' }
        format.json { render json: @pin, status: :created, location: @pin }
      else
        format.html { render action: "new" }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pins/1
  # PUT /pins/1.json
  def update
    @pin = Pin.find(params[:id])

    respond_to do |format|
      if @pin.update_attributes(params[:pin])
        format.html { redirect_to root_path, notice: 'Pin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Pin was successfully deleted.' }
      format.json { head :no_content }
    end
  end
end
