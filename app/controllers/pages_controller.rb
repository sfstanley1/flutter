#The pages controller contols all the code forr any page inside of pages,b

class PagesController < ApplicationController
  
  #Backend code for pages/index
  def index
  end

  #Backend code for pages/home
  def home
    @posts =Post.all
  end


  #Backend code for pages/profile
  def profile
    #grab the username from user and url
    
    if (User.find_by_username(params[:id]))
    @username = params[:id]
  else
    redirect_to root_path, :notice => "User Not found"
  end
@posts= Post.all.where("user_id = ?",User.find_by_username(params[:id]))
@newPost = Post.new
end
  #Backend code for pages/explorer
  def explorer
    @posts =Post.all
  end
end
