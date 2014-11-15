module Api
  module V1
    class CompetitionsController < ApplicationController
      respond_to :json

      def entries
        render json: Competition.find(params[:id]).entries
      end
    end
  end
end