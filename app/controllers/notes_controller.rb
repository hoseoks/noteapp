class NotesController < ApplicationController
def index
end
def show
end
def new
end
def create
t = Notes.new
  t.description = params['notes']
  t.pomodoro_estimate = params['unit']
  t.save
  redirect_to "/notes/show/#{ t.id }"
end
def update
  t = Notes.find_by_id(params['id'])
  t.description = params['description']
  t.pomodoro_estimate = params['pomodoro_estimate']
  t.save
  redirect_to "/notes/show/#{t.id}"
end
def destroy
  t = Notes.find_by_id(params[:id])
  t.destroy
  redirect_to "/"
end

end