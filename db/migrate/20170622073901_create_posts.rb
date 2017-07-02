class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|

      t.string "title"
      # 행사종류 변수
      t.string "event_type"
      # 행사내용 변수
      t.string "event_content"
      #S 시작시간 변수
      t.string "event_time_S"
      #S 시작날짜 변수
      t.string "event_date_S"
      #F 마감시간 변수
      t.string "event_time_F"
      #F 마감날짜 변수
      t.string "event_date_F"
      # 주최기관 변수
      t.string "event_manage"
      # 연락처 변수
      t.string "event_call"
      # xxx, yyy 좌표 설정 변수
      t.float "xxx"
      t.float "yyy"

      t.timestamps
    end
  end
end
