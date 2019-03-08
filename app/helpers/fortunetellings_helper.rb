module FortunetellingsHelper
  def choose_constellation(birth_m_d)
                      case 
                      
                      when birth_m_d.between?(321, 419)
                        "牡羊"
                      when birth_m_d.between?(420, 520)
                        "牡牛"
                      when birth_m_d.between?(521, 621)
                        "双子"
                      when birth_m_d.between?(622, 722)
                        "蟹"
                      when birth_m_d.between?(723, 822)
                        "獅子"
                      when birth_m_d.between?(823, 922)
                        "乙女"
                      when birth_m_d.between?(923, 1023)
                        "天秤"
                      when birth_m_d.between?(1024, 1122)
                        "蠍"
                      when birth_m_d.between?(1123, 1221)
                        "射手"
                      when birth_m_d.between?(1222, 1231) || birth_m_d.between?(101, 119)
                        "山羊"
                      when birth_m_d.between?(120, 218)
                        "水瓶"
                      when birth_m_d.between?(219, 320)
                        "魚"
                      end
  end

  def valid
    Date.today.strftime("%Y%m%d").to_i >= @birthday.to_i && Date.valid_date?(@year.to_i, @month.to_i, @day.to_i) && @birthday.length == 8 
  end
end
