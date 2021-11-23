class CarsController < ApplicationController

    get '/cars' do 
       cars = Car.all 
        cars.to_json
    end

    post '/cars' do 
        cars = Car.create(params)
        cars.to_json
    end

    delete '/cars/:id' do 
        cars = Car.find_by(id: params["id"].to_i)
        cars.destroy
    end
    get '/cars/:id' do
        id = params["id"].to_i
        car = Car.find_by(id: id)

        if car
            car.to_json()
        else
            "404 not found"
        end
    end

end
