class StaticPagesController < ApplicationController
  def top
    @micropost = Micropost.new
    @microposts = Micropost.all
  end
end
