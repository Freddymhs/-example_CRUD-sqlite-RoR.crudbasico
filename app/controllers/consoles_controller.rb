class ConsolesController < ApplicationController
    def showme
       @console = Console.find(params[:id])
    end

 

    def show
        @console = Console.all
    end

    def precreate
        @console = Console.new
    end
   
    def create
        Console.create({
            nombre: params[:console][:nombre],
            lanzamiento:  params[:console][:lanzamiento],
            precio:  params[:console][:precio],
            dimenciones:  params[:console][:dimenciones],
            marca:  params[:console][:marcas],
         })
    end
  
    def delete
         @console = Console.last
         @console.destroy
      redirect_to root_path
    end


    def preedit
        @console =  Console.find(params[:id])
    end

    def edit 
        @console =  Console.find(params[:id])
        @console.update(      nombre: params[:console][:nombre])
    end

 
   
end
