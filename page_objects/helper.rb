class Helper

  def test
    time = Time.now
    current_date = time.day.to_s + time.hour.to_s + time.min.to_s + time.sec.to_s
    puts current_date
  end
end