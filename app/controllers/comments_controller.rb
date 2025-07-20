class CommentsController < ApplicationController
  before_action :set_note
  before_action :set_comment, only: [:edit, :update, :destroy]

  respond_to :html

  def index
    @pagy, @comments = pagy(@note.comments, limit: 10)
  end

  def new
    @comment = @note.comments.new
    respond_with(@comment)
  end

  def edit
  end

  def create
    @comment = @note.comments.new(comment_params)
    @comment.save
    respond_with @comment, location: -> { note_path(@note) }
  end

  def update
    @comment.update(comment_params)
    respond_with @comment, location: -> { note_path(@note) }
  end

  def destroy
    @comment.destroy
    respond_with @comment, location: -> { note_path(@note) }
  end

  private

    def set_note
      @note = Note.find(params[:note_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:name, :body)
    end
end
