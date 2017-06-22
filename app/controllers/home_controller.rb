class HomeController < ApplicationController
  def index
    @every_post = Post.all
  end

  def upload

  end

  def db_save
    @title = params[:title]
    @location = params[:X_Y]

    xy_Info = [
      [36.610364,127.289169],
      [36.610988,127.284953],
      [36.609907,127.285693]
              ]
    if(@location == "option1") then
      @position_x = xy_Info[0][0]
      @position_y = xy_Info[0][1]
    elsif (@location == "option2") then
      @position_x = xy_Info[1][0]
      @position_y = xy_Info[1][1]
    elsif(@location == "option3") then
      @position_x = xy_Info[2][0]
      @position_y = xy_Info[2][1]
    end


    my_db = Post.new
    my_db.title = @title
    my_db.xxx = @position_x
    my_db.yyy = @position_y
    my_db.save

    redirect_to "/to_main"

  end

  def info
    @selected = Post.find(params[:Table_id])
  end
end
