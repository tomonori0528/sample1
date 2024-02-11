class NarrativesController < ApplicationController
  
    def create

        photo = Photo.find(params[:photo_id])
        narrative = photo.narratives.build(narrative_params)
        narrative.user_id = current_user.id
        if narrative.save
          flash[:success] = "コメントしました"
          redirect_back(fallback_location: root_path) #直前のページにリダイレクト
        else
          flash[:success] = "コメントできませんでした"
          redirect_back(fallback_location: root_path) #直前のページにリダイレクト
        end

    end

  
    private
    def narrative_params
      params.require(:narrative).permit(:body)
    end



end
