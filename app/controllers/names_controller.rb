#encoding: utf-8
class NamesController < ApplicationController
  # GET /names
  # GET /names.json
  def index
    @search = Name.search(params[:q])
    @names = @search.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @names }
    end
  end

  # GET /names/1
  # GET /names/1.json
  def show
    @name = Name.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @name }
    end
  end

  # GET /names/new
  # GET /names/new.json
  def new
    @book = Book.order('nome')
    @name = Name.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @name }
    end
  end

  # GET /names/1/edit
  def edit
    @name = Name.find(params[:id])
    @book = Book.order('nome')
  end

  # POST /names
  # POST /names.json
  def create
    @book = Book.order('nome')
    @name = Name.new(params[:name])

    respond_to do |format|
      if @name.save
        format.html { redirect_to @name, notice: 'Um novo nome foi criado com sucesso.' }
        format.json { render json: @name, status: :created, location: @name }
      else
        format.html { render action: "new" }
        format.json { render json: @name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /names/1
  # PUT /names/1.json
  def update
    @name = Name.find(params[:id])

    respond_to do |format|
      if @name.update_attributes(params[:name])
        format.html { redirect_to @name, notice: 'O nome foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /names/1
  # DELETE /names/1.json
  def destroy
    @name = Name.find(params[:id])
    @name.destroy

    respond_to do |format|
      format.html { redirect_to names_url }
      format.json { head :no_content }
    end
  end
end
