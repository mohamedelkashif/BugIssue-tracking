class BugsearchController < ApplicationController
	def bugsearch
  if params[:q].nil?
    @bugs = []
  else 
    @bugs = Bug.search params[:q]
    render :json => @bugs

  end
end
# def self.search(search)
#   if search
#     find(:all, :conditions => ['bugnumber LIKE ? AND app_token LIKE ? ', "%#{search}%", "#{search}", "#{search}"])
#   else
#     find(:all)
#   end
# end

end
