class BlogController < ApplicationController
    def index
        @posts = Post.all.reverse
    end
    
    def create
        Post.create(writer: params[:ireum], content: params[:naeyong])
        redirect_to :root
    end
    
    def delete
        pp= Post.find(params[:id])
        pp.delete
        redirect_to :root
    end
    
    def edit
        @post= Post.find(params[:id])
    end
    
    def update
        pp = Post.find(params[:id])
        pp.writer = params[:ireum]
        pp.content = params[:naeyong]
        pp.save
        redirect_to :root
    end
    
    
end