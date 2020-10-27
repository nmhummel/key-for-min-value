#  hash = {:blake => 500, :ashley => 2, :adam => -3, :joyce => 0}

def key_for_min_value(name_hash)
    num = 1.0 / 0
    tiny_person = nil
    name_hash.each do |key, value|  #500, 2, -3
        if num == 0 #infinity == 0                      2 == 0                  -3 == 0                 0 == 0
            num = value # skip                          skip                    skip                    num = 0
            tiny_person = key #skip                     skip                    skip                    tiny_person = joyce
        elsif value < num #500 < infinity               2 < 500                 -3 < 2                  skip
            num = value #num = 500                      num = 2                 num = -3                skip
            tiny_person = key #tiny_person = blake      tiny_person = ashley    tiny_person = adam      skip
        end
    end
    return tiny_person #adam
    if name_hash.empty?
        return nil  
    end
end