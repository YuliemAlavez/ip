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
end
