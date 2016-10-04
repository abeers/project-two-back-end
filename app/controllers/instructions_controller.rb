class InstructionsController < ApplicationController
  before_action :set_instruction, only: [:show, :update, :destroy]

  # GET /instructions
  # GET /instructions.json
  def index
    @instructions = Instruction.all

    render json: @instructions
  end

  # GET /instructions/1
  # GET /instructions/1.json
  def show
    render json: @instruction
  end

  # POST /instructions
  # POST /instructions.json
  def create
    @instruction = Instruction.new(instruction_params)

    if @instruction.save
      render json: @instruction, status: :created, location: @instruction
    else
      render json: @instruction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instructions/1
  # PATCH/PUT /instructions/1.json
  def update
    if @instruction.update(instruction_params)
      head :no_content
    else
      render json: @instruction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instructions/1
  # DELETE /instructions/1.json
  def destroy
    @instruction.destroy

    head :no_content
  end

  private

  def set_instruction
    @instruction = Instruction.find(params[:id])
  end

  def instruction_params
    params.require(:instruction).permit(:step, :recipe_id, :stepnum)
  end
end
