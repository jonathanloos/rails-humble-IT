require_dependency "feedback/application_controller"

module Feedback
  class CommentsController < ApplicationController
    before_action :set_ticket, only: [:create]
    def create
      skip_authorization
      @comment = Comment.new(comment_params)
      @comment.ticket = @ticket
      @comment.user = current_user

      respond_to do |format|
        if @comment.save
          format.html {redirect_to @ticket, notice: "Comment has been created!"}
        else
          format.html { render :new }
        end
      end
    end

    private
    def set_ticket
      @ticket = Ticket.find(params[:ticket_id])
    end

    def comment_params
      params.require(:comment).permit(:text)
    end
  end
end
