class SearchController < ApplicationController

	def search
  if params[:q].nil?
    @bugs = []
  else 
    @bugs = Bug.search params[:q]
  end

  

end
end
