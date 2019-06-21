class DevicesController < ApplicationController
    before_action :authorize_request

    def open
        
        if @current_user.auth?
            url = "http://15.164.75.24:3000/emart24"
            
            response = HTTParty.post(
                url, 
                body: {
                    "username" => @current_user.username
                }
            )
            resp = JSON.parse(response.body)
            render json: resp
        else 
            render json: {"status": "UnAuthorized"}
        end
    end
end
