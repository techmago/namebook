#encoding: utf-8
class NamegensController < ApplicationController
  before_action :set_namegen, only: [:show, :edit, :update, :destroy]

  # GET /namegens
  # GET /namegens.json
  def index
    @namegens = Namegen.all
  end

  # GET /namegens/1
  # GET /namegens/1.json
  def show
  end

  # GET /namegens/new
  def new
    @namegen = Namegen.new
  end

  # GET /namegens/1/edit
  def edit
  end

  # POST /namegens
  # POST /namegens.json
  def create
    @namegen = Namegen.new(namegen_params)

    respond_to do |format|
      if @namegen.save
        flash[:success] = 'Um novo capítulo de nomes foi criado com sucesso.'
        format.html { redirect_to @namegen }
        format.json { render :show, status: :created, location: @namegen }
      else
        flash[:danger] = 'Houve um problema na criação do capítulo de nomes'
        format.html { render :new }
        format.json { render json: @namegen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /namegens/1
  # PATCH/PUT /namegens/1.json
  def update
    respond_to do |format|
      if @namegen.update(namegen_params)
        flash[:success] = 'O capítulo de nomes foi atualizado com sucesso.'
        format.html { redirect_to @namegen}
        format.json { render :show, status: :ok, location: @namegen }
      else
        flash[:danger] = 'Houve um problema ao atualizar o capítulo de nomes.'
        format.html { render :edit }
        format.json { render json: @namegen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /namegens/1
  # DELETE /namegens/1.json
  def destroy

    respond_to do |format|
      if @namegen.destroy
        flash[:success] = 'O capítulo de nomes foi removido com sucesso.'
        format.html { redirect_to namegens_url }
        format.json { head :no_content }
      else
        flash[:danger] = 'Não foi possivel remover o capítulo de nomes: Há dependentes.'
        format.html { redirect_to namegens_url}
        format.json { head :no_content }
      end
    end


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_namegen
      @namegen = Namegen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def namegen_params
      params.require(:namegen).permit(:name, :names, :prefix, :suffix, :middle, :syllab_mean, :syllab_stddev)
    end
end
