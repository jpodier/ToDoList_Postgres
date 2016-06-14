class ToDoList2sController < ApplicationController
  before_action :set_to_do_list2, only: [:show, :edit, :update, :destroy]

  # GET /to_do_list2s
  # GET /to_do_list2s.json
  def index
    @to_do_list2s = ToDoList2.all
  end

  # GET /to_do_list2s/1
  # GET /to_do_list2s/1.json
  def show
  end

  # GET /to_do_list2s/new
  def new
    @to_do_list2 = ToDoList2.new
  end

  # GET /to_do_list2s/1/edit
  def edit
  end

  # POST /to_do_list2s
  # POST /to_do_list2s.json
  def create
    @to_do_list2 = ToDoList2.new(to_do_list2_params)

    respond_to do |format|
      if @to_do_list2.save
        format.html { redirect_to @to_do_list2, notice: 'To do list2 was successfully created.' }
        format.json { render :show, status: :created, location: @to_do_list2 }
      else
        format.html { render :new }
        format.json { render json: @to_do_list2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /to_do_list2s/1
  # PATCH/PUT /to_do_list2s/1.json
  def update
    respond_to do |format|
      if @to_do_list2.update(to_do_list2_params)
        format.html { redirect_to @to_do_list2, notice: 'To do list2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @to_do_list2 }
      else
        format.html { render :edit }
        format.json { render json: @to_do_list2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /to_do_list2s/1
  # DELETE /to_do_list2s/1.json
  def destroy
    @to_do_list2.destroy
    respond_to do |format|
      format.html { redirect_to to_do_list2s_url, notice: 'To do list2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_do_list2
      @to_do_list2 = ToDoList2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def to_do_list2_params
      params.require(:to_do_list2).permit(:task_name, :description, :status)
    end
end
