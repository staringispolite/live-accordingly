class DailyHappinessesController < ApplicationController
  before_action :set_daily_happiness, only: [:show, :edit, :update, :destroy]

  # GET /daily_happinesses
  # GET /daily_happinesses.json
  def index
    @daily_happinesses = DailyHappiness.all
  end

  # GET /daily_happinesses/1
  # GET /daily_happinesses/1.json
  def show
  end

  # GET /daily_happinesses/new
  def new
    @daily_happiness = DailyHappiness.new
  end

  # GET /daily_happinesses/1/edit
  def edit
  end

  # POST /daily_happinesses
  # POST /daily_happinesses.json
  def create
    @daily_happiness = DailyHappiness.new(daily_happiness_params)

    respond_to do |format|
      if @daily_happiness.save
        format.html { redirect_to @daily_happiness, notice: 'Daily happiness was successfully created.' }
        format.json { render :show, status: :created, location: @daily_happiness }
      else
        format.html { render :new }
        format.json { render json: @daily_happiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_happinesses/1
  # PATCH/PUT /daily_happinesses/1.json
  def update
    respond_to do |format|
      if @daily_happiness.update(daily_happiness_params)
        format.html { redirect_to @daily_happiness, notice: 'Daily happiness was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_happiness }
      else
        format.html { render :edit }
        format.json { render json: @daily_happiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_happinesses/1
  # DELETE /daily_happinesses/1.json
  def destroy
    @daily_happiness.destroy
    respond_to do |format|
      format.html { redirect_to daily_happinesses_url, notice: 'Daily happiness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_happiness
      @daily_happiness = DailyHappiness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_happiness_params
      params.require(:daily_happiness).permit(:time, :happiness_score)
    end
end
