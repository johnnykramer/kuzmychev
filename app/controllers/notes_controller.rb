class NotesController < ApplicationController
    
    before_action :set_note, only: [:show, :edit, :update, :destroy]
    
    def index
        @notes = Note.all
    end
    
    def show
    end
    
    def new
        @note = Note.new
    end
    
    def create
        @note = Note.new(note_params)
        if @note.save
            redirect_to @note, green: 'Записка добавлена!'
        else
            render :new, red: 'Ошибка добавления!'
        end
    end
    
    def edit
    end
    
    def update
        if @note.update_attributes(note_params)
            redirect_to @note, green: 'Записка сохранена!'
        else
            render :edit, red: 'Ошибка сохранения!'
        end
    end
    
    def destroy
        @note.destroy
        redirect_to notes_path, green: "Записка #{@note.title} безвозвратно удалена..."
    end
    
    private
    
        def set_note
            @note = Note.find(params[:id])
        end
        
        def note_params
            params.require(:note).permit(:title, :announce, :image, :all_tags, :body)
        end
end
