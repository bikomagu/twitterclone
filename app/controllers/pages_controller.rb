class PagesController < ApplicationController
  
  #backend code
  def index
  end

  def home
     @posts= Post.all.page(params[:page]).per(5)
     @newpost=Post.new
  end

  def profile
    if (User.find_by_username(params[:id]))
  @username = params[:id]
  else
   redirect_to root_path, :notice=> "User not found!"
    end
    
    @posts= Post.all.where("user_id=?", User.find_by_username(params[:id]).id)
   
    @newpost=Post.new
  end

  def Explore
     @posts= Post.all
  end
end
