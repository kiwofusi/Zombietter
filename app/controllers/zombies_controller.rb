class ZombiesController < ApplicationController
  # GET /zombies
  # GET /zombies.xml
  def index
    @zombies = Zombie.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @zombies }
    end
  end

  # GET /zombies/1
  # GET /zombies/1.xml
  def show
    @zombie = Zombie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @zombie }
    end
  end

  # GET /zombies/new
  # GET /zombies/new.xml
  def new
    @zombie = Zombie.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @zombie }
    end
  end

  # GET /zombies/1/edit
  def edit
    @zombie = Zombie.find(params[:id])
  end

  # POST /zombies
  # POST /zombies.xml
  def create
    @zombie = Zombie.new(params[:zombie])

    respond_to do |format|
      if @zombie.save
        format.html { redirect_to(@zombie, :notice => 'Zombie was successfully created.') }
        format.xml  { render :xml => @zombie, :status => :created, :location => @zombie }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @zombie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /zombies/1
  # PUT /zombies/1.xml
  def update
    @zombie = Zombie.find(params[:id])

    respond_to do |format|
      if @zombie.update_attributes(params[:zombie])
        format.html { redirect_to(@zombie, :notice => 'Zombie was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @zombie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /zombies/1
  # DELETE /zombies/1.xml
  def destroy
    @zombie = Zombie.find(params[:id])
    @zombie.destroy

    respond_to do |format|
      format.html { redirect_to(zombies_url) }
      format.xml  { head :ok }
    end
  end
end
