class WordCloudsController < ApplicationController
  before_action :set_word_cloud, only: [:show, :edit, :update, :destroy]

  # GET /word_clouds
  # GET /word_clouds.json
  def index
    @word_clouds = WordCloud.all
    @words = [
      {text:"徳川", size:30},
      {text:"家康", size:25},
      {text:"織田", size:20},
      {text:"信長", size:15},
      {text:"豊臣", size:10},
      {text:"秀吉", size:5}
    ].to_json.html_safe
  end

  # GET /word_clouds/1
  # GET /word_clouds/1.json
  def show
  end

  # GET /word_clouds/new
  def new
    @word_cloud = WordCloud.new
  end

  # GET /word_clouds/1/edit
  def edit
  end

  # POST /word_clouds
  # POST /word_clouds.json
  def create
    @word_cloud = WordCloud.new(word_cloud_params)

    respond_to do |format|
      if @word_cloud.save
        format.html { redirect_to @word_cloud, notice: 'Word cloud was successfully created.' }
        format.json { render :show, status: :created, location: @word_cloud }
      else
        format.html { render :new }
        format.json { render json: @word_cloud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_clouds/1
  # PATCH/PUT /word_clouds/1.json
  def update
    respond_to do |format|
      if @word_cloud.update(word_cloud_params)
        format.html { redirect_to @word_cloud, notice: 'Word cloud was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_cloud }
      else
        format.html { render :edit }
        format.json { render json: @word_cloud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_clouds/1
  # DELETE /word_clouds/1.json
  def destroy
    @word_cloud.destroy
    respond_to do |format|
      format.html { redirect_to word_clouds_url, notice: 'Word cloud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_cloud
      @word_cloud = WordCloud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_cloud_params
      params.fetch(:word_cloud, {})
    end
end
