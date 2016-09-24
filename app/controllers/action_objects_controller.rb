class ActionObjectsController < ApplicationController
  before_action :set_action_object, only: [:show, :edit, :update, :destroy]

  # GET /action_objects
  # GET /action_objects.json
  def index
    @action_objects = ActionObject.all
    @action_objects = ActionObject.order :objeto
    render "index"
  end

  # GET /action_objects/1
  # GET /action_objects/1.json
  def show
  end

  # GET /action_objects/new
  def new
    @action_object = ActionObject.new
  end

  # GET /action_objects/1/edit
  def edit
  end

  # POST /action_objects
  # POST /action_objects.json
  def create
    @action_object = ActionObject.new(action_object_params)

    respond_to do |format|
      if @action_object.save
        format.html { redirect_to action: 'index', notice: 'Objeto de Ação criado com sucesso.' }
        format.json { render :show, status: :created, location: @action_object }
      else
        format.html { render :new }
        format.json { render json: @action_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_objects/1
  # PATCH/PUT /action_objects/1.json
  def update
    respond_to do |format|
      if @action_object.update(action_object_params)
        format.html { redirect_to action: 'index', notice: 'Objeto de Ação alterado com sucesso.'}
        format.json { render :show, status: :ok, location: @action_object }
      else
        format.html { render :edit }
        format.json { render json: @action_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_objects/1
  # DELETE /action_objects/1.json
  def destroy
    @action_object.destroy
    respond_to do |format|
      format.html { redirect_to action_objects_url, notice: 'Objeto de Ação apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_object
      @action_object = ActionObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_object_params
      params.require(:action_object).permit(:objeto)
    end
end
