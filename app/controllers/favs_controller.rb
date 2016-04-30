class FavsController < ApplicationController
  
  def create
    user = User.find_by(id: session[:user_id])
    micropost = Micropost.find(params[:id])
    fav = user.favs.build(micropost_id: micropost.id)
    fav.save
    redirect_to micropost
  end
  
  def destroy
    user = User.find_by(id: session[:user_id])
    fav = user.favs.find_by(micropost_id: params[:id])
    fav.destroy
    micropost = Micropost.find(params[:id])
    redirect_to micropost
  end
end