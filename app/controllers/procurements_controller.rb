class ProcurementsController < ApplicationController
  
 # http_basic_authenticate_with name: "gs", password: "gs"
    
  def index
     @procurements = Procurement.all
    if params[:search]
       @procurements = Procurement.search(params[:search]).order("created_at DESC")
     else
       @procurements = Procurement.all.order('created_at DESC')
     end
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
          send_data pdf.render, filename: "Ficha_#{@procurement.cliente}.pdf", type: 'application/pdf'
        end
        format.pdf2 do
          pdf2 = ReportPdf2.new(@procurement)
          send_data pdf2.render, filename: "Procuracao_#{@procurement.cliente}.pdf", type: 'application/pdf'
        end
        format.pdf3 do
          pdf3 = ReportPdf3.new(@procurement)
          send_data pdf3.render, filename: "Contrato_#{@procurement.cliente}.pdf", type: 'application/pdf'
        end
      end
    end
     
  def new
    @procurement = Procurement.new
    @maximum_length = Procurement.validators_on( :observacoes_complementares ).first.options[:maximum]
  end
  
  def edit
    @procurement = Procurement.find(params[:id])
    @maximum_length = Procurement.validators_on( :observacoes_complementares ).first.options[:maximum]
  end
  
  def create
    @procurement = Procurement.new(procurement_params)
    if @procurement.save
      flash[:sucess] = 'Ficha criada com sucesso'
     redirect_to procurements_path
    else
      flash[:danger] = 'Não foi possível criar Ficha'
      render 'new'
    end
  end
  
  def update
    @procurement = Procurement.find(params[:id])
   
    if @procurement.update(procurement_params)
      flash[:sucess] = 'Ficha atualizada com sucesso'
     redirect_to procurements_path
    else
      flash[:danger] = 'Não foi possível atualizar a Ficha'
      render 'edit'
    end
  end
  
  def destroy
    @procurement = Procurement.find(params[:id])
    if @procurement.destroy
      flash[:sucess] = 'Ficha apagada com sucesso'
      redirect_to procurements_path
      else
        flash[:danger] = 'Ocorreu uma falha ao apagar a Ficha, tente novamente'
        end
  end
  
  private
    def procurement_params
      params.require(:procurement).permit!
    end
end
