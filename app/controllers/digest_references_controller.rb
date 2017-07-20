class DigestReferencesController < ApplicationController
  before_action :set_digest_reference, only: [:show, :edit, :update, :destroy]

  # GET /digest_references
  # GET /digest_references.json
  def index
    @digest_references = DigestReference.all
  end

  # GET /digest_references/1
  # GET /digest_references/1.json
  def show
  end

  # GET /digest_references/new
  def new
    @digest_reference = DigestReference.new
  end

  # GET /digest_references/1/edit
  def edit
  end

  # POST /digest_references
  # POST /digest_references.json
  def create
    @digest_reference = DigestReference.new(digest_reference_params)

    respond_to do |format|
      if @digest_reference.save
        format.html { redirect_to @digest_reference, notice: 'Digest reference was successfully created.' }
        format.json { render :show, status: :created, location: @digest_reference }
      else
        format.html { render :new }
        format.json { render json: @digest_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /digest_references/1
  # PATCH/PUT /digest_references/1.json
  def update
    respond_to do |format|
      if @digest_reference.update(digest_reference_params)
        format.html { redirect_to @digest_reference, notice: 'Digest reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @digest_reference }
      else
        format.html { render :edit }
        format.json { render json: @digest_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digest_references/1
  # DELETE /digest_references/1.json
  def destroy
    @digest_reference.destroy
    respond_to do |format|
      format.html { redirect_to digest_references_url, notice: 'Digest reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_digest_reference
      @digest_reference = DigestReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def digest_reference_params
      params.require(:digest_reference).permit(:user_id)
    end
end
