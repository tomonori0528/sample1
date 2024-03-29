class PhotosController < ApplicationController

  before_action :authenticate_user!

    def index
        @photos = Photo.all
      end
     
      def new
         @photo = Photo.new
      end
     
      def create
     
         photo = Photo.new(photo_params)
     
          if photo.save
     
           redirect_to :action => "index"
        
          else
     
           redirect_to :action => "new"
        
          end
     
       end
     
     
       def show
       
       
        @photo = Photo.find(params[:id])
        @narratives = @photo.narratives.where(user_id: current_user.id)
        @narrative = Narrative.new
     
       end 
         
      private
      def photo_params
     
        params.require(:photo).permit(:image)
        
      end


end
