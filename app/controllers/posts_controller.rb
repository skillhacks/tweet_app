class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def new

    end

    def create
        Post.create(title: params["posts"]["title"],body:params["posts"]["body"])
        redirect_to "/posts"
    end
end