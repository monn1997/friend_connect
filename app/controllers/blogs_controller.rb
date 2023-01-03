class BlogsController < ApplicationController
    def index
      @blogs = Blog.all  
    end
  
    # 追記する。render :new が省略されている。
    def new
      @blog = Blog.new
    end  
    
    def create
        Blog.create(params.require(:blog).permit(:title, :content, :image))
        redirect_to new_blog_path
    end    
end
