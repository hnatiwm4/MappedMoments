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
    redirect_to :root
  end

end

# private parameters defined for creating new cemetery records (ie what is required)
private

  def mnt_params
    allow = [:title,:lat,:long]
    params.require(:moment).permit(allow)
  end

end
