class PageController < ApplicationController
    def index
        puts "Hello world!"
        render :nothing => true
    end
end
