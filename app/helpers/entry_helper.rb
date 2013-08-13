module EntryHelper
  def normalize_character(i)
    case i
    when /[A-Z]/ then i.downcase
    when /[a-z]/ then i
    when /[0-9]/ then i
    when "-"     then i
    when "_"     then i
    when " "     then "-"
    else              ""
    end
  end

  def normalize_title(string)
    no_extra_spaces  = string.strip.gsub(/ +/, " ")
    no_extra_hyphens = no_extra_spaces.gsub(/-+/, "-")
    string_as_array  = no_extra_hyphens.split("")
    string_as_array.map! { |i| normalize_character(i) }
    string_as_array.join
  end
end

include EntryHelper
