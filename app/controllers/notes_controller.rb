class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    search_notes = Note.search(search)
    @pagy, @notes = pagy(search_notes)
  end

  def show
    @pagy, @comments = pagy(@note.comments, limit: 10)
  end

  def new
    @note = Note.new
    respond_with(@note)
  end

  def edit
  end

  def create
    @note = Note.new(note_params)
    @note.save
    respond_with(@note)
  end

  def update
    @note.update(note_params)
    respond_with(@note)
  end

  def destroy
    @note.destroy
    respond_with(@note)
  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :body)
    end

    def search
      params.dig(:query, :search)
    end
end
