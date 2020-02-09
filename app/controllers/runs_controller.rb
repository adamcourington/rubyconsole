class RunsController < ApplicationController
    def index
        @runs = Run.all
      end
    def show
        @run = Run.find(params[:id])
      end
    
    def new
    end

    def edit
        @run = Run.find(params[:id])
      end

    def create
        @run = Run.new(run_params)
       
        @run.save
        redirect_to @run
      end

    def update
    @run = Run.find(params[:id])

    if @run.update(run_params)
        redirect_to @run
        else
        render 'edit'
        end

    end  

    def destroy
        @run = Run.find(params[:id])
        @run.destroy
       
        redirect_to runs_path
      end
       
      private
        def run_params
          params.require(:run).permit(:run_number, :date, :station, :time_of_call, :onscene, :inservice, :number, :street1, :street2, :category1, :category2, :info, :shift, :name, :a2591, :a2592, :a2551, :a2552, :a2553, :a2571, :a2572, :a2501, :a2502, :a2503, :a2504)
        end
end
