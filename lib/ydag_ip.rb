class YdagIp
  def self.valid(ip)
    block = /\d{,2}|1\d{2}|2[0-4]\d|25[0-5]/
    lb = /127.0.0.1/
    re = /\A#{block}\.#{block}\.#{block}\.#{block}\z/
    res = ip
    if re.match(ip).nil? || lb.match(ip)
      res = 'Invalid address'
    end
    puts res
    res
  end
  def self.valid_multiple(ips)
    res = ips
    case ips.class.to_s
    when 'String'
      res = YdagIp.valid(ips)
    when 'Array'
      ips.each do |ip|
        if YdagIp.valid(ip)=='Invalid address'
          res='Invalid address'
          break
        end
      end
    end
    res
  end
end
