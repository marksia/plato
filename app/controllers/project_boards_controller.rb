class ProjectBoardsController < ApplicationController
  before_action :set_project_board, only: [:show, :edit, :update, :destroy]

  # GET /project_boards
  # GET /project_boards.json
  def index
    @project_boards = ProjectBoard.all
  end

  # GET /project_boards/1
  # GET /project_boards/1.json
  def show
  end

  # GET /project_boards/new
  def new
    @project_board = ProjectBoard.new
  end

  # GET /project_boards/1/edit
  def edit
  end

  # POST /project_boards
  # POST /project_boards.json
  def create
    @project_board = ProjectBoard.new(project_board_params)

    respond_to do |format|
      if @project_board.save
        format.html { redirect_to @project_board, notice: 'Project board was successfully created.' }
        format.json { render :show, status: :created, location: @project_board }
      else
        format.html { render :new }
        format.json { render json: @project_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_boards/1
  # PATCH/PUT /project_boards/1.json
  def update
    respond_to do |format|
      if @project_board.update(project_board_params)
        format.html { redirect_to @project_board, notice: 'Project board was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_board }
      else
        format.html { render :edit }
        format.json { render json: @project_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_boards/1
  # DELETE /project_boards/1.json
  def destroy
    @project_board.destroy
    respond_to do |format|
      format.html { redirect_to project_boards_url, notice: 'Project board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_board
      @project_board = ProjectBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_board_params
      params.require(:project_board).permit(:title)
    end
end
