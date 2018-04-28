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

    message = "Số câu đúng:"+socaudung.to_s
    @message = message
    # print(message)
  

  end   
end





		# $response=mysql_query("select id,word,mean from vocabularies");
  #   	i=1;
  #    	right_answer=0;
  #    	wrong_answer=0;
  #    	unanswered=0;
  #    while($result=mysql_fetch_array($response)){ 
  #          if($result['answer']==$_POST["$i"]){
  #              right_answer++;
  #          }else if($_POST["$i"]==5){
  #              unanswered++;
  #          }
  #          else{
  #              wrong_answer++;
  #          }
  #          $i++;
  #    }
  #    echo "<div id='answer'>";
  #    echo " Số lần đúng  : <span class='highlight'>". $right_answer."</span><br>";
 
  #    echo " Số lần sai  : <span class='highlight'>". $wrong_answer."</span><br>";
 
  #    echo " Số câu hỏi không trả lời  : <span class='highlight'>". $unanswered."</span><br>";
  #    echo "</div>";



