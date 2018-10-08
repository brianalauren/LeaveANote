class NotesController < ApplicationController

  def index
    @note = Note.new
  end



  def all
    @notes = Note.all
  end


  def create
    @note = Note.new(form_params)


    if @note.save
      redirect_to root_path
    else
      render "index"
    end
  end




  def edit
    @note = Note.find(params[:id])

    if @note.created_at < 5.minutes.ago
      redirect_to note_path(@note)
    end
  end




  def show
    @note = Note.find(params[:id])
  end




  def update
    @note = Note.find(params[:id])


    if @note.created_at < 5.minutes.ago
      redirect_to root_path
    else
      if @note.update(form_params)

        redirect_to note_path(@note)
      else
        render "edit"
      end
    end
  end




  def destroy
    @note = Note.find(params[:id])

    if @note.created_at < 5.minutes.ago
      @note.destroy
    end

    redirect_to root_path
  end





  def form_params
    params.require(:note).permit(:body)
  end

end
