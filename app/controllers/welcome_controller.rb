class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: 'bean API'}
    end
end
