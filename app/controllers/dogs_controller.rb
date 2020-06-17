class DogsController < ApplicationController

    before_action :set_dog, only: [:show, :edit, :update, :destroy]

    def index
        @dogs = Dog.all
    end
    
    def new 
        @dog = Dog.new
    end
    
    def create
        @dog = Dog.new(dog_params)

        if @dog.save
            redirect_to @dog, notice: 'Felicitations ! Ton chien a été créé !'
        else
            render :new
        end
    end

    def update
        if @dog.update(dog_params)
          redirect_to @dog, notice: 'La update a été enregistré.'
        else
          render :edit
        end
    end

    
    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
        redirect _to dogs_path(@dog)
    end

    private

    def set_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit(:race, :location, :name, :age, :price, :description)

    def show 
    end
end
