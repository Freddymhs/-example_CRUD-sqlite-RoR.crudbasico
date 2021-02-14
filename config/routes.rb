Rails.application.routes.draw do



  root :to => "welcome#index"
  get '/' , to: "welcome#index "

  

  # mostrar
  get '/consoles/show' => 'consoles#show'

  # crear nueva consola
  #get '/consoles/show' => 'consoles#new'

  

  #get 'consoles' , to: "consoles#show "


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  #rails generate controller Plural 
  #rails generate model Singlar 

  # rails generate model Console nombre:string lanzamiento:string precio:string dimenciones:string marca:string 

  # rails generate controller Consoles 

end
