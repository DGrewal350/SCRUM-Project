class ShiftsController < ApplicationController
	before_filter :authenticate_user!

  # GET /shifts/new
  def new
    @shift = Shift.new
  end

  # POST /shifts
  # POST /shifts.json
  def create
    @shift = Shift.new(shift_params)

    respond_to do |format|
      if @shift.save
        format.html { redirect_to new_shift_path, notice: 'Shift was successfully submitted.' }
        format.json { render :show, status: :created, location: @shift }
      else
        format.html { render :new }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
	def shift_params
      params.require(:shift).permit(:date, :startTime, :endTime, :user)
    end
end
