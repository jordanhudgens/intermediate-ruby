module MyLogger
  def self.save_log(e)
    File.open('server_logs.txt', 'a') do |f|
      f.puts "Error: #{e} occurred at: #{Time.new}"
      puts "Error logged"
    end
  end
end

20.times do |i|
  begin
    sleep 1
    i.pop
  rescue => e
    MyLogger.save_log(e)
  end
end