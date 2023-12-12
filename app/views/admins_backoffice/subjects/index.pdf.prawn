prawn_document do |pdf|
  pdf.text 'Listando Assuntos', align: :center, size: 24, style: :bold
  pdf.move_down 20

  table_data = [['ID', 'Descrição']] # Cabeçalho da tabela

  @subjects.each do |subject|
    table_data << [subject.id, subject.description]
  end

  pdf.table(table_data, header: true, width: pdf.bounds.width) do
    row(0).font_style = :bold
    row(0).background_color = 'DDDDDD' # Cor de fundo para o cabeçalho
    columns(0..1).align = :center
    columns(0..1).valign = :middle
    columns(0..1).size = 10
    row(0).size = 12
    row(1..-1).size = 10
    row(1..-1).padding = [5, 5, 5, 5] # Espaçamento interno das células
  end
end
