module Api
  module V1
    class EntriesController < ApplicationController
      respond_to :json
      #disabled for now:
      skip_before_action :verify_authenticity_token

      def create
        respond_with Entry.create(person_params)
      end

      private

      def person_params
        params.require(:entries).permit(:competition_id, :name, :description)
      end

    end
  end
end