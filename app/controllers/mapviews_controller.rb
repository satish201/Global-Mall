class MapviewsController < ApplicationController
  # GET /mapviews
  # GET /mapviews.xml
  def index
    @mapviews = Mapview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mapviews }
    end
  end

  # GET /mapviews/1
  # GET /mapviews/1.xml
  def show
    @mapview = Mapview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mapview }
    end
  end

  # GET /mapviews/new
  # GET /mapviews/new.xml
  def new
    @mapview = Mapview.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mapview }
    end
  end

  # GET /mapviews/1/edit
  def edit
    @mapview = Mapview.find(params[:id])
  end

  # POST /mapviews
  # POST /mapviews.xml
  def create
    @mapview = Mapview.new(params[:mapview])

    respond_to do |format|
      if @mapview.save
        format.html { redirect_to(@mapview, :notice => 'Mapview was successfully created.') }
        format.xml  { render :xml => @mapview, :status => :created, :location => @mapview }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mapview.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mapviews/1
  # PUT /mapviews/1.xml
  def update
    @mapview = Mapview.find(params[:id])

    respond_to do |format|
      if @mapview.update_attributes(params[:mapview])
        format.html { redirect_to(@mapview, :notice => 'Mapview was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mapview.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mapviews/1
  # DELETE /mapviews/1.xml
  def destroy
    @mapview = Mapview.find(params[:id])
    @mapview.destroy

    respond_to do |format|
      format.html { redirect_to(mapviews_url) }
      format.xml  { head :ok }
    end
  end
end
