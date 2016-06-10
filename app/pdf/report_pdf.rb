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
    I18n.locale = :'pt-BR'
  end

  def header
    image "#{Rails.root}/app/assets/images/LogoSemFundo.png"
    text "Ficha de Atendimento de Reclamação Trabalhista"
    text "DATA: " + Date.today.strftime("%d/%m/%Y").to_s
  end

  def table1_content
    table(procurement_rows_table1, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).background_color = "F0F0F0"
    end
  end
  def table2_content
    table(procurement_rows_table2, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).background_color = "F0F0F0"
    end
  end
  def table3_content
    table(procurement_rows_table3, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).background_color = "F0F0F0"
    end
  end
  def table4_content
    table(procurement_rows_table4, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).background_color = "F0F0F0"
    end
  end
  def table5_content
    table(procurement_rows_table5, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).background_color = "F0F0F0"
    end
  end
  def table6_content
    table(procurement_rows_table6, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).background_color = "F0F0F0"
    end
  end
  def procurement_rows_table1
    [
      [{:content => 'DADOS GERAIS', :colspan => 10}],
        [{:content => 'CLIENTE: ' + @procurement.cliente.to_s, :colspan => 7},
          {:content => 'FONES: ' + @procurement.fones.to_s, :colspan => 3}],
        [{:content => 'RG: ' + @procurement.rg.to_s, :colspan => 3},
          {:content => 'CPF: ' + @procurement.cpf.to_s, :colspan => 3},
          {:content => 'ESTADO CIVIL: ' + @procurement.estado_civil.to_s, :colspan =>4}],
        [{:content => 'ENDEREÇO: ' + @procurement.endereco.to_s, :colspan => 4},
          {:content => 'BAIRRO: ' + @procurement.bairro.to_s, :colspan => 2},
          {:content => 'CEP: ' + @procurement.cep_usuario.to_s, :colspan => 2},
          {:content => 'CIDADE: ' + @procurement.cidade.to_s, :colspan => 2}],
        [{:content => 'PARTE CONTRÁRIA: ' + @procurement.parte_contraria.to_s, :colspan => 4},
          {:content => 'CNPJ: ' + @procurement.cnpj.to_s, :colspan => 3},
          {:content => 'NOME FANTASIA: ' + @procurement.nome_fantasia.to_s, :colspan =>3}],
        [{:content => 'ENDEREÇO: ' + @procurement.endereco_empresa.to_s, :colspan => 4},
          {:content => 'BAIRRO: ' + @procurement.bairro_empresa.to_s, :colspan => 3},
          {:content => 'CIDADE: ' + @procurement.cidade_empresa.to_s, :colspan =>3}],
        [{:content => 'PROPRIETÁRIO: ' + @procurement.proprietario_empresa.to_s, :colspan => 5},
          {:content => 'CEP: ' + @procurement.cep_empresa.to_s, :colspan => 2},
          {:content => 'RAMO DE ATIVIDADE: ' + @procurement.ramo_de_atividade.to_s, :colspan => 3}],
        [{:content => 'OBJETO DE AÇÃO: ' + @procurement.objeto_de_acao.to_s, :colspan => 10}],
     ]
  end
  
  def procurement_rows_table2
    [
      [{:content => 'CONTRATO DE TRABALHO', :colspan => 10}],
       [{:content => 'DATA INÍCIO TR: ' + I18n.l(@procurement.data_inicio_tr, format: :default).to_s, :colspan => 1},
         {:content => 'REG CTPS: ' +'\n S  N' + @procurement.reg_ctps.to_s, :colspan => 2},
         {:content => 'D. REGISTRO: ' + I18n.l(@procurement.data_registro, format: :default).to_s, :colspan => 1},
         {:content => 'PERÍODO AVULSO: ' + @procurement.periodo_avulso.to_s, :colspan => 1},
         {:content => 'FUNÇÃO: ' + @procurement.funcao.to_s, :colspan => 1},
         {:content => 'SALÁRIO FINAL: ' + @procurement.salario_final.to_s, :colspan => 1},
         {:content => 'FORMA PAGTO: ' + @procurement.forma_pagto.to_s, :colspan => 1},
         {:content => 'COMISSÕES: ' + @procurement.comissoes.to_s, :colspan => 1},
         {:content => 'COTAS SAL FAM: ' + @procurement.cotas_sal_fam.to_s, :colspan => 1}],
       [{:content => 'RECEBIA CCHEQ: ' + @procurement.recebia_ccheq.to_s, :colspan => 2},
         {:content => 'PG HEXTRAS: ' + @procurement.pg_hextras.to_s, :colspan => 1},
         {:content => 'INSALUBRIDADE: ' + @procurement.insalubridade.to_s, :colspan => 1},
         {:content => 'PERICULOSIDADE: ' + @procurement.periculosidade.to_s, :colspan => 1},
         {:content => 'AD NOTURNO: ' + @procurement.ad_noturno.to_s, :colspan => 1},
         {:content => 'PG POR FORA: ' + @procurement.pg_por_fora.to_s, :colspan => 1},
         {:content => 'GORJETA: ' + @procurement.gorjeta.to_s, :colspan => 1},
         {:content => 'VIAGENS – AJUDA CUSTO: ' + @procurement.viagens_ajuda_custo.to_s, :colspan => 2}],
       [{:content => 'FÉRIAS + 1/3?: ' + @procurement.recebeu_ferias.to_s, :colspan => 1}, 
         {:content => 'PERÍODOS Ñ GOZADOS: ' + @procurement.periodos_n_gozados.to_s, :colspan => 2},
         {:content => 'RECEBIA 13º: ' + @procurement.recebia_13.to_s, :colspan => 1},
         {:content => 'ANO QUE Ñ RECEBEU 13º? ' + @procurement.ano_que_n_recebeu_13.to_s, :colspan => 1},
         {:content => 'PLR ' + @procurement.recebia_pl.to_s, :colspan => 1},
         {:content => 'GRATIFICAÇÕES ? ' + @procurement.gratificacoes.to_s, :colspan => 1},
         {:content => 'OUTROS?' + @procurement.outros.to_s, :colspan => 1},
         {:content => 'LOCAL DE TRABALHO: ' + @procurement.local_de_trabalho.to_s, :colspan => 2}]
    ]
    end

  def procurement_rows_table3
    [
      [{:content => 'JORNADA E HORÁRIO DE TRABALHO', :colspan => 10}],
        [{:content => 'JORNADA: ' + @procurement.jornada.to_s, :colspan => 2},
          {:content => 'HORÁRIO: ' + @procurement.horario.to_s, :colspan => 1},
          {:content => 'INTERVALO: ' + @procurement.intervalo.to_s, :colspan => 2},
          {:content => 'SÁBADO: ' + @procurement.sabado.to_s, :colspan => 2},
          {:content => 'DOM/FERIADOS/D.SANTOS: ' + @procurement.domingo_feriado_dia_santo.to_s, :colspan => 2},
          {:content => 'TRABALHOU NOUTROS HORÁRIOS: ' + @procurement.trabalhou_noutros_horarios.to_s, :colspan => 1}],
        [{:content => 'Hora Extra no C. cheque? ' + @procurement.h_extra_no_c_cheque.to_s, :colspan => 2},
          {:content => 'QTE HE/semana: ' + @procurement.qte_he_semana.to_s, :colspan => 2},
          {:content => 'Folga Quando? ' + @procurement.folga_qdo.to_s, :colspan => 2},
          {:content => 'Banco de Horas? ' + @procurement.banco_de_horas.to_s, :colspan => 2},
          {:content => 'Recebia Vr HEx correto?: ' + @procurement.recebia_vr_hex_correto.to_s, :colspan => 2}],
        [{:content => 'TIPO REGISTRO DE HORA: ' + @procurement.tipo_registro_de_hora.to_s, :colspan => 2},
          {:content => 'ASS CARTÃO: ' + @procurement.ass_cartao.to_s, :colspan => 2},
          {:content => 'SAÍDA NA HORA: ' + @procurement.saida_na_hora.to_s, :colspan => 2},
          {:content => 'ESCALA/TURNO: ' + @procurement.escala_turno.to_s, :colspan => 2},
          {:content => 'H. INTERVALAR - TEMPO: ' + @procurement.h_intervalar_tempo.to_s, :colspan => 2}]
    ]
  end
  def procurement_rows_table4
    [
      [{:content => 'DEMISSÃO E PAGAMENTO VERBAS RESCISÓRIAS', :colspan => 10}],
      [{:content => 'DEMITIDO?' + @procurement.demitido.to_s, :colspan => 1},
        {:content => 'MOTIVO' + @procurement.motivo.to_s, :colspan => 2},
        {:content => 'DATA AVISO' + I18n.l(@procurement.data_aviso, format: :default).to_s, :colspan => 1},
        {:content => 'ÚLTIMO DIA TRABALHADO' + I18n.l(@procurement.ultimo_dia_trabalhado, format: :default).to_s, :colspan => 1},
        {:content => 'ASSINOU TRCT' + @procurement.assinou_trct.to_s, :colspan => 1},
        {:content => 'HOMOLOGAÇÃO?' + @procurement.homologacao_sindicato.to_s, :colspan => 1},
        {:content => 'RESSALVA' + @procurement.ressalva.to_s, :colspan => 1},
        {:content => 'ASSINOU ALGUM DOCUMENTO?' + @procurement.assinou_algum_documento.to_s, :colspan => 2}],
      [{:content => 'MOTIVO DA DEMISSÃO: ' + @procurement.motivo_da_demissao.to_s, :colspan => 10}],
      [{:content => 'RECEBEU ALGUM VALOR?' + @procurement.recebeu_algum_valor.to_s, :colspan => 10}],
      [{:content => 'QUEM DEMITIU' + @procurement.quem_demitiu.to_s, :colspan => 2},
       {:content => 'QTE DE FALTAS: ' + @procurement.qte_de_faltas.to_s, :colspan => 1},
       {:content => 'QTE ATESTADOS' + @procurement.qte_atestados.to_s, :colspan => 1},
       {:content => 'QTE SUSPENSÃO' + @procurement.qte_suspensao.to_s, :colspan => 1},
       {:content => 'QTE ADVERTÊNCIA' + @procurement.qte_advertencia.to_s, :colspan => 2},
       {:content => 'RES INDIRETA: ' + @procurement.res_indireta.to_s, :colspan => 2},
       {:content => 'ASSÉDIO: ' + @procurement.assedio.to_s, :colspan => 1}],
      [{:content => 'VR RECEBIDO RESCISÃO' + @procurement.vr_recebido_rescisao.to_s, :colspan => 2},
       {:content => 'FGTS: ' + @procurement.fgts.to_s, :colspan => 1},
       {:content => 'PARCIAL' + @procurement.parcial_fgts.to_s, :colspan => 1},
       {:content => '40% FGTS: ' + @procurement.quarenta_fgts.to_s, :colspan => 1},
       {:content => 'PARCIAL' + @procurement.parcial_quarenta_fgts.to_s, :colspan => 1},
       {:content => 'DATA BAIXA NA CTPS' + I18n.l(@procurement.data_baixa_na_ctps, format: :default).to_s, :colspan => 2},
       {:content => 'DEVOLUÇÃO CTPS' + @procurement.devolucao_ctps.to_s, :colspan => 1},
       {:content => 'RECEBEU GSD: ' + @procurement.recebeu_gsd.to_s, :colspan => 1}]
    ]
  end
  def procurement_rows_table5
    [
      [{:content => 'Gestante', :colspan => 10}],
      [{:content => 'INÍCIO GESTAÇÃO' + I18n.l(@procurement.inicio_gestacao, format: :default).to_s, :colspan => 1},
       {:content => 'ATESTADOS + ULTRASOM' + @procurement.atestados_ultrasom.to_s, :colspan => 2},
       {:content => 'DEU CONHECIMENTO NA EMPRESA?' + @procurement.deu_conhecimento_na_empresa.to_s, :colspan => 1},
       {:content => 'P/QUEM?' + @procurement.p_quem.to_s, :colspan => 2},
       {:content => 'LICENÇA MATER' + @procurement.licenca_mater.to_s, :colspan => 2},
       {:content => 'SUSPENSÃO: ' + @procurement.suspensao.to_s + 'QTE: ' + @procurement.qte_suspensao_gestante.to_s, :colspan => 1},
       {:content => 'ADVERTÊNCIA: ' + @procurement.advertencia.to_s + 'QTE: ' + @procurement.qte_advertencia_gestante.to_s, :colspan => 1}]
    ]
  end
  def procurement_rows_table6
    [
      [{:content => 'ACIDENTE DE TRABALHO', :colspan => 10}],
      [{:content => 'DATA E HORA: ' + @procurement.data_e_hora.to_s, :colspan => 2},
       {:content => 'DENTRO / FORA DA EMPRESA: ' + @procurement.dentro_fora_da_empresa.to_s, :colspan => 2},
       {:content => 'SOCORRO / HOSPITAL: ' + @procurement.socorro_hospital.to_s, :colspan => 2},
       {:content => 'EMISSÃO CAT: ' + @procurement.emissao_cat.to_s, :colspan => 2},
       {:content => 'NOVA FUNÇÃO: ' + @procurement.nova_funcao.to_s, :colspan => 2}],
      [{:content => 'AFASTAMENTO INSS?' + @procurement.afastamento_inss.to_s, :colspan => 2},
       {:content => 'SEQUELAS: ' + @procurement.sequelas.to_s, :colspan => 2},
       {:content => 'PARTE ATINGIDA: ' + @procurement.parte_atingida.to_s, :colspan => 2},
       {:content => 'MUDANÇA FUNÇÃO: ' + @procurement.mudanca_funcao.to_s, :colspan => 2},
       {:content => 'A PARTIR DE QUANDO: ' + I18n.l(@procurement.a_partir_de_quando, format: :default).to_s, :colspan => 2}]
    ]
    end
end