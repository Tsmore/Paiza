# ポイント払い

# 残高とポイントの計算
def calc_balance_points(charge, fares)
  balance = charge
  points = 0

  # ポイントを使うか残高から生産しポイントを付与するか計算
  fares.map do |fare|
    if points >= fare
      points -= fare
      [balance, points]
    else
      balance -= fare
      points += fare / 10
      [balance, points]
    end
  end
end

charge, number_of_rides = gets.split.map(&:to_i)
fares = number_of_rides.times.map {gets.to_i}

calc_balance_points(charge, fares).each do |balance, points|
  puts "#{balance} #{points}"
end