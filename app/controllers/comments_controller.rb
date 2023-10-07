class CommentsController < ApplicationController
#before_action :authenticate_user!, except: [:index, :show] 
#before_action only: [:destroy] do
#    authorize_request(["admin"])
#    end
  
def create
    @photography = Photography.find(params[:comment][:photography_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
        respond_to do |format|
            if @comment.save
                format.html { redirect_to photography_path(@photography.id), notice:
                'Comment was successfully created.' }
            else
                format.html { redirect_to photography_path(@photography.id), notice:
                'Comment was not created.' }
            end
        end
end
    
private
def comment_params
  params.require(:comment).permit(:content, :photography_id)
end
    
end
