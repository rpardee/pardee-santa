class Family < ActiveRecord::Base
  @@assignment_key =  {0 => {"T&J" => "T&L", 
                            "T&L" => "R&A",
                            "R&A" => "M&M",
                            "M&M" => "T&J"},
                      1 => {"T&J" => "M&M",
                            "T&L" => "T&J",
                            "R&A" => "T&L",
                            "M&M" => "R&A"},
                      2 => {"T&J" => "R&A",
                            "T&L" => "M&M",
                            "R&A" => "T&J",
                            "M&M" => "T&L"}
                        }
  def buys_for(year)
    # Returns the Family that this family buys for in year.
    # return Family.find_by_identifier("T&L")
    year_type = year.to_i % 3
    assignment_type = @@assignment_key[year_type]
    # raise("assignment_Type is #{assignment_type}")
    buy_for_identifier = assignment_type[self.identifier]
    ret = Family.find_by_identifier(buy_for_identifier)
    # buy_for_identifier = @assignment_key[year_type]
    return ret || "none found!"
  end
  def to_s
    return self.name || "none found!"
  end
end
