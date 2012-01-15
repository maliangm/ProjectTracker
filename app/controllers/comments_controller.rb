class CommentsController < ApplicationController
  def new
    @ticket = Ticket.find(params[:ticket_id])
    @comment = Comment.new
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @comment = @ticket.comments.build(params[:comment])
    if @comment.save
      flash[:notice] = "Comment has been created."
      redirect_to [@ticket.project, @ticket]
    else
      flash[:alert] = "Comment has not been created."
      render :action => "new"
    end
  end
end
