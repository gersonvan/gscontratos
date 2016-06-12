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
    font_families.update(
  "Calibri" => {  :normal => "calibri.ttf",
                  :bold => "calibrib.ttf",
                  :italic => "calibrii.ttf"})
  end

  def header
    image "#{Rails.root}/app/assets/images/LogoSemFundo.png"
    text "Ficha de Atendimento de Reclamação Trabalhista"
    text "DATA: " + Date.today.strftime("%d/%m/%Y").to_s
  end

  def table1_content
    table(procurement_rows_table1, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).align = :center
      row(0).background_color = "F0F0F0"
    end
  end
  def table2_content
    table(procurement_rows_table2, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).align = :center
      row(0).background_color = "F0F0F0"
    end
  end
  def table3_content
    table(procurement_rows_table3, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).align = :center
      row(0).background_color = "F0F0F0"
    end
  end
  def table4_content
    table(procurement_rows_table4, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).align = :center
      row(0).background_color = "F0F0F0"
    end
  end
  def table5_content
    table(procurement_rows_table5, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).align = :center
      row(0).background_color = "F0F0F0"
    end
  end
  def table6_content
    table(procurement_rows_table6, :cell_style => { :size => 7}, :width => 540) do
      row(0).font_style = :bold
      row(0).align = :center
      row(0).background_color = "F0F0F0"
    end
  end
  def procurement_rows_table1
    [
      [{:content => 'DADOS GERAIS', :colspan => 10}],
        [{:content => 'CLIENTE: '"\n" + @procurement.cliente.to_s, :colspan => 7},
          {:content => 'FONES: '"\n" + @procurement.fones.to_s, :colspan => 3}],
        [{:content => 'RG: '"\n" + @procurement.rg.to_s, :colspan => 3},
          {:content => 'CPF: '"\n" + @procurement.cpf.to_s, :colspan => 3},
          {:content => 'ESTADO CIVIL: '"\n" + @procurement.estado_civil.to_s, :colspan =>4}],
        [{:content => 'ENDEREÇO: '"\n" + @procurement.endereco.to_s, :colspan => 4},
          {:content => 'BAIRRO: '"\n" + @procurement.bairro.to_s, :colspan => 2},
          {:content => 'CEP: '"\n" + @procurement.cep_usuario.to_s, :colspan => 2},
          {:content => 'CIDADE: '"\n" + @procurement.cidade.to_s, :colspan => 2}],
        [{:content => 'PARTE CONTRÁRIA: '"\n" + @procurement.parte_contraria.to_s, :colspan => 4},
          {:content => 'CNPJ: '"\n" + @procurement.cnpj.to_s, :colspan => 3},
          {:content => 'NOME FANTASIA: '"\n" + @procurement.nome_fantasia.to_s, :colspan =>3}],
        [{:content => 'ENDEREÇO: '"\n" + @procurement.endereco_empresa.to_s, :colspan => 4},
          {:content => 'BAIRRO: '"\n" + @procurement.bairro_empresa.to_s, :colspan => 3},
          {:content => 'CIDADE: '"\n" + @procurement.cidade_empresa.to_s, :colspan =>3}],
        [{:content => 'PROPRIETÁRIO: '"\n" + @procurement.proprietario_empresa.to_s, :colspan => 5},
          {:content => 'CEP: '"\n" + @procurement.cep_empresa.to_s, :colspan => 2},
          {:content => 'RAMO DE ATIVIDADE: '"\n" + @procurement.ramo_de_atividade.to_s, :colspan => 3}],
        [{:content => 'OBJETO DE AÇÃO: '"\n" + @procurement.objeto_de_acao.to_s, :colspan => 10}],
     ]
  end
  
  def procurement_rows_table2
    [
      [{:content => 'CONTRATO DE TRABALHO', :colspan => 10}],
       [{:content => 'DATA INÍCIO: '"\n" + I18n.l(@procurement.data_inicio_tr, format: :default).to_s, :colspan => 1},
         {:content => 'REG CTPS: '"\n" + @procurement.reg_ctps.to_s, :colspan => 1},
         {:content => 'D. REGISTRO: '"\n" + I18n.l(@procurement.data_registro, format: :default).to_s, :colspan => 2},
         {:content => 'PERÍODO AVULSO: '"\n" + @procurement.periodo_avulso.to_s, :colspan => 1},
         {:content => 'FUNÇÃO: '"\n" + @procurement.funcao.to_s, :colspan => 1},
         {:content => 'SALÁRIO FINAL: '"\n" "R$ " + @procurement.salario_final.to_s, :colspan => 1},
         {:content => 'FORMA PAGTO: '"\n" + @procurement.forma_pagto.to_s, :colspan => 1},
         {:content => 'COMISSÕES: '"\n" + @procurement.comissoes.to_s, :colspan => 1},
         {:content => 'COTAS SAL FAM: '"\n" + @procurement.cotas_sal_fam.to_s, :colspan => 1}],
       [{:content => 'RECEBIA CCHEQ: '"\n" + @procurement.recebia_ccheq.to_s, :colspan => 2},
         {:content => 'PG HEXTRAS: '"\n" + @procurement.pg_hextras.to_s, :colspan => 1},
         {:content => 'INSALUBRIDADE: '"\n" + @procurement.insalubridade.to_s, :colspan => 1},
         {:content => 'PERICULOSIDADE: '"\n" + @procurement.periculosidade.to_s, :colspan => 1},
         {:content => 'ADICIONAL NOTURNO: '"\n" + @procurement.ad_noturno.to_s, :colspan => 1},
         {:content => 'PG POR FORA: '"\n" + @procurement.pg_por_fora.to_s, :colspan => 1},
         {:content => 'GORJETA: '"\n" + @procurement.gorjeta.to_s, :colspan => 1},
         {:content => 'VIAGENS – AJUDA CUSTO: '"\n" + @procurement.viagens_ajuda_custo.to_s, :colspan => 2}],
       [{:content => 'FÉRIAS + 1/3?: '"\n" + @procurement.recebeu_ferias.to_s, :colspan => 1}, 
         {:content => 'PERÍODOS Ñ GOZADOS: '"\n" + @procurement.periodos_n_gozados.to_s, :colspan => 2},
         {:content => 'RECEBIA 13º: '"\n" + @procurement.recebia_13.to_s, :colspan => 1},
         {:content => 'ANO QUE Ñ RECEBEU 13º? '"\n" + @procurement.ano_que_n_recebeu_13.to_s, :colspan => 1},
         {:content => 'PLR '"\n" + @procurement.recebia_pl.to_s, :colspan => 1},
         {:content => 'GRATIFICAÇÕES ? '"\n" + @procurement.gratificacoes.to_s, :colspan => 2},
         {:content => 'OUTROS?'"\n" + @procurement.outros.to_s, :colspan => 1},
         {:content => 'LOCAL DE TRABALHO: '"\n" + @procurement.local_de_trabalho.to_s, :colspan => 1}]
    ]
    end

  def procurement_rows_table3
    [
      [{:content => 'JORNADA E HORÁRIO DE TRABALHO', :colspan => 10}],
        [{:content => 'JORNADA: '"\n" + @procurement.jornada.to_s, :colspan => 2},
          {:content => 'HORÁRIO: '"\n" + @procurement.horario.to_s, :colspan => 1},
          {:content => 'INTERVALO: '"\n" + @procurement.intervalo.to_s, :colspan => 2},
          {:content => 'SÁBADO: '"\n" + @procurement.sabado.to_s, :colspan => 2},
          {:content => 'DOM/FERIADOS/D.SANTOS: '"\n" + @procurement.domingo_feriado_dia_santo.to_s, :colspan => 2},
          {:content => 'TRABALHOU NOUTROS HORÁRIOS: '"\n" + @procurement.trabalhou_noutros_horarios.to_s, :colspan => 1}],
        [{:content => 'Hora Extra no C. cheque? '"\n" + @procurement.h_extra_no_c_cheque.to_s, :colspan => 2},
          {:content => 'QTE HE/semana: '"\n" + @procurement.qte_he_semana.to_s, :colspan => 2},
          {:content => 'Folga Quando? '"\n" + @procurement.folga_qdo.to_s, :colspan => 2},
          {:content => 'Banco de Horas? '"\n" + @procurement.banco_de_horas.to_s, :colspan => 2},
          {:content => 'Recebia Vr HEx correto?: '"\n" + @procurement.recebia_vr_hex_correto.to_s, :colspan => 2}],
        [{:content => 'TIPO REGISTRO DE HORA: '"\n" + @procurement.tipo_registro_de_hora.to_s, :colspan => 2},
          {:content => 'ASS CARTÃO: '"\n" + @procurement.ass_cartao.to_s, :colspan => 2},
          {:content => 'SAÍDA NA HORA: '"\n" + @procurement.saida_na_hora.to_s, :colspan => 2},
          {:content => 'ESCALA/TURNO: '"\n" + @procurement.escala_turno.to_s, :colspan => 2},
          {:content => 'H. INTERVALAR - TEMPO: '"\n" + @procurement.h_intervalar_tempo.to_s, :colspan => 2}]
    ]
  end
  def procurement_rows_table4
    [
      [{:content => 'DEMISSÃO E PAGAMENTO VERBAS RESCISÓRIAS', :colspan => 10}],
      [{:content => 'DEMITIDO?'"\n" + @procurement.demitido.to_s, :colspan => 1},
        {:content => 'MOTIVO'"\n" + @procurement.motivo.to_s, :colspan => 2},
        {:content => 'DATA AVISO'"\n" + I18n.l(@procurement.data_aviso, format: :default).to_s, :colspan => 1},
        {:content => 'ÚLTIMO DIA TRABALHADO'"\n" + I18n.l(@procurement.ultimo_dia_trabalhado, format: :default).to_s, :colspan => 1},
        {:content => 'ASSINOU TRCT'"\n" + @procurement.assinou_trct.to_s, :colspan => 1},
        {:content => 'HOMOLOGAÇÃO?'"\n" + @procurement.homologacao_sindicato.to_s, :colspan => 1},
        {:content => 'RESSALVA'"\n" + @procurement.ressalva.to_s, :colspan => 1},
        {:content => 'ASSINOU DOCUMENTO?'"\n" + @procurement.assinou_algum_documento.to_s, :colspan => 2}],
      [{:content => 'MOTIVO DA DEMISSÃO: '"\n" + @procurement.motivo_da_demissao.to_s, :colspan => 8},
        {:content => 'RECEBEU VALOR?'"\n" + @procurement.recebeu_algum_valor.to_s, :colspan => 2}],
      [{:content => 'QUEM DEMITIU'"\n" + @procurement.quem_demitiu.to_s, :colspan => 2},
       {:content => 'QTE DE FALTAS: '"\n" + @procurement.qte_de_faltas.to_s, :colspan => 1},
       {:content => 'QTE ATESTADOS'"\n" + @procurement.qte_atestados.to_s, :colspan => 1},
       {:content => 'QTE SUSPENSÃO'"\n" + @procurement.qte_suspensao.to_s, :colspan => 1},
       {:content => 'QTE ADVERTÊNCIA'"\n" + @procurement.qte_advertencia.to_s, :colspan => 2},
       {:content => 'RES INDIRETA: '"\n" + @procurement.res_indireta.to_s, :colspan => 2},
       {:content => 'ASSÉDIO: '"\n" + @procurement.assedio.to_s, :colspan => 1}],
      [{:content => 'VR RECEBIDO RESCISÃO'"\n" "R$ " + @procurement.vr_recebido_rescisao.to_s, :colspan => 2},
       {:content => 'FGTS: '"\n" + @procurement.fgts.to_s, :colspan => 1},
       {:content => 'PARCIAL'"\n" + @procurement.parcial_fgts.to_s, :colspan => 1},
       {:content => '40% FGTS: '"\n" + @procurement.quarenta_fgts.to_s, :colspan => 1},
       {:content => 'PARCIAL'"\n" + @procurement.parcial_quarenta_fgts.to_s, :colspan => 1},
       {:content => 'DATA BAIXA NA CTPS'"\n" + I18n.l(@procurement.data_baixa_na_ctps, format: :default).to_s, :colspan => 2},
       {:content => 'DEVOLUÇÃO CTPS'"\n" + @procurement.devolucao_ctps.to_s, :colspan => 1},
       {:content => 'RECEBEU GSD: '"\n" + @procurement.recebeu_gsd.to_s, :colspan => 1}]
    ]
  end
  def procurement_rows_table5
    [
      [{:content => 'GESTANTE', :colspan => 10}],
      [{:content => 'INÍCIO GESTAÇÃO'"\n" + I18n.l(@procurement.inicio_gestacao, format: :default).to_s, :colspan => 1},
       {:content => 'ATESTADOS+ULTRASOM'"\n" + @procurement.atestados_ultrasom.to_s, :colspan => 2},
       {:content => 'DEU CONHECIMENTO NA EMPRESA?'"\n" + @procurement.deu_conhecimento_na_empresa.to_s, :colspan => 1},
       {:content => 'P/QUEM?'"\n" + @procurement.p_quem.to_s, :colspan => 2},
       {:content => 'LICENÇA MATERNIDADE '"\n" + @procurement.licenca_mater.to_s, :colspan => 2},
       {:content => 'SUSPENSÃO: ' + @procurement.suspensao.to_s + "\n"'QTE: ' + @procurement.qte_suspensao_gestante.to_s, :colspan => 1},
       {:content => 'ADVERTÊNCIA: ' + @procurement.advertencia.to_s + "\n"'QTE: ' + @procurement.qte_advertencia_gestante.to_s, :colspan => 1}]
    ]
  end
  def procurement_rows_table6
    [
      [{:content => 'ACIDENTE DE TRABALHO', :colspan => 10}],
      [{:content => 'DATA E HORA: '"\n" + @procurement.data_e_hora.to_s, :colspan => 2},
       {:content => 'DENTRO / FORA DA EMPRESA: '"\n" + @procurement.dentro_fora_da_empresa.to_s, :colspan => 2},
       {:content => 'SOCORRO / HOSPITAL: '"\n" + @procurement.socorro_hospital.to_s, :colspan => 2},
       {:content => 'EMISSÃO CAT: '"\n" + @procurement.emissao_cat.to_s, :colspan => 2},
       {:content => 'NOVA FUNÇÃO: '"\n" + @procurement.nova_funcao.to_s, :colspan => 2}],
      [{:content => 'AFASTAMENTO INSS?'"\n" + @procurement.afastamento_inss.to_s, :colspan => 2},
       {:content => 'SEQUELAS: '"\n" + @procurement.sequelas.to_s, :colspan => 2},
       {:content => 'PARTE ATINGIDA: '"\n" + @procurement.parte_atingida.to_s, :colspan => 2},
       {:content => 'MUDANÇA FUNÇÃO: '"\n" + @procurement.mudanca_funcao.to_s, :colspan => 2},
       {:content => 'A PARTIR DE QUANDO: '"\n" + I18n.l(@procurement.a_partir_de_quando, format: :default).to_s, :colspan => 2}]
    ]
    end
end