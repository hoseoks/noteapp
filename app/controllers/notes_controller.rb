class NotesController < ApplicationController
def index
  @notess = Notes.all
end

 def show
    @notes = Notes.find_by_id(params[:id])
end
def new
end
def create
t = Notes.new
  t.notes = params['notes']
  t.unit = params['unit']
  t.save
  redirect_to "/notes/show/#{ t.id }"
end
def update
  t = Notes.find_by_id(params['id'])
  t.notes = params['notes']
  t.unit = params['unit']
  t.save
  redirect_to "/notes/show/#{t.id}"
end
def destroy
  t = Notes.find_by_id(params[:id])
  t.destroy
  redirect_to "/"
end
end