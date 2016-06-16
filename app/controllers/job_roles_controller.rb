class JobRolesController < ApplicationController
  before_action :set_job_role, only: [:show, :edit, :update, :destroy]

  # GET /job_roles
  # GET /job_roles.json
  def index
    @job_roles = JobRole.all
  end

  # GET /job_roles/1
  # GET /job_roles/1.json
  def show
  end

  # GET /job_roles/new
  def new
    @job_role = JobRole.new
  end

  # GET /job_roles/1/edit
  def edit
  end

  # POST /job_roles
  # POST /job_roles.json
  def create
    @job_role = JobRole.new(job_role_params)

    respond_to do |format|
      if @job_role.save
        format.html { redirect_to @job_role, notice: 'Job role was successfully created.' }
        format.json { render :show, status: :created, location: @job_role }
      else
        format.html { render :new }
        format.json { render json: @job_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_roles/1
  # PATCH/PUT /job_roles/1.json
  def update
    respond_to do |format|
      if @job_role.update(job_role_params)
        format.html { redirect_to @job_role, notice: 'Job role was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_role }
      else
        format.html { render :edit }
        format.json { render json: @job_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_roles/1
  # DELETE /job_roles/1.json
  def destroy
    @job_role.destroy
    respond_to do |format|
      format.html { redirect_to job_roles_url, notice: 'Job role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_role
      @job_role = JobRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_role_params
      params.require(:job_role).permit(:title, :description, :business_location_id)
    end
end
