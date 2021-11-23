class CarsController < ApplicationController

    get '/cars' do 
       cars = Car.all 
        cars.to_json
    end

    post '/cars' do 
        cars = Car.create (params)
        cars.to_json
    end

    delete '/cars' do 
        cars = Car.find_by(id: params[:id])
        cars.destroy
    end

end
