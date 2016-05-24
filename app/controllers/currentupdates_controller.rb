class CurrentupdatesController < ApplicationController
	before_action :set_currentupdate, only: [:edit, :update, :destroy]


  def new
    @currentupdate = Currentupdate.new
  end

  def create

    @currentupdate = Currentupdate.new(currentupdate_params)

    if @currentupdate.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @currentupdate.update(currentupdate_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @currentupdate.destroy
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currentupdate
      @currentupdate = Currentupdate.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currentupdate_params
      params.require(:currentupdate).permit(:info)
    end

end
