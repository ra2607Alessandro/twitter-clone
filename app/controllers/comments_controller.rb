class CommentsController < ApplicationController
  def comment_params
    params.require(:comments).permit(:content, :user_id)
end
 def create
   @post = Post.find(params[:post_id])
   @post.comments.create!(comment_params.merge(user: current_user))
   redirect_to @post    
 end 
end


