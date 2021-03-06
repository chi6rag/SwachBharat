class CleansController < ApplicationController

  def index
    @cleans = Clean.all
  end

  def new
    @clean = Clean.new
  end


  def create
    @clean = Clean.new(clean_params)
    if @clean.save
      redirect_to clean_path(@clean)
    end
    
  end

  def destroy
    @clean = Clean.find(params[:id])
    if(@clean.delete)
      flash.notice = "Clean id:#{@clean.id}|user_id:#{@clean.user_id}|location:#{@clean.location} deleted!"
      redirect_to cleans_path
    end
  end

  def show
    @clean = Clean.find(params[:id])
  end

  private

  def clean_params
    params.require(:clean).permit(:user_id, :aphoto, :bphoto)
    
  end

end
