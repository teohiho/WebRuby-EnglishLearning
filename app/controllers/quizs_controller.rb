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



