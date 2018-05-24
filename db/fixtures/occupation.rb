require 'csv'

csv = CSV.read('db/fixtures/occupation.csv')

csv.each_with_index do |occu, i|
  # skip a label row
  next if i === 0

  name = occu[0]

  Occupation.seed do |s|
    s.id   = i
    s.name = name
  end
end

