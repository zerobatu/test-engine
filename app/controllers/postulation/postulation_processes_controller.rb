require_dependency "postulation/application_controller"

module Postulation
  class PostulationProcessesController < ApplicationController
    before_action :set_postulation_process, only: [:show, :edit, :update, :destroy]

    # GET /postulation_processes
    def index
      @postulation_processes = PostulationProcess.all
    end

    # GET /postulation_processes/1
    def show
    end

    # GET /postulation_processes/new
    def new
      @postulation_process = PostulationProcess.new
    end

    # GET /postulation_processes/1/edit
    def edit
    end

    # POST /postulation_processes
    def create
      @postulation_process = PostulationProcess.new(postulation_process_params)

      if @postulation_process.save
        redirect_to @postulation_process, notice: 'Postulation process was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /postulation_processes/1
    def update
      if @postulation_process.update(postulation_process_params)
        redirect_to @postulation_process, notice: 'Postulation process was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /postulation_processes/1
    def destroy
      @postulation_process.destroy
      redirect_to postulation_processes_url, notice: 'Postulation process was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_postulation_process
        @postulation_process = PostulationProcess.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def postulation_process_params
        params.require(:postulation_process).permit(:name, :place, :description, :salary)
      end
  end
end
