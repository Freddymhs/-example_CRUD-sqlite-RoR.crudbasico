Rails.application.routes.draw do


  #root :to => "welcome#index"
  root "welcome#index"
  get '/' , to: "welcome#index "

  # mostrar todos
  get '/consoles/show' => 'consoles#show'

  # crear nueva consola
  get '/consoles/precreate'  , to: 'consoles#precreate'  # al formulario
  post 'consoles' , to: 'consoles#create'  # al formulario

  # mostrar uno
  get '/consoles/showme/:id' , to: 'consoles#showme'

  #actualizar

  get '/consoles/edit/:id' , to: 'consoles#preedit' 
  patch '/consoles/:id' ,      to: 'consoles#edit'  , as: :console
  # borrar uno 
  get '/consoles/delete/' , to: 'consoles#delete'


end
