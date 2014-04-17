class MomentsController < ApplicationController

def new
end

def index
  @moments = Moment.all
end


end
