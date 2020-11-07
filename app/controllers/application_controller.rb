class ApplicationController < ActionController::Base
    def hello
        #render templates here!
        render html: 'Hello World!'
    end
end
