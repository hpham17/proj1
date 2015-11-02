class PokemonsController < ApplicationController
    def capture
        @pokemon = Pokemon.find_by id: params[:id]
        @pokemon.trainer_id = current_trainer.id
        @pokemon.save
        redirect_to root_path
    end
    
    def damage
        @pokemon = Pokemon.find_by id: params[:id]
        @pokemon.health -= 10
        @pokemon.save
        if @pokemon.health <= 0
            flash[:error] = "You have defeated a Pokemon. Congrats!!"
            @pokemon.destroy
        end
        redirect_to :back
    end
    
    def heal
        @pokemon = Pokemon.find_by id: params[:id]
        if @pokemon.health == 100
            flash[:error] = "Pokemon is too healthy: cannot heal."
        else
            @pokemon.health += 10
            @pokemon.save
        end
        redirect_to :back
    end
    
    def new
        @pokemons = Pokemon.new
    end
    
    def create
        @pokemon = Pokemon.create name: pokemon_params[:name], level: 1, trainer_id: current_trainer.id, health: 100
        if @pokemon.valid?
            redirect_to current_trainer
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to pokemons_new_path
        end
    end
    
    private
    def pokemon_params
        params.require(:pokemon).permit(:name)
    end
end
