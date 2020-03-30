require_dependency "feedback/application_controller"

module Feedback
  class CommentsController < ApplicationController

    def create
      @ticket = Ticket.find(params[:ticket_id])
      @comment = @ticket.comments.create(comment_params)
      flash[:notice] = "Comment has been created!"
      redirect_to tickets_path
    end

    private
    def comment_params
      params.require(:comment).permit(:text)
    end
  end
end
