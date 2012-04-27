class UserConfsController < ApplicationController
  # GET /user_confs
  # GET /user_confs.json
  def index
    @user_confs = UserConf.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_confs }
    end
  end

  # GET /user_confs/1
  # GET /user_confs/1.json
  def show
    @user_conf = UserConf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_conf }
    end
  end

  # GET /user_confs/new
  # GET /user_confs/new.json
  def new
    @user_conf = UserConf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_conf }
    end
  end

  # GET /user_confs/1/edit
  def edit
    @user_conf = UserConf.find(params[:id])
  end

  # POST /user_confs
  # POST /user_confs.json
  def create
    @user_conf = UserConf.new(params[:user_conf])

    respond_to do |format|
      if @user_conf.save
        format.html { redirect_to @user_conf, notice: 'User conf was successfully created.' }
        format.json { render json: @user_conf, status: :created, location: @user_conf }
      else
        format.html { render action: "new" }
        format.json { render json: @user_conf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_confs/1
  # PUT /user_confs/1.json
  def update
    @user_conf = UserConf.find(params[:id])

    respond_to do |format|
      if @user_conf.update_attributes(params[:user_conf])
        format.html { redirect_to @user_conf, notice: 'User conf was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_conf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_confs/1
  # DELETE /user_confs/1.json
  def destroy
    @user_conf = UserConf.find(params[:id])
    @user_conf.destroy

    respond_to do |format|
      format.html { redirect_to user_confs_url }
      format.json { head :ok }
    end
  end
end
