class SiteblogsController < ApplicationController
  before_action :set_siteblog, only: [:show, :edit, :update, :destroy]

  # GET /siteblogs
  # GET /siteblogs.json
  def index
    @siteblogs = Siteblog.all
  end

  # GET /siteblogs/1
  # GET /siteblogs/1.json
  def show
  end

  # GET /siteblogs/new
  def new
    @siteblog = Siteblog.new
  end

  # GET /siteblogs/1/edit
  def edit
  end

  # POST /siteblogs
  # POST /siteblogs.json
  def create
    @siteblog = Siteblog.new(siteblog_params)

    respond_to do |format|
      if @siteblog.save
        format.html { redirect_to @siteblog, notice: 'Siteblog was successfully created.' }
        format.json { render :show, status: :created, location: @siteblog }
      else
        format.html { render :new }
        format.json { render json: @siteblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /siteblogs/1
  # PATCH/PUT /siteblogs/1.json
  def update
    respond_to do |format|
      if @siteblog.update(siteblog_params)
        format.html { redirect_to @siteblog, notice: 'Siteblog was successfully updated.' }
        format.json { render :show, status: :ok, location: @siteblog }
      else
        format.html { render :edit }
        format.json { render json: @siteblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siteblogs/1
  # DELETE /siteblogs/1.json
  def destroy
    @siteblog.destroy
    respond_to do |format|
      format.html { redirect_to siteblogs_url, notice: 'Siteblog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siteblog
      @siteblog = Siteblog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def siteblog_params
      params.require(:siteblog).permit(:title, :desc, :longdesc, :status, :date)
    end
end
