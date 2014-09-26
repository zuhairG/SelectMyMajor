class UniMajorsController < ApplicationController
  # GET /uni_majors
  # GET /uni_majors.json
  def index
    @uni_majors = UniMajor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uni_majors }
    end
  end

  # GET /uni_majors/1
  # GET /uni_majors/1.json
  def show
    @uni_major = UniMajor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uni_major }
    end
  end

  # GET /uni_majors/new
  # GET /uni_majors/new.json
  def new
    @uni_major = UniMajor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uni_major }
    end
  end

  # GET /uni_majors/1/edit
  def edit
    @uni_major = UniMajor.find(params[:id])
  end

  # POST /uni_majors
  # POST /uni_majors.json
  def create
    @uni_major = UniMajor.new(params[:uni_major])

    respond_to do |format|
      if @uni_major.save
        format.html { redirect_to @uni_major, notice: 'Uni major was successfully created.' }
        format.json { render json: @uni_major, status: :created, location: @uni_major }
      else
        format.html { render action: "new" }
        format.json { render json: @uni_major.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /uni_majors/1
  # PUT /uni_majors/1.json
  def update
    @uni_major = UniMajor.find(params[:id])

    respond_to do |format|
      if @uni_major.update_attributes(params[:uni_major])
        format.html { redirect_to @uni_major, notice: 'Uni major was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uni_major.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uni_majors/1
  # DELETE /uni_majors/1.json
  def destroy
    @uni_major = UniMajor.find(params[:id])
    @uni_major.destroy

    respond_to do |format|
      format.html { redirect_to uni_majors_url }
      format.json { head :no_content }
    end
  end
end
