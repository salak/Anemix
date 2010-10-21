class HoldersController < ApplicationController
  # GET /holders
  # GET /holders.xml
  def index
    @holders = Holder.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @holders }
    end
  end

  # GET /holders/1
  # GET /holders/1.xml
  def show
    @holder = Holder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @holder }
    end
  end

  # GET /holders/new
  # GET /holders/new.xml
  def new
    @holder = Holder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @holder }
    end
  end

  # GET /holders/1/edit
  def edit
    @holder = Holder.find(params[:id])
  end

  # POST /holders
  # POST /holders.xml
  def create
    @holder = Holder.new(params[:holder])

    respond_to do |format|
      if @holder.save
        format.html { redirect_to(@holder, :notice => 'Holder was successfully created.') }
        format.xml  { render :xml => @holder, :status => :created, :location => @holder }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @holder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /holders/1
  # PUT /holders/1.xml
  def update
    @holder = Holder.find(params[:id])

    respond_to do |format|
      if @holder.update_attributes(params[:holder])
        format.html { redirect_to(@holder, :notice => 'Holder was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @holder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /holders/1
  # DELETE /holders/1.xml
  def destroy
    @holder = Holder.find(params[:id])
    @holder.destroy

    respond_to do |format|
      format.html { redirect_to(holders_url) }
      format.xml  { head :ok }
    end
  end
end
