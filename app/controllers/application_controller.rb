class ApplicationController < ActionController::API                                
                                                                                   
    def authenticate_token                                                           
      render json: { status: 401, message: 'Unauthorized_auth_token' } unless decode_token(bearer_token)
    end                                                                              
                                                                                     
    def bearer_token                                                                 
      header = request.env['HTTP_AUTHORIZATION']                                     
      pattern = /^Bearer /                                                           
      header.gsub(pattern, '') if header && header.match(pattern)                    
    end                                                                              
                                                                                     
    def decode_token(token_input)
        JWT.decode(token_input, ENV["JWT_SECRET"], true, { :algorithm => 'HS256'})
    rescue
        render json: {status: 401, message: "Unauthorized decode_token"}
    end
    
    def get_current_user                                                           
        return if !bearer_token                                                      
        decoded_jwt = decode_token(bearer_token)                                     
        User.find(decoded_jwt[0]["user"]["id"])                                                     
    end 
                                                                                     
  end 