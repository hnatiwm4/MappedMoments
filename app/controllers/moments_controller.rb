class MomentsController < ApplicationController

def new
end

def index
  @moments = Moment.all
end

def create
  @moment = Moment.new(mnt_params)

  if @moment.save
    redirect_to :root
  else
    # redirect to root for now (need to make show)
    # redirect_to :root
    # GEOCODE TEST WORKS!
    @search = Geocoder.coordinates(params[:moment][:search])
    render json: @search
  end

end

# AJAX call retirves coordinate data from place search for map
def mapsearch
  @search = Geocoder.coordinates(params[:place])
  #respond_to do |format|
  #  format.html { render :layout => false }
  #  format.js { render :layout => false }
  #end
  render json: @search
  #return @search
end

# private parameters defined for creating new cemetery records (ie what is required)
private

  def mnt_params
    allow = [:title,:latitude,:longitude]
    params.require(:moment).permit(allow)
  end

end
