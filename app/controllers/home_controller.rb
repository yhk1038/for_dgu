class HomeController < ApplicationController
  def index
    
  end
  
  def index2
    
    @today = Date.parse(Time.zone.now.to_s)
    unless Countdaily.where(:today => "#{@today}").take == nil
      cc = Countdaily.where(:today => "#{@today}").take
      
      if cc.aday == nil
        cc.aday = 1
      else
        cc.aday = cc.aday + 1
      end
    
    else
      cc = Countdaily.new
      cc.today = @today
      
      if cc.aday == nil
        cc.aday = 1
      else
        cc.aday = cc.aday + 1
      end
    end
    cc.save
    
    tmp = 0
    Countdaily.all.each do |cd|
      tmp = tmp + cd.aday
    end
    @count_total = tmp
    
    
    
    render :layout => false
  end
  
  # 응원메세지
  # ============================================================================
  
  def fimsg_save
    fimsg = Fimsg.new
    fimsg.name    = params[:fimsg_name]
    fimsg.content = params[:fimsg_content]
    fimsg.save
    
    redirect_to :back
  end
  
  def fimsg_delete
    fimsg = Fimsg.find(params[:id])
    fimsg.delete
    
    redirect_to :back
  end
  
  
end
