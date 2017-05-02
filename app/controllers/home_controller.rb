class HomeController < ApplicationController
    def index
    end
    def write
        @tt = params[:title] 
        #index에 있는 titlㄴe이라는 이름의 값을 (title이라는) 변수에 주는 것. title은 우리가 아까 id에 title이라고 써줬던 것들...
    #params안에 꼭 넣어주어야 함. 여기서 params는 rails의 문법임. 우리가 정하는 이름은 @title과 id에 주어줬던 속성의 이름임
        @con=params[:content]
        #얘도 tt와 마찬가지로 index에서 id속성값에 content라고 부여되었던 곳....에서의 값을 불러와줌
    end
end

#공용으로 쓰는 7가지 액션들
#get:가져오는 것 post:수행(수정,삭제,생성)하는 것
#index : 조건에 맞는 데이터베이스 다 갖고와->get
#show 아이디가 지정되었음. 그 중 하나만 갖고와->get
#new: 채워넣을만한 폼(form)을 가져와라->get
#create: 디비에 집어넣는, 생성의 부분->post
#edit: 고쳐야하는 폼(form)을 가져와라->get
#update: 수정해라->post
#delete(destroy)->post 
#이 방식을 rest방식이라고 함. rest방식으로 만들어야만 웹페이지 생성 후 이걸 안드로이드 어플로 바꿔주는 시스템을 이용할 수가 있음. 시중에 웹->안드로이드 바꿔주는 앱?시스템?이런게 있는가봄 
