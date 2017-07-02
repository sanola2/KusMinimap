class HomeController < ApplicationController
  def index
    today = Time.new
    today = today.strftime("%Y-%m-%d")

    # 지금은 입력란의 Date가 하나라서 입력한 날짜에서 7일까지만 마크에 표시하도록 함

    @every_post = Post.where("date(event_date_s) <= ? and ? <= date(event_date_f)", today, today)
  end

  def upload

  end

  def db_save
    @title = params[:title]
    @event_type = params[:event_type]
    @event_content = params[:event_content]
    @event_time_S = params[:event_time_S]
    @event_date_S = params[:event_date_S]
    @event_time_F = params[:event_time_F]
    @event_date_F = params[:event_date_F]
    @event_manage = params[:event_manage]
    @event_call = params[:event_call]
    @location = params[:X_Y]

    xy_Info = [
      [36.610431,127.289656],
      [36.610543,127.286036],
      [36.609928,127.285549],
      [36.609635,127.282451],
      [36.611423,127.289560],
      [36.609872,127.284191],
      [36.611241,127.286671],
      [36.609062,127.285514],
      [36.611632,127.288238],
      [36.611171,127.291257],
      [36.609104,127.283782],
      [36.611130,127.284853],
              ]
    if(@location == "option1") then
      @position_x = xy_Info[0][0]
      @position_y = xy_Info[0][1]
    elsif(@location == "option2") then
      @position_x = xy_Info[1][0]
      @position_y = xy_Info[1][1]
    elsif(@location == "option3") then
      @position_x = xy_Info[2][0]
      @position_y = xy_Info[2][1]
    elsif(@location == "option4") then
      @position_x = xy_Info[3][0]
      @position_y = xy_Info[3][1]
    elsif(@location == "option5") then
      @position_x = xy_Info[4][0]
      @position_y = xy_Info[4][1]
    elsif(@location == "option6") then
      @position_x = xy_Info[5][0]
      @position_y = xy_Info[5][1]
    elsif(@location == "option7") then
      @position_x = xy_Info[6][0]
      @position_y = xy_Info[6][1]
    elsif(@location == "option8") then
      @position_x = xy_Info[7][0]
      @position_y = xy_Info[7][1]
    elsif(@location == "option9") then
      @position_x = xy_Info[8][0]
      @position_y = xy_Info[8][1]
    elsif(@location == "option10") then
      @position_x = xy_Info[9][0]
      @position_y = xy_Info[9][1]
    elsif(@location == "option11") then
      @position_x = xy_Info[10][0]
      @position_y = xy_Info[10][1]
    elsif(@location == "option12") then
      @position_x = xy_Info[11][0]
      @position_y = xy_Info[11][1]
    end


    my_db = Post.new
    my_db.title = @title
    my_db.event_type = @event_type
    my_db.event_content = @event_content
    my_db.event_time_S = @event_time_S
    my_db.event_date_S = @event_date_S
    my_db.event_time_F = @event_time_F
    my_db.event_date_F = @event_date_F
    my_db.event_manage = @event_manage
    my_db.event_call = @event_call
    my_db.xxx = @position_x
    my_db.yyy = @position_y
    my_db.save

    redirect_to "/to_main"

  end

  def info
    @selected = Post.find(params[:Table_id])
  end
end
