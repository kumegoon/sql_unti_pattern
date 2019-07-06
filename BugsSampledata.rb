require 'csv'

csv << ['bug_id', 'date_reported','reported_by']

  res.each do |row|
  reported_id = rand(0..1)

    csv << [
      row['bug_id'],
      row[s]
      row[]
    ]
  end
end

query = client.prepare('insert into users values (?,?,?)')

range = 2..100
range.each do |num|


  query.execute num+1, num, s, reported_by(reported_id) 
end