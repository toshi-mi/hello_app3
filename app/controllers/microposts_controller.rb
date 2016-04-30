class MicropostsController < ApplicationController
  def create
    user = User.find_by(id: session[:user_id])
    micropost = user.microposts.build(micropost_params)
    micropost.save
    redirect_to root_path
  end
  
  def show
    @micropost = Micropost.find(params[:id])
    @user_favs = @micropost.favs
    @response = Response.new
    @responses = @micropost.responses
  end
  
  
  private
    def micropost_params
      params.require(:micropost).permit(:title, :content)
    end
end

