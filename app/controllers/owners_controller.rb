class OwnersController < ApplicationController

    get '/owners' do
        owners = Owner.all
        owners.to_json(include: :cars)
    end
    post '/owners' do 
        owners = Owner.create (params)
        owners.to_json
    end
    delete '/owners' do 
        owners = Owner.find_by(id: params[:id])
        owners.destroy
    end
    get '/owners/:id' do
        owner = Owner.find_by(params [:id])
        if owner
            owner.to_json(include: :cars)
        else
            "not found"
        end

    end
end
