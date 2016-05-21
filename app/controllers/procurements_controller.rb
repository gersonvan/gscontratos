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
      flash[:sucess] = 'Procuração criada com sucesso'
      redirect_to @procurement
    else
      flash[:danger] = 'Não foi possível criar Procuração'
      render 'new'
    end
  end
  
  def update
    @procurement = Procurement.find(params[:id])
   
    if @procurement.update(procurement_params)
      flash[:sucess] = 'Procuração atualizada com sucesso'
      redirect_to @procurement
    else
      flash[:danger] = 'Não foi possível atualizar a Procuração'
      render 'edit'
    end
  end
  
  def destroy
    @procurement = Procurement.find(params[:id])
    if @procurement.destroy
      flash[:sucess] = 'Procuração apagada com sucesso'
      redirect_to procurements_path
      else
        flash[:danger] = 'Ocorreu uma falha ao apagar Procuração, tente novamente'
        end
  end
  
  private
    def procurement_params
      params.require(:procurement).permit!
    end
end
