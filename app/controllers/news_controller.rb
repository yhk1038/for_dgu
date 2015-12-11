class NewsController < ApplicationController
    def info
    end
    
    def atc_uploader
    end
    
    def atc_save
        atc = Article.new
        if params[:member] == "modifier"
          atc = Article.find(params[:id])
        end
        atc.title = params[:atc_title]
        atc.subtitle = params[:atc_subtitle]
        atc.link = params[:atc_link]
        atc.org = params[:atc_org]
        atc.img1 = params[:atc_img1]
        atc.date_day = params[:date_day]
        atc.password = params[:atc_password]
        
        if params[:atc_img2].to_s.length > 2
          img2_param = params[:atc_img2].to_s
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
          atc.img2 = img2_tagfied
        end
        atc.save
        
        if params[:member] == "modifier"
            redirect_to '/news/info?member=master'
        else
            redirect_to :back
        end
    end
    
    def atc_delete
        atc = Article.find(params[:id])
        # if params[:password] == scdl.password
        atc.delete
        # end
        
        # unless AtcReply.where(:atc_id => params[:id]).nil?
        #   AtcReply.where(:atc_id => params[:id]).each do |re|
        #     re.delete
        #   end
        # end
        redirect_to :back
    end
    
    def reply_save
    
      if params[:password].to_s.length > 3
        reply = AtcReply.new
        reply.atc_id   = params[:atc_id]
        reply.name      = params[:name]
        reply.password  = params[:password]
        reply.content   = params[:content]
        reply.save
      end
      redirect_to :back
    end
    
    def reply_delete
      reply = AtcReply.find(params[:id])
      if params[:password] == reply.password
        reply.delete
      elsif params[:password].to_s == "120350".to_s
        reply.delete
      end
      redirect_to :back
    end
    
    def likefy
      pp = Article.find(params[:id])
      if pp.like_it == nil
        pp.like_it = 0
      end
      ppp = pp.like_it.to_i
      pp.like_it = ppp + 1
      pp.save
      redirect_to "/news/info#slide_#{params[:id]}"
    end
end
