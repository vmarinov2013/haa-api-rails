require 'singleton'

class States
  include Singleton

  attr_accessor :states

  def initialize
    @states =
      { "us" => [
          { name: "Alabama", code: "AL"},
          { name: "Alaska", code: "AK" },
          { name: "Arizona", code: "AZ" },
          { name: "Arkansas", code: "AR" },
          { name: "California", code: "CA" },
          { name: "Colorado", code: "CO" },
          { name: "Connecticut", code: "CT" },
          { name: "Delaware", code: "DE" },
          { name: "District of Columbia", code: "DC" },
          { name: "Florida", code: "FL" },
          { name: "Georgia", code: "GA" },
          { name: "Hawaii", code: "HI" },
          { name: "Idaho", code: "ID" },
          { name: "Illinois", code: "IL" },
          { name: "Indiana", code: "IN" },
          { name: "Iowa", code: "IA" },
          { name: "Kansas", code: "KS" },
          { name: "Kentucky", code: "KY" },
          { name: "Louisiana", code: "LA" },
          { name: "Maine", code: "ME" },
          { name: "Maryland", code: "MD" },
          { name: "Massachusetts", code: "MA" },
          { name: "Michigan", code: "MI" },
          { name: "Minnesota", code: "MN" },
          { name: "Mississippi", code: "MS" },
          { name: "Missouri", code: "MO" },
          { name: "Montana", code: "MT" },
          { name: "Nebraska", code: "NE" },
          { name: "Nevada", code: "NV" },
          { name: "New Hampshire", code: "NH" },
          { name: "New Jersey", code: "NJ" },
          { name: "New Mexico", code: "NM" },
          { name: "New York", code: "NY" },
          { name: "North Carolina", code: "NC" },
          { name: "North Dakota", code: "ND" },
          { name: "Ohio", code: "OH" },
          { name: "Oklahoma", code: "OK" },
          { name: "Oregon", code: "OR" },
          { name: "Pennsylvania", code: "PA" },
          { name: "Rhode Island", code: "RI" },
          { name: "South Carolina", code: "SC" },
          { name: "South Dakota", code: "SD" },
          { name: "Tennessee", code: "TN" },
          { name: "Texas", code: "TX" },
          { name: "Utah", code: "UT" },
          { name: "Vermont", code: "VT" },
          { name: "Virginia", code: "VA" },
          { name: "Washington", code: "WA" },
          { name: "West Virginia", code: "WV" },
          { name: "Wisconsin", code: "WI" },
          { name: "Wyoming", code: "WY" }
        ],
      "ca" => [
        { name: "Alberta", code: "AB" },
        { name: "British Columbia", code: "BC" },
        { name: "Manitoba", code: "MB" },
        { name: "New Brunswick", code: "NB" },
        { name: "Newfoundland and Labrador", code: "NL" },
        { name: "Nova Scotia", code: "NS" },
        { name: "Northwest Territories", code: "NT" },
        { name: "Nunavut", code: "NU" },
        { name: "Ontario", code: "ON" },
        { name: "Prince Edward Island", code: "PE" },
        { name: "Quebec", code: "QC" },
        { name: "Saskatchewan", code: "SK" },
        { name: "Yukon", code: "YT" },
      ]
    }.freeze
  end

  def find_by_name(name)
    @states.find {|x| x[:name] == name.titlecase}
  end

  def find_by_code(code)
    @states.find {|x| x[:code] == code.upcase}
  end

  def version
    '0.0.1'
  end
end
