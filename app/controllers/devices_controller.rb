class DevicesController < ApplicationController
    before_action :authorize_request

    def open
        
        url = "http://15.164.75.24:3000/emart24"
        
        response = HTTParty.post(
            url, 
            headers: {
                'Content-Type'=>'application/json'}, 
            body: {
                "username" => @current_user.username
            }
        )
        resp = JSON.parse(response.body)
        render json: resp
    end
end
