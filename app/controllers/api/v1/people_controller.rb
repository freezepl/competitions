module Api
  module V1
    class PeopleController < ApplicationController
      respond_to :json
      skip_before_action :verify_authenticity_token

      def create
        respond_with Person.create(person_params)
      end

      private

      def person_params
        params.require(:person).permit(:first_name, :last_name, :email)
      end

    end
  end
end