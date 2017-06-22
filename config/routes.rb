Rails.application.routes.draw do
  root 'home#index'   # 메인페이지 설정

  post 'upload_view' => "home#upload" # 메인페이지에서 등록버튼 눌렀을때

  get '/upload_view' => 'home#upload' # 등로겦이지에서 새로고침했을 때


  post 'write' => 'home#db_save'      # 등록페이지에서 등록하기 누르고 db에 저장하기
  get '/to_main' => 'home#index'      # DB에 저장하고 메인페이지로 돌아오기

  get '/write' => 'home#index'   # 등록페이지에서 메인페이지로 돌아온 후 새로고침 했을 때

  get 'home/info/:Table_id' => "home#info"  # 지도 말풍선에서 상세페이지 눌렀을 때

end
