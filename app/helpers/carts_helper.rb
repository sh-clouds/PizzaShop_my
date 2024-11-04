module CartsHelper
 ''' 
  # Parse orders line:
  def parse_orders_input s

    s1 = s.split(/,/)

    arr = []

    s1.each do |x|
      s2 = x.split(/=/)
      s3 = s2[0].split(/_/)

      id = s3[1]
      cnt = s2[1]

      arr2 = [id, cnt]
      arr.push arr2
    end

    return arr
  end
  '''
end
