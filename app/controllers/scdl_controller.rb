class ScdlController < ApplicationController
  def info
  end
  
  def scdl_uploader
    if params[:modify] == "true"
      @scdl = Scdl.find(params[:id])
    end
  end
  
  def scdl_save
    scdl = Scdl.new
    if params[:member] == "modifier"
      scdl = Scdl.find(params[:id])
    end
    scdl.title = params[:scdl_title]
    scdl.date_day = params[:date_day]
    scdl.date_time_start = params[:date_time_start]
    scdl.date_time_end = params[:date_time_end]
    scdl.action_type = params[:scdl_type]
    scdl.password = params[:scdl_password]
    scdl.content_detail = params[:scdl_content_detail]
    scdl.img1 = params[:scdl_img1]
    if params[:how_many_with] == nil
      scdl.how_many_with = 0
    else
      scdl.how_many_with = params[:how_many_with]
    end
    
    if params[:scdl_img2].to_s.length > 2
      img2_param = params[:scdl_img2].to_s
      img2_splited = img2_param.split(' ')
      img2_tagfied = Array.new

        img2_splited.each do |x|
          if x.index('#') != nil
            tagfy = x + " "
          else
            tagfy = "#" + x + " "
          end
          img2_tagfied << tagfy
        end
      img2_tagfied = img2_tagfied.join('').to_s
      scdl.img2 = img2_tagfied
    end
    scdl.save
    
    if params[:member] == "modifier"
      redirect_to '/scdl/info?member=master'
    else
      redirect_to :back
    end
  end
  
  def show
    @scdl = Scdl.find(params[:id])
    if @scdl.how_many_read.nil?
      @scdl.how_many_read = 0
    end
    @scdl.how_many_read = @scdl.how_many_read + 1
    @scdl.save
  end
  
  def scdl_delete
    scdl = Scdl.find(params[:id])
    # if params[:password] == scdl.password
    scdl.delete
    # end
    unless ScdlReply.where(:scdl_id => params[:id]).nil?
      ScdlReply.where(:scdl_id => params[:id]).each do |re|
        re.delete
      end
    end
    redirect_to :back
  end
  
  def reply_save
    
    if params[:password].to_s.length > 3
      reply = ScdlReply.new
      reply.scdl_id   = params[:scdl_id]
      reply.name      = params[:name]
      reply.password  = params[:password]
      reply.content   = params[:content]
      reply.save
    end
    redirect_to :back
  end
  
  def reply_delete
    reply = ScdlReply.find(params[:id])
    if params[:password] == reply.password
      reply.delete
    elsif params[:password].to_s == "120350".to_s
      reply.delete
    end
    redirect_to :back
  end
  
  def likefy
    pp = Scdl.find(params[:id])
    if pp.how_many_read == nil
      pp.how_many_read = 0
    end
    ppp = pp.how_many_read.to_i
    pp.how_many_read = ppp + 1
    pp.save
    redirect_to "/scdl/info#slide_#{params[:id]}"
  end
  
  def temp
  end
end
