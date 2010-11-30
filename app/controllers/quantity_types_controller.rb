class QuantityTypesController < ApplicationController
  # GET /quantity_types
  # GET /quantity_types.xml
  def index
    @quantity_types = QuantityType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quantity_types }
    end
  end

  # GET /quantity_types/1
  # GET /quantity_types/1.xml
  def show
    @quantity_type = QuantityType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quantity_type }
    end
  end

  # GET /quantity_types/new
  # GET /quantity_types/new.xml
  def new
    @quantity_type = QuantityType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quantity_type }
    end
  end

  # GET /quantity_types/1/edit
  def edit
    @quantity_type = QuantityType.find(params[:id])
  end

  # POST /quantity_types
  # POST /quantity_types.xml
  def create
    @quantity_type = QuantityType.new(params[:quantity_type])

    respond_to do |format|
      if @quantity_type.save
        format.html { redirect_to(@quantity_type, :notice => 'Quantity type was successfully created.') }
        format.xml  { render :xml => @quantity_type, :status => :created, :location => @quantity_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quantity_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quantity_types/1
  # PUT /quantity_types/1.xml
  def update
    @quantity_type = QuantityType.find(params[:id])

    respond_to do |format|
      if @quantity_type.update_attributes(params[:quantity_type])
        format.html { redirect_to(@quantity_type, :notice => 'Quantity type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quantity_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quantity_types/1
  # DELETE /quantity_types/1.xml
  def destroy
    @quantity_type = QuantityType.find(params[:id])
    @quantity_type.destroy

    respond_to do |format|
      format.html { redirect_to(quantity_types_url) }
      format.xml  { head :ok }
    end
  end
end
