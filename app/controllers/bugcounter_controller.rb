class BugcounterController < ApplicationController

	def bugcounter
  if params[:q].nil?
    @bugs = []
    
  else 
    @bugs = Bug.search params[:q]

  end
end
end
