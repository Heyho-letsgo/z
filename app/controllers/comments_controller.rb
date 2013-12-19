class CommentsController < ApplicationController

def create
  @comment = Comment.new(comment_params)
  @comment.item_id = params[:item_id]

  @comment.save

  redirect_to item_path(@comment.item_id)
end

def comment_params
  params.require(:comment).permit(:author_name, :body)
end



end
