class ResponsesController < ApplicationController
  def create
    user = User.find_by(id: session[:user_id])
    response = user.responses.build(micropost_id: params[:id])
    response.content = params[:response][:content]
    response.save
    micropost = Micropost.find_by(id: params[:id])
    redirect_to micropost
  end
  
  private
   def response_params
     params.require(:response).permit(:content)
   end
end
