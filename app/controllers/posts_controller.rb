class PostsController < ApplicationController
    before_action :get_topic



    def create
        @post = @topic.posts.create(post_params)
      end
    
    def destroy
        @post = @topic.posts.find(params[:id])
        @post.destroy   
    end


    private

    def get_shark
        @topic = Topic.find(params[:shark_id])
    end

    def post_params
        params.require(:post).permit(:body, :topic_id)
    end
end