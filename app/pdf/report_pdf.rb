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
    text "G & S ADVOGADOS"
    text "Ficha de Atendimento de Reclamação Trabalhista"
    text "DATA: " + Date.today.strftime("%d/%m/%Y").to_s
  end

  def table1_content
    table procurement_rows_table1, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}
  end
  def table2_content
    table procurement_rows_table2, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}
  end
  def table3_content
    table procurement_rows_table3, :cell_style => { :font=> "#{Prawn::DATADIR}/fonts/calibri.ttf", :size => 7}  
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
      [{:content => 'DADOS GERAIS', :colspan => 9}],
        [{:content => 'CLIENTE: '+ @procurement.cliente.to_s, :colspan => 6},
          {:content => 'FONES: '+ @procurement.fones.to_s, :colspan => 3}],
        [{:content => 'RG: '+ @procurement.rg.to_s, :colspan => 3},
          {:content => 'CPF: '+ @procurement.cpf.to_s, :colspan => 3},
          {:content => 'ESTADO CIVIL: '+ @procurement.estado_civil.to_s, :colspan =>3}],
        [{:content => 'ENDEREÇO: '+ @procurement.endereco.to_s, :colspan => 4},
          {:content => 'BAIRRO: '+ @procurement.bairro.to_s, :colspan => 3},
          {:content => 'CIDADE: '+ @procurement.cidade.to_s, :colspan =>2}],
        [{:content => 'PARTE CONTRÁRIA: '+ @procurement.parte_contraria.to_s, :colspan => 4},
          {:content => 'CNPJ: '+ @procurement.cnpj.to_s, :colspan => 2},
          {:content => 'NOME FANTASIA: '+ @procurement.nome_fantasia.to_s, :colspan =>3}],
        [{:content => 'ENDEREÇO: '+ @procurement.endereco_empresa.to_s, :colspan => 4},
          {:content => 'BAIRRO: '+ @procurement.bairro_empresa.to_s, :colspan => 3},
          {:content => 'CIDADE: '+ @procurement.cidade_empresa.to_s, :colspan =>2}],
        [{:content => 'PROPRIETÁRIO: '+ @procurement.proprietario_empresa.to_s, :colspan => 5},
          {:content => 'CEP: '+ @procurement.cep_empresa.to_s, :colspan => 2},
          {:content => 'RAMO DE ATIVIDADE:'+ @procurement.ramo_de_atividade.to_s, :colspan =>2}],
        [{:content => 'OBJETO DE AÇÃO: '+ @procurement.objeto_de_acao.to_s, :colspan => 9}]
     ]
  end
  
  def procurement_rows_table2
    [
      [{:content => 'CONTRATO DE TRABALHO', :colspan => 9}],
       [{:content => 'DATA INÍCIO TR: '+ @procurement.data_inicio_tr.to_s, :colspan => 1},
         {:content => 'REG CTPS: '+'\n S  N'+ @procurement.reg_ctps.to_s, :colspan => 1},
         {:content => 'D. REGISTRO: ' + @procurement.data_registro.to_s, :colspan => 1},
         {:content => 'PERÍODO AVULSO: '+ @procurement.periodo_avulso.to_s, :colspan => 1},
         {:content => 'FUNÇÃO: '+ @procurement.funcao.to_s, :colspan => 1},
         {:content => 'SALÁRIO FINAL: '+ @procurement.salario_final.to_s, :colspan => 1},
         {:content => 'FORMA PAGTO: '+ @procurement.forma_pagto.to_s, :colspan => 1},
         {:content => 'COMISSÕES: '+ @procurement.comissoes.to_s, :colspan => 1},
         {:content => 'COTAS SAL FAM: '+ @procurement.cotas_sal_fam.to_s, :colspan => 1}],
       [{:content => 'RECEBIA CCHEQ: '+ @procurement.recebia_ccheq.to_s, :colspan => 1},
         {:content => 'PG HEXTRAS: '+ @procurement.pg_hextras.to_s, :colspan => 1},
         {:content => 'INSALUBRIDADE: ' + @procurement.insalubridade.to_s, :colspan => 1},
         {:content => 'PERICULOSIDADE: '+ @procurement.periculosidade.to_s, :colspan => 1},
         {:content => 'AD NOTURNO: '+ @procurement.ad_noturno.to_s, :colspan => 1},
         {:content => 'PG POR FORA: '+ @procurement.pg_por_fora.to_s, :colspan => 1},
         {:content => 'GORJETA: '+ @procurement.gorjeta.to_s, :colspan => 1},
         {:content => 'VIAGENS – AJUDA CUSTO: ' + @procurement.viagens_ajuda_custo.to_s, :colspan => 2}],
       [{:content => 'RECEBEU FÉRIAS + 1/3?: '+ @procurement.recebeu_ferias.to_s, :colspan => 1}, 
         {:content => 'PERÍODOS Ñ GOZADOS: '+ @procurement.periodos_n_gozados.to_s, :colspan => 1},
         {:content => 'RECEBIA 13º: '+ @procurement.recebia_13.to_s, :colspan => 1},
         {:content => 'ANO QUE Ñ RECEBEU 13º? '+ @procurement.ano_que_n_recebeu_13.to_s, :colspan => 1},
         {:content => 'RECEBIA (PLR) PART LUCROS? '+ @procurement.recebia_pl.to_s, :colspan => 1},
         {:content => 'GRATIFICAÇÕES ? '+ @procurement.gratificacoes.to_s, :colspan => 1},
         {:content => 'OUTROS?' + @procurement.outros.to_s, :colspan => 1},
         {:content => 'LOCAL DE TRABALHO: '+ @procurement.local_de_trabalho.to_s, :colspan => 2}]
    ]
    end

  def procurement_rows_table3
    [
      [{:content => 'JORNADA E HORÁRIO DE TRABALHO', :colspan => 9}],
        [{:content => 'JORNADA: '+ @procurement.jornada.to_s, :colspan => 2},
          {:content => 'HORÁRIO: '+ @procurement.horario.to_s, :colspan => 1},
          {:content => 'INTERVALO: '+ @procurement.intervalo.to_s, :colspan => 2},
          {:content => 'SÁBADO: '+ @procurement.sabado.to_s, :colspan => 2},
          {:content => 'DOM/FERIADOS/D.SANTOS: '+ @procurement.domingo_feriado_dia_santo.to_s, :colspan => 1},
          {:content => 'TRABALHOU NOUTROS HORÁRIOS: '+ @procurement.trabalhou_noutros_horarios.to_s, :colspan => 1}],
        [{:content => 'Hora Extra no C. cheque? '+ @procurement.h_extra_no_c_cheque.to_s, :colspan => 1},
          {:content => 'QTE HE/semana: '+ @procurement.qte_he_semana.to_s, :colspan => 1},
          {:content => 'Folga Quando? '+ @procurement.folga_qdo.to_s, :colspan => 1},
          {:content => 'Banco de Horas? '+ @procurement.banco_de_horas.to_s, :colspan => 1},
          {:content => 'Recebia Vr HEx correto?: '+ @procurement.recebia_vr_hex_correto.to_s, :colspan => 2}],
        [{:content => 'TIPO REGISTRO DE HORA: '+ @procurement.tipo_registro_de_hora.to_s, :colspan => 2},
          {:content => 'ASS CARTÃO: '+ @procurement.ass_cartao.to_s, :colspan => 1},
          {:content => 'SAÍDA NA HORA: '+ @procurement.saida_na_hora.to_s, :colspan => 1},
          {:content => 'ESCALA/TURNO: '+ @procurement.escala_turno.to_s, :colspan => 1},
          {:content => 'H. INTERVALAR - TEMPO: '+ @procurement.h_intervalar_tempo.to_s, :colspan => 1}]
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