class PortofoliosController < ApplicationController
  def index
    @portofolio_items =Portofolio.all
  end

  def angular
    @portofolio_angular =Portofolio.angular
  end

  def new
    @portofolio_item = Portofolio.new
    3.times {@portofolio_item.technologies.build}
  end

  def show
    @portofolio_item = Portofolio.find(params[:id])
    @page_title = @portofolio_item.title
  end

  def create
    @portofolio_item = Portofolio.new(portofolio_params)

    respond_to do |format|
      if @portofolio_item.save
        format.html { redirect_to portofolios_path notice: "Portofolio was successfully created." }
        format.json { render portofolios_, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portofolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @portofolio_item = Portofolio.find(params[:id])
  end

  def update
    @portofolio_item = Portofolio.find(params[:id])

    respond_to do |format|
      if @portofolio_item.update(portofolio_params)
        format.html { redirect_to portofolios_path, notice: "Portofolio was successfully updated." }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portofolio_item = Portofolio.find(params[:id])
    @portofolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portofolios_path, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def portofolio_params
    params.require(:portofolio).permit(:title,
                                       :sub_title,
                                       :body,
                                       technologies_attributes: [:name])
  end
end
