class ReportPdf2 < Prawn::Document
  require 'date'
  
  def initialize(procurement)
    super()
    @procurement = procurement
    header
    title_page_1
    body_content_page_1
    body_content_1_page_2
    body_content_2_page_2
    page_2_board_1
    page_2_board_2
    page_2_board_3
    I18n.locale = :'pt-BR'
  end

  def header
    image "#{Rails.root}/app/assets/images/LogoSemFundo.png"
  end
  
  def title_page_1
    bounding_box([0, 680], :width => 540, :height => 30) do
    stroke_bounds
    text "P R O C U R A Ç Ã O", size: 13, style: :bold, :align => :center, :valign => :center
       end
  end
  def body_content_page_1
    move_down 10
    text "OUTORGANTE:"
    text "NOME: <u>" + @procurement.cliente.to_s + "</u>", style: :bold, :inline_format => true
    text "QUALIFICAÇÃO: <u>________________________</u>", style: :bold, :inline_format => true
    text "RG No.: <u>" + @procurement.rg.to_s + "</u>", style: :bold, :inline_format => true
    text "CPF No.: <u>" + @procurement.cpf.to_s + "</u>", style: :bold, :inline_format => true
    text "ENDEREÇO: <u>" + @procurement.endereco.to_s + "</u>", style: :bold, :inline_format => true
    text "pelo presente instrumento particular de procuração nomeia seus bastantes procuradores os advogados:"
    move_down 20

    text "OUTORGADOS:"
    text "MARIA LÚCIA GUEDES DE SOUZA, inscrita na OAB-CE sob o nº 9.632 e LIA RAQUEL DE SOUZA 
    ESCUDEIRO, inscrita na OAB-CE sob o nº 16.187, ambas com endereço profissional à Av. Mendel 
    Steinbruch nº 3615, Sala 201 Altos – PAJUÇARA – Maracanaú-CE - Fone: (85) 32931929, onde 
    recebem intimações, notificações, citações, etc."
    
    move_down 20
    text "<b>PODERES:</b>  Pelo presente instrumento de procuração ao final assinado, o outorgante 
    nomeia e constitui os advogados acima qualificados, a quem confere amplos e ilimitados poderes
    com a cláusula <b>“Ad Judicia”</b> para o foro em geral, especificamente para isolados ou 
    conjuntamente, proporem  <b>RECLAMAÇÃO TRABALHISTA</b> em favor do outorgante junto ao 
    <b>Tribunal Regional do Trabalho da 7ª. Região</b>, acompanhando-as até o final, em todos os 
    seus termos, em todas as Instâncias ou Tribunal, podendo interpor todos os recursos em direito 
    permitidos, ou desistir, entrar em acordos, agravar ou apelar de qualquer despacho ou sentença, 
    fazer e assinar requerimentos, produzir provas e justificações, transigir, firmar compromissos, 
    fazer acordos concernentes a presente ação, finalmente, receber Alvarás e respectivos valores 
    concernentes ao pleito, inclusive de FGTS,  tudo mais usar e praticar, requerer e assinar para 
    o completo desempenho deste mandato, inclusive substabelecer, com ou sem reserva de poderes, 
    dando tudo por bem, firme  e valioso.", 
    :inline_format => true

      bounding_box([0, 150], :width => 540, :height => 30) do
      stroke_bounds
      text "Fortaleza (CE), " + I18n.localize(Date.today(), format: :default), size: 13, style: :bold, :align => :center, :valign => :center
       end
       move_down 30
       text "__________________________________________________________", size: 13, style: :bold, :align => :center, :valign => :center
        start_new_page
  end
 
  def page_2_board_1
    bounding_box([0, 720], :width => 540, :height => 30) do
    stroke_bounds
    text "<i>CONTRATO DE PRESTAÇÃO DE SERVIÇOS E HONORÁRIOS ADVOCATÍCIOS (Lei  nº 8.0906/94)</i>", 
    size: 13, style: :bold, :align => :center, :valign => :center, :inline_format => true
    end
  end
  def page_2_board_2
    bounding_box([0, 680], :width => 540, :height => 130) do
    stroke_bounds
    move_down 10
    text "Pelo presente contrato de prestação de serviços e de honorários advocatícios, tendo de um lado, como <b>CONTRATADOS</b>, os advogados <b>MARIA LÚCIA GUEDES DE SOUZA, inscrita na OAB-CE sob o nº 9.632 E LIA RAQUEL DE SOUZA ESCUDEIRO, inscrita na OAB-CE sob o nº 16.187, todos com endereço profissional à Av. Mendel Steinbruch nº 3615, Sala 201 Altos – PAJUÇARA – Maracanaú-CE - Fone: (85) 32931929, onde recebem intimações, notificações, citações, etc.</b>, e do outro como <b>CONTRATANTE Sr(a) " + @procurement.cliente.to_s + " RG nº " + @procurement.rg.to_s + " SSP-CE, CPF Nº " + @procurement.cpf.to_s + " <i>in fine</i> </b>assinado(a), todos qualificados no instrumento procuratório, outorgam e aceitam as cláusulas adiante convencionadas:",
    :inline_format => true
       end
    end
  def body_content_1_page_2
    move_down 180
    text "1. As <b>CONTRATADAS</b> comprometem-se nos termos da procuração que lhes foi outorgada, a prestarem seus serviços profissionais na defesa dos direitos trabalhistas do <b>CONTRATANTE</b> em Juízo junto a uma das Varas do  TRT da 7a Região, promovendo a competente <b><u>Reclamação Trabalhista</b></u>, e acompanhá-la até decisão judicial final na 3ª Instância;",
    :inline_format => true
    move_down 10
    text "2. O(A) <b>CONTRATANTE</b> se obriga a fornecer todos os elementos informativos e probantes, necessários ao bom andamento da lide (testemunhas, documentos, etc.), inclusive a pagar quaisquer custas e despesas processuais, bem como a seguir as orientações das CONTRATADAS para o bom andamento processual e solução favorável aos interesses do demandante;",
    :inline_format => true
    move_down 10
   end

   def page_2_board_3
    bounding_box([0, 410], :width => 540, :height => 150) do
    stroke_bounds
    move_down 10
    text "3. A título de remuneração, independentemente do fixado em Juízo, as CONTRATADAS receberão do(a) <b>CONTRATANTE</b> a título de <b>HONORÁRIOS CONTRATUAIS CONVENCIONAIS, 25%</b> do valor total que for recebido por este, inclusive sobre o FGTS que constar depositado, pelos serviços prestados NA FASE DE CONHECIMENTO. CASO O PROCESSO ATINJA A FASE <b>RECURSAL OU DE EXECUÇÃO</b>, O PERCENTUAL A SER RECEBIDO SERÁ DE <b>30%</b>. Caso o objeto da ação seja <b>ACIDENTE, DOENÇA OCUPACIONAL, JUSTA CAUSA, RESCISÃO INDIRETA, OU INSALUBRIDADE/PERICULOSIDADE, o percentual será de 30%, até a fase final de conhecimento e de 35% NA FASE RECURSAL OU DE EXECUÇÃO</b> dado a complexidade da causa, que a justiça do trabalho não concede honorários sucumbenciais para advogado particular.",
    :inline_format => true
         end
      end

   def body_content_2_page_2
     move_down 170
      text "4.  O Valor dos Honorários CONTRATUAIS CONVENCIONAIS serão pagos DE FORMA TOTAL NO PRIMEIRO VALOR A SER RECEBIDO PELO CONTRATANTE, seja em parcelas previamente ajustadas no acordo, ou ao final da demanda sobre o que for recebido pelo CONTRATANTE.",
      :inline_format => true 
    end
end