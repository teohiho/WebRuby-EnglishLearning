class QuizsController < ApplicationController
	def show
		# binding.pry
		 # render json: { all_vocaba: Group.find_by(name: params[:id]).vocabularies }
		 @vocabularies = Vocabulary.all

		answer = []
		answer =Vocabulary.pluck(:mean)
		@answer = Vocabulary.pluck(:mean)
		# params.require(:form).permit(:name, :value)


		for i in 0..4
			print("abd")
			
		end
		
	end


  def submit
   # binding.pry
    @message = "I am here!!!"

    mean = [[]]
    mean =Vocabulary.pluck(:mean1, :mean2, :mean3, :mean4, :mean)
    # Đáp án của bài làm  
    dapan = []
    for i in 0..mean.length-1
      for j in 0..mean[0].length-2
        if mean[i][4] == mean[i][j]
          dapan.push((j+1).to_s)
        end
      end
    end
    @dapan = dapan

    # Bắt params bên form view
    abc = {}
    abc = params{:answer[i]}

    # Câu trả lời của bạn
    answer = []
    for i in 1..mean.length
      answer.push(abc["answer" + i.to_s])
    end
    @answer = answer #1,2,3,4

    #Số câu bạn trả lời đúng
    socaudung = 0
    for i in 0..mean.length-1
      if dapan[i] == answer[i]
        socaudung = socaudung + 1
      end
    end 
    @socaudung = socaudung

    message = socaudung.to_s
    @message = message
    # print(message)
  

  end   
end


# <div class="result">
#               <div style='font-size: 30px' id='result'></div>
#               <div class="bo">
#                 <h3>Bạn vừa mới ôn: <a href="quiz.html">Từ vựng sơ cấp 120 từ</a></h3>
#               </div>
#               <div class="caudung">
#                 <h3><span>12/15 </span>câu đúng</h3>
#               </div>
#               <div class="thanhphantram">
#                 <p>Đến lúc này, bạn đã nhớ 60% số từ trong nhóm từ này</p>
#                 <div class="w3-light-grey w3-round">
#                   <div class="w3-container w3-round w3-blue" style="width:60%">60%</div>
#                 </div>
#               </div>
              
#             </div>