class ConsolesController < ApplicationController
   
    def show
        @console = Console.all
    end

   
end
