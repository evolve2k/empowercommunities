class AreaProductsController < ApplicationController
  # GET /area_products
  # GET /area_products.xml
  def index
    @area_products = AreaProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @area_products }
    end
  end

  # GET /area_products/1
  # GET /area_products/1.xml
  def show
    @area_product = AreaProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @area_product }
    end
  end

  # GET /area_products/new
  # GET /area_products/new.xml
  def new
    @area_product = AreaProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @area_product }
    end
  end

  # GET /area_products/1/edit
  def edit
    @area_product = AreaProduct.find(params[:id])
  end

  # POST /area_products
  # POST /area_products.xml
  def create
    @area_product = AreaProduct.new(params[:area_product])

    respond_to do |format|
      if @area_product.save
        flash[:notice] = 'AreaProduct was successfully created.'
        format.html { redirect_to(@area_product) }
        format.xml  { render :xml => @area_product, :status => :created, :location => @area_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @area_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /area_products/1
  # PUT /area_products/1.xml
  def update
    @area_product = AreaProduct.find(params[:id])

    respond_to do |format|
      if @area_product.update_attributes(params[:area_product])
        flash[:notice] = 'AreaProduct was successfully updated.'
        format.html { redirect_to(@area_product) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @area_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /area_products/1
  # DELETE /area_products/1.xml
  def destroy
    @area_product = AreaProduct.find(params[:id])
    @area_product.destroy

    respond_to do |format|
      format.html { redirect_to(area_products_url) }
      format.xml  { head :ok }
    end
  end
end
