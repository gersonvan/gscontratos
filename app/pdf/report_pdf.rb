class ReportPdf < Prawn::Document
  require 'date'
  
  def initialize(procurement)
    super()
    @procurement = procurement
    header
    table1_content
    table2_content
    table3_content
    table4_content
    table5_content
    table6_content
  end

  def header
    text "G & S ADVOGADOS  " + "  FICHA DE ATENDIMENTO DE RECLAMAÇÃO TRABALHISTA  " + "  DATA: " + Date.today.strftime("%d/%m/%Y").to_s
  end

  def table1_content
    table procurement_rows_table1, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}
  end

  def table2_content
    table procurement_rows_table2, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}
  end
  def table3_content
    table procurement_rows_table3, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}  #do
    #row(0).font_style = :bold
    #row(0).align = :center
    #row(0).background_color = "FFFFCC"
    #self.header = true
   #end
  end
  def table4_content
    table procurement_rows_table4, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}
  end
  def table5_content
    table procurement_rows_table5, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}
  end
  def table6_content
    table procurement_rows_table6, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}
  end
  def procurement_rows_table1
    [
      [{:content => 'CLIENTE: '+ @procurement.cliente , :colspan => 8},"FONES: "+ @procurement.fones.to_s],
      [{:content => 'RG: '+ @procurement.rg.to_s, :colspan => 3},{:content => 'CPF: '+ @procurement.cpf.to_s, :colspan => 3},{:content => 'ESTADO CIVIL: '+ @procurement.estado_civil.to_s, :colspan =>3}],
      [{:content => 'ENDEREÇO: '+ @procurement.endereco.to_s, :colspan => 5},{:content => 'BAIRRO: '+ @procurement.bairro.to_s, :colspan => 2},{:content => 'CIDADE: '+ @procurement.cidade.to_s, :colspan =>2}],
      [{:content => 'PARTE CONTRÁRIA: '+ @procurement.parte_contraria.to_s, :colspan => 3},{:content => 'CNPJ: '+ @procurement.cnpj.to_s, :colspan => 3},{:content => 'NOME FANTASIA: '+ @procurement.nome_fantasia.to_s, :colspan =>3}],
      [{:content => 'ENDEREÇO: '+ @procurement.endereco_empresa.to_s, :colspan => 5},{:content => 'BAIRRO: '+ @procurement.bairro_empresa.to_s, :colspan => 2},{:content => 'CIDADE: '+ @procurement.cidade_empresa.to_s, :colspan =>2}],
      [{:content => 'PROPRIETÁRIO: '+ @procurement.proprietario_empresa.to_s, :colspan => 3},{:content => 'CEP: '+ @procurement.cep_empresa.to_s, :colspan => 3},{:content => 'RAMO DE ATIVIDADE:'+ @procurement.ramo_de_atividade.to_s, :colspan =>3}],
      [{:content => 'OBJETO DE AÇÃO: '+ @procurement.objeto_de_acao.to_s, :colspan => 9}]
     ]
  end
  
  def procurement_rows_table2
    [
      [{:content => 'CONTRATO DE TRABALHO', :colspan => 9}],
      ['DATA INÍCIO TR', 'REG CTPS'+'\n S  N', 'D. REGISTRO', 'PERÍODO AVULSO', 'FUNÇÃO', 'SALÁRIO FINAL', 'FORMA PAGTO', 'COMISSÕES', 'COTAS SAL FAM'],
      ['RECEBIA CCHEQ', 'PG HEXTRAS', 'INSALUBRIDADE', 'PERICULOSIDADE', 'AD NOTURNO', 'PG POR FORA', 'GORJETA', {:content => 'VIAGENS – AJUDA CUSTO', :colspan =>2}],
      ['RECEBEU FÉRIAS + 1/3?', 'PERÍODOS Ñ GOZADOS', 'RECEBIA 13º', 'ANO QUE Ñ RECEBEU 13º?', 'RECEBIA (PLR) PART LUCROS?', 'GRATIFICAÇÕES ?', 'OUTROS?', {:content => 'LOCAL DE TRABALHO', :colspan => 2}]   
    ]
    end

  def procurement_rows_table3
    [
      [{:content => 'JORNADA E HORÁRIO DE TRABALHO', :colspan => 6}],
      ['JORNADA', 'HORÁRIO', 'INTERVALO', 'SÁBADO', 'DOM/FERIADOS/D.SANTOS', 'TRABALHOU NOUTROS HORÁRIOS'],
      ['HEXTRA no c. cheque?', 'QTE HE/semana', 'FOLGA QDO?', 'Banco de Horas?', 'Recebia Vr HEx correto?', {:content => ' ', :rowspan => 2}],
      ['TIPO REGISTRO DE HORA:', 'ASS CARTÃO', 'SAÍDA NA HORA', 'ESCALA/TURNO', 'H. INTERVALAR - TEMPO:']
    ]
  end
  def procurement_rows_table4
    [
      [{:content => 'DEMISSÃO E PAGAMENTO VERBAS RESCISÓRIAS', :colspan => 8}],
      ['DEMITIDO?', 'MOTIVO', 'DATA AVISO', 'ÚLTIMO DIA TRABALHADO', 'ASSINOU TRCT', 'HOMOLOGAÇÃO SINDICATO?', 'RESSALVA', 'ASSINOU ALGUM DOCUMENTO?'],
      ['MOTIVO DA DEMISSÃO:', {:content => " ", :colspan => 7}],
      [{:content => " ", :colspan => 7}, 'RECEBEU ALGUM VALOR?'],
      ['QUEM DEMITIU', 'QTE DE FALTAS:', 'QTE ATESTADOS', 'QTE SUSPENSÃO', 'QTE ADVERTÊNCIA', 'RES INDIRETA:', 'ASSÉDIO:'],
      ['VR RECEBIDO RESCISÃO', 'FGTS:', 'PARCIAL', '40% FGTS:', 'PARCIAL', 'DATA BAIXA NA CTPS', 'DEVOLUÇÃO CTPS', 'RECEBEU GSD:']
    ]
  end
  def procurement_rows_table5
    [
      [{:content => 'Gestante', :colspan => 7}],
      ['INÍCIO GESTAÇÃO', 'ATESTADOS + ULTRASOM', 'DEU CONHECIMENTO NA EMPRESA?', 'P/QUEM?', 'LICENÇA MATER', 'SUSPENSÃO' + '> QTE:', 'ADVERÊNCIA' + '> QTE:']
    ]
  end
  def procurement_rows_table6
    [
      [{:content => 'ACIDENTE DE TRABALHO', :colspan => 5}],
      ['DATA E HORA', 'DENTRO / FORA DA EMPRESA', 'SOCORRO / HOSPITAL:', 'EMISSÃO CAT', {:content => 'NOVA FUNÇÃO :' + 'A PARTIR DE QUANDO:', :rowspan => 2}],
      ['AFASTAMENTO INSS?', 'SEQUELAS', 'PARTE ATINGIDA', 'MUDANÇA FUNÇÃO' ]
    ]
    end
end