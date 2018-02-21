module Api
  module V1
    class PersonajesController < ApplicationController
      before_action :set_personaje, only: [:show, :update, :destroy, :delete]
    
      # GET /personajes
      def index
        #@personajes = Personaje.all
        @personajes = Personaje.where("estado = 1")
        render json: @personajes
      end
    
      # GET /personajes/1
      def show
        if (@personaje.estado == 1)
          render json: @personaje
        else 
          render json: {status: 'Failed', message: 'Usuario no se encuentra habilitado'}
        end
      end
    
      # POST /personajes
      def create
        @personaje = Personaje.new(personaje_params)
    
        if @personaje.save
          render json: {status: 'success', message: 'creado' data:@personaje}
        else
          render json: {status: 'failed', message: 'No se pudo crear' data:@personaje}
        end
      end
    
      # PATCH/PUT /personajes/1
      def update
        if @personaje.update(personaje_params)
          render json: {status: 'success', message: 'actualizado' data:@personaje}
        else
          render json: {status: 'failed', message: 'No se pudo actualizar' data:@personaje}
        end
      end
    
      # DELETE /personajes/1
      def destroy
       if @personaje.update(estado: -1)
        render json: {status: "success", message: "Eliminado"}
       else
        render json: {status: "failed", message: "No se pudo eliminar"}
       end
      end

      
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_personaje
          @personaje = Personaje.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def personaje_params
          params.require(:personaje).permit(:name, :description, :photo)
        end
    end
  end 
end
