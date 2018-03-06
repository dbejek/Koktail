class CoctailsController < ApplicationController
  before_action :set_coctail, only: [:show, :edit, :update, :destroy]

  # GET /coctails
  # GET /coctails.json
  def index
    @coctails = Coctail.all
    
    #if current_user.admin == false
    #    current_user.admin = true
    #    current_user.save
    #end
  end

  # GET /coctails/1
  # GET /coctails/1.json
  def show
  end

  # GET /coctails/new
  def new
    @coctail = Coctail.new
  end

  # GET /coctails/1/edit
  def edit
  end

  # POST /coctails
  # POST /coctails.json
  def create
    @coctail = Coctail.new(coctail_params)

    respond_to do |format|
      if @coctail.save
        format.html { redirect_to @coctail, notice: 'Coctail was successfully created.' }
        format.json { render :show, status: :created, location: @coctail }
      else
        format.html { render :new }
        format.json { render json: @coctail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coctails/1
  # PATCH/PUT /coctails/1.json
  def update
    respond_to do |format|
      if @coctail.update(coctail_params)
        format.html { redirect_to @coctail, notice: 'Coctail was successfully updated.' }
        format.json { render :show, status: :ok, location: @coctail }
      else
        format.html { render :edit }
        format.json { render json: @coctail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coctails/1
  # DELETE /coctails/1.json
  def destroy
    @coctail.destroy
    respond_to do |format|
      format.html { redirect_to coctails_url, notice: 'Coctail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coctail
      @coctail = Coctail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coctail_params
      params.require(:coctail).permit(:ime, :sestavine, :opis)
    end
    
end
