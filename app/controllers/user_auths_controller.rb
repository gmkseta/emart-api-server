class UserAuthsController < ApplicationController
    before_action :authorize_request
    def create
        @user_auth = UserAuth.new(auths_params)
        @user_auth.user = @current_user
        if @user_auth.save
            render json: @user_auth, status: :created
        else
            render json: { errors: @user_auth.errors.full_messages },
               status: :unprocessable_entity
        end
    end

    private
        def auths_params
            params.require(:user_auths).permit(:id_card, :face_image)
        end
end
