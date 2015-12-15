class PeopleController < ApplicationController
    def info
        @char_name = params[:char_name]
        people = Onair.where(:name_eng => @char_name)
        @board = people.where(:typee => "init").last
        @post = people.where(:typee => "object")
    end
    
    def uploader
        if params[:statue] == "modify_episode"
            @epi = Onair.find(params[:id])
        end
    end
    
    def save
        if params[:statue] == "init" || params[:statue] == "modify"
            if params[:statue] == "init"
                aa = Onair.new
            elsif params[:statue] == "modify"
                aa = Onair.find(params[:id])
            end
            arr = ["make_date","main_title","typee","name","name_eng","phone","email","your_title","profile_img","about_you","to_others","details","main_img"]
            arr.each do |x|
                eval("aa.#{x} = params[:#{x}]")
            end
            aa.save
            redirect_to '/'
            
        elsif params[:statue] == "regist" || params[:statue] == "modify_episode"
            if params[:statue] == "modify_episode"
                aa = Onair.find(params[:id])
            else
                aa = Onair.new
            end
            aa.name_eng = params[:name_eng]
            aa.make_date = params[:make_date]
            aa.typee = params[:typee]
            aa.title = params[:title]
            
            i = 1
            loop do
                break if i > 10
                    x  = "img" + i.to_s
                    y  = "subtitle" + ( i*2 - 1 ).to_s
                    y2 = "content"  + ( i*2 - 1 ).to_s
                    z  = "subtitle" + ( i*2 ).to_s
                    z2 = "content"  + ( i*2 ).to_s
                    eval("aa.#{x}  = params[:#{x}]" )
                    eval("aa.#{y}  = params[:#{y}]" )
                    eval("aa.#{y2} = params[:#{y2}]")
                    eval("aa.#{z}  = params[:#{z}]" )
                    eval("aa.#{z2} = params[:#{z2}]")
                i = i+1
            end
            aa.save
            redirect_to "/people/info?char_name=#{params[:name_eng]}"
        end
    end
    
    def episode
        @char_name = params[:char_name]
        people = Onair.where(:name_eng => @char_name)
        @board = people.where(:typee => "init").last
        @episode = Onair.find(params[:id])
    end
end
