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
end