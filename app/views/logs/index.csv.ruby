csv_str = CSV.generate do |csv|
  #csv << @logs.column_names
  csv << @logs.attribute_names
    @logs.all.each do |log|
    csv << log.attributes.values_at(*@logs.attribute_names)
  end
end

NKF::nkf('--sjis -Lw', csv_str)
