module Api
  module V1
    class EcoFriendlyIdeasController < ApplicationController
      protect_from_forgery with: :null_session
      def create
        eco_friendly_idea = EcoFriendlyIdea.new(eco_friendly_idea_params)

        if eco_friendly_idea.save
          render json: EcoFriendlyIdeaSerializer.new(eco_friendly_idea).serialized_json
        else
          render json: { error: review.errors.messages }, status: 422
        end
      end

      def destroy
        eco_friendly_idea = EcoFriendlyIdea.find(params[:id])

        if eco_friendly_idea.destroy
          head :no_content
        else
          render json: { error: review.errors.messages }, status: 422
        end
      end

      private

      def eco_friendly_idea_params
        params.require(:eco_friendly_idea).permit(:title, :description, :user_id)
      end
    end
  end
end

