class MainController < ApplicationController
  before_action :parse_params, only: :show
  def main
    
  end

  def view
    @current_answers=find_answers()
    
    if @current_answers==[]
      @current_answers='ss'
    end
    
    respond_to do |format|
      format.html
      format.json do 
        render json: {type: @current_answers.class.to_s, value:@current_answers}
      end
    
    end
  end

  private
  def find_answers
    data=[]
    number2=1
    it=1
    fact=1
    found=1
    while found<4
      alls=number2*(number2-1)*(number2+1)
      while fact<alls
        fact*=it
        it+=1
      end
    
      if fact==alls 
        data.push(it)
        data.push(fact)
        data.push(number2)
        found+=1
      end
      number2+=1
    end
    data
  end

end
