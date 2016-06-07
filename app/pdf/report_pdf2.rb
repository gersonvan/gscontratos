class ReportPdf2 < Prawn::Document
  require 'date'
  
  def initialize(procurement)
    super()
    @procurement = procurement
    header
    title_content
    body_content
  end

  def header
    image "#{Rails.root}/app/assets/images/LogoSemFundo.png"
  end
  
  def title_content
    bounding_box([0, 650], :width => 540, :height => 30) do
    stroke_bounds
    text "P R O C U R A Ç Ã O", size: 13, style: :bold, :align => :center, :valign => :center
       end
  end
  def body_content
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
    text "<b>PODERES:</b>  Pelo presente instrumento de procuração ao final assinado, o outorgante nomeia e constitui os advogados acima qualificados, a quem confere amplos e ilimitados poderes com a cláusula <b>“Ad Judicia”</b> para o foro em geral, especificamente para isolados ou conjuntamente, proporem  <b>RECLAMAÇÃO TRABALHISTA</b> em favor do outorgante junto ao <b>Tribunal Regional do Trabalho da 7ª. Região</b>, acompanhando-as até o final, em todos os seus termos, em todas as Instâncias ou Tribunal, podendo interpor todos os recursos em direito permitidos, ou desistir, entrar em acordos, agravar ou apelar de qualquer despacho ou sentença, fazer e assinar requerimentos, produzir provas e justificações, transigir, firmar compromissos, fazer acordos concernentes a presente ação, finalmente, receber Alvarás e respectivos valores concernentes ao pleito, inclusive de FGTS,  tudo mais usar e praticar, requerer e assinar para o completo desempenho deste mandato, inclusive substabelecer, com ou sem reserva de poderes, dando tudo por bem, firme  e valioso.", :inline_format => true
  end
end