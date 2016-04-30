class ProcurementsController < ApplicationController
  
 # http_basic_authenticate_with name: "gs", password: "gs"
    
  def index
     @procurements = Procurement.all
      respond_to do |format|
           format.html
       end
     
   end
  def show
      @procurement = Procurement.find(params[:id])
      respond_to do |format|
        format.html
        format.pdf do
          pdf = ReportPdf.new(@procurement)
          send_data pdf.render, filename: "#{@procurement.cliente}.pdf", type: 'application/pdf'
        end
      end
    end
     
  def new
    @procurement = Procurement.new
  end
  
  def edit
    @procurement = Procurement.find(params[:id])
  end
  
  def create
    @procurement = Procurement.new(procurement_params)
    if @procurement.save
      redirect_to @procurement
    else
      render 'new'
    end
  end
  
  def update
    @procurement = Procurement.find(params[:id])
   
    if @procurement.update(procurement_params)
      redirect_to @procurement
    else
      render 'edit'
    end
  end
  
  def destroy
    @procurement = Procurement.find(params[:id])
    @procurement.destroy
   
    redirect_to procurements_path
  end
  
  private
    def procurement_params
      params.require(:procurement).permit!
    end
end
