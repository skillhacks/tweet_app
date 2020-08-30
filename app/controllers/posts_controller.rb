class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def new

    end
    
    def show
        @post = Post.find(params[:id])
    end

    def create
        Post.create(title: params["posts"]["title"],body:params["posts"]["body"])
        redirect_to "/posts"
    end

    def edit
        @post = Post.find(params[:id])
    end 

    def update
        post = Post.find(params["id"])
        post.title = params["posts"]["title"]
        post.body = params["posts"]["body"]
        post.save
        redirect_to "/posts"
    end

    def destroy
        post = Post.find(params["id"])
        post.destroy
        redirect_to "/posts"
    end
end