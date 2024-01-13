class AromasController < ApplicationController
        def index
        end
      
        def new
          @aroma = Aroma.new
        end
      
        def show
          @aroma = Aroma.find_by(id: params[:id])
        end
      
        def create
          @aroma = Aroma.new(aroma_params)
          params[:aroma][:question] ? @aroma.question = params[:aroma][:question].join("") : false
          if @aroma.save
              flash[:notice] = "診断が完了しました"
              redirect_to aroma_path(@aroma.id)
          else
              redirect_to :action => "new"
          end
        end
      
      private
        def aroma_params
            params.require(:aroma).permit(:id, question: [])
        end
end
      
      

