# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161019193401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_objects", force: :cascade do |t|
    t.string   "objeto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "procurements", force: :cascade do |t|
    t.string   "cliente"
    t.text     "descricao"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "rg",                          limit: 8
    t.integer  "cpf",                         limit: 8
    t.string   "estado_civil"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "parte_contraria"
    t.integer  "cnpj",                        limit: 8
    t.string   "nome_fantasia"
    t.string   "endereco_empresa"
    t.string   "bairro_empresa"
    t.string   "cidade_empresa"
    t.string   "proprietario_empresa"
    t.integer  "cep_empresa"
    t.string   "ramo_de_atividade"
    t.string   "objeto_de_acao"
    t.integer  "city_id"
    t.date     "data_inicio_tr"
    t.string   "reg_ctps"
    t.date     "data_registro"
    t.string   "periodo_avulso"
    t.string   "funcao"
    t.float    "salario_final"
    t.string   "forma_pagto"
    t.string   "comissoes"
    t.float    "cotas_sal_fam"
    t.string   "recebia_ccheq"
    t.string   "pg_hextras"
    t.string   "insalubridade"
    t.string   "periculosidade"
    t.string   "ad_noturno"
    t.string   "pg_por_fora"
    t.string   "gorjeta"
    t.string   "viagens_ajuda_custo"
    t.string   "recebeu_ferias"
    t.string   "periodos_n_gozados"
    t.string   "recebia_13"
    t.string   "ano_que_n_recebeu_13"
    t.string   "recebia_pl"
    t.string   "gratificacoes"
    t.string   "outros"
    t.string   "local_de_trabalho"
    t.string   "jornada"
    t.datetime "horario"
    t.string   "intervalo"
    t.string   "sabado"
    t.string   "domingo_feriado_dia_santo"
    t.string   "trabalhou_noutros_horarios"
    t.string   "h_extra_no_c_cheque"
    t.integer  "qte_he_semana",               limit: 8
    t.string   "folga_qdo"
    t.string   "banco_de_horas"
    t.string   "recebia_vr_hex_correto"
    t.string   "tipo_registro_de_hora"
    t.string   "ass_cartao"
    t.string   "saida_na_hora"
    t.string   "escala_turno"
    t.string   "h_intervalar_tempo"
    t.string   "demitido"
    t.string   "motivo"
    t.date     "data_aviso"
    t.date     "ultimo_dia_trabalhado"
    t.string   "assinou_trct"
    t.string   "homologacao_sindicato"
    t.string   "ressalva"
    t.string   "assinou_algum_documento"
    t.text     "motivo_da_demissao"
    t.string   "recebeu_algum_valor"
    t.string   "quem_demitiu"
    t.integer  "qte_de_faltas",               limit: 8
    t.integer  "qte_atestados",               limit: 8
    t.integer  "qte_suspensao",               limit: 8
    t.integer  "qte_advertencia",             limit: 8
    t.string   "res_indireta"
    t.string   "assedio"
    t.float    "vr_recebido_rescisao"
    t.string   "fgts"
    t.string   "parcial_fgts"
    t.string   "quarenta_fgts"
    t.string   "parcial_quarenta_fgts"
    t.date     "data_baixa_na_ctps"
    t.string   "devolucao_ctps"
    t.string   "recebeu_gsd"
    t.date     "inicio_gestacao"
    t.string   "atestados_ultrasom"
    t.string   "deu_conhecimento_na_empresa"
    t.string   "p_quem"
    t.string   "licenca_mater"
    t.string   "suspensao"
    t.integer  "qte_suspensao_gestante",      limit: 8
    t.string   "advertencia"
    t.integer  "qte_advertencia_gestante"
    t.string   "dentro_fora_da_empresa"
    t.string   "socorro_hospital"
    t.string   "emissao_cat"
    t.string   "afastamento_inss"
    t.string   "sequelas"
    t.string   "parte_atingida"
    t.string   "mudanca_funcao"
    t.string   "nova_funcao"
    t.date     "a_partir_de_quando"
    t.text     "observacoes_complementares"
    t.integer  "cep_usuario",                 limit: 8
    t.integer  "numero_do_processo",          limit: 8
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "nacionalidade"
    t.integer  "fones",                       limit: 8
    t.integer  "fone2",                       limit: 8
    t.integer  "fone3",                       limit: 8
    t.string   "profissao_ficha"
    t.date     "data_acidente"
    t.datetime "hora_acidente"
    t.datetime "horario_final_jornada"
  end

  add_index "procurements", ["city_id"], name: "index_procurements_on_city_id", using: :btree

  create_table "professions", force: :cascade do |t|
    t.string   "profissao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "symbol"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "states"
  add_foreign_key "procurements", "cities"
end
