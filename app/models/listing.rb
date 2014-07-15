class Listing < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites

  def Listing.get_angel_list_jobs

    # query api upto(n) times and reduce into a single array 'results'
    results = 1.upto(1).reduce([]) do |memo, count|

      # set query JSON results to response
      response = HTTParty.get("https://api.angel.co/1/jobs?page=#{count}")
      # map
      result_set = response['jobs'].map do |listing|
        country_code = Listing.get_country_currency("#{listing['currency_code']}")
        location_array = listing['tags'].select do |tag|
          tag['tag_type'] == 'LocationTag'
        end

        if location_array[0]
          location = location_array[0]['name']
          {
            listing_id:     listing['id'],
            title:          listing['title'],
            description:    listing['description'],
            equity_min:     listing['equity_min'],
            equity_max:     listing['equity_max'],
            salary_min:     listing['salary_min'],
            salary_max:     listing['salary_max'],
            thumb_url:      listing['startup']['thumb_url'],
            company_url:    listing['startup']['company_url'],
            company_name:   listing['startup']['name'],
            currency_code:  country_code,
            location:       location
          }
        end
      end
        memo += result_set
    end
  end

  def Listing.get_country_currency(key)

    country_hash = {
      "ALL" => "Lek",
      "AFN" => "؋",
      "ARS" => "$",
      "AWG" => "ƒ",
      "AUD" => "$",
      "AZN" => "ман",
      "BSD" => "$",
      "BBD" => "$",
      "BYR" => "p.",
      "BZD" => "BZ$",
      "BMD" => "$",
      "BOB" => "$b",
      "BAM" => "KM",
      "BWP" => "P",
      "BGN" => "лв",
      "BRL" => "R$",
      "BND" => "$",
      "KHR" => "៛",
      "CAD" => "$",
      "KYD" => "$",
      "CLP" => "$",
      "CNY" => "¥",
      "COP" => "$",
      "CRC" => "₡",
      "HRK" => "kn",
      "CUP" => "₱",
      "CZK" => "Kč",
      "DKK" => "kr",
      "DOP" => "RD$",
      "XCD" => "$",
      "EGP" => "£",
      "SVC" => "$",
      "EEK" => "kr",
      "EUR" => "€",
      "FKP" => "£",
      "FJD" => "$",
      "GHC" => "¢",
      "GIP" => "£",
      "GTQ" => "Q",
      "GGP" => "£",
      "GYD" => "$",
      "HNL" => "L",
      "HKD" => "$",
      "HUF" => "Ft",
      "ISK" => "kr",
      "INR" => "",
      "IDR" => "Rp",
      "IRR" => "﷼",
      "IMP" => "£",
      "ILS" => "₪",
      "JMD" => "J$",
      "JPY" => "¥",
      "JEP" => "£",
      "KZT" => "лв",
      "KPW" => "₩",
      "KRW" => "₩",
      "KGS" => "лв",
      "LAK" => "₭",
      "LVL" => "Ls",
      "LBP" => "£",
      "LRD" => "$",
      "LTL" => "Lt",
      "MKD" => "ден",
      "MYR" => "RM",
      "MUR" => "₨",
      "MXN" => "$",
      "MNT" => "₮",
      "MZN" => "MT",
      "NAD" => "$",
      "NPR" => "₨",
      "ANG" => "ƒ",
      "NZD" => "$",
      "NIO" => "C$",
      "NGN" => "₦",
      "KPW" => "₩",
      "NOK" => "kr",
      "OMR" => "﷼",
      "PKR" => "₨",
      "PAB" => "B/.",
      "PYG" => "Gs",
      "PEN" => "S/.",
      "PHP" => "₱",
      "PLN" => "zł",
      "QAR" => "﷼",
      "RON" => "lei",
      "RUB" => "руб",
      "SHP" => "£",
      "SAR" => "﷼",
      "RSD" => "Дин.",
      "SCR" => "₨",
      "SGD" => "$",
      "SBD" => "$",
      "SOS" => "S",
      "ZAR" => "R",
      "KRW" => "₩",
      "LKR" => "₨",
      "SEK" => "kr",
      "CHF" => "CHF",
      "SRD" => "$",
      "SYP" => "£",
      "TWD" => "NT$",
      "THB" => "฿",
      "TTD" => "TT$",
      "TRY" => "",
      "TRL" => "₤",
      "TVD" => "$",
      "UAH" => "₴",
      "GBP" => "£",
      "USD" => "$",
      "UYU" => "$U",
      "UZS" => "лв",
      "VEF" => "Bs",
      "VND" => "₫",
      "YER" => "﷼",
      "ZWD" => "Z$"
    }
    country_hash[key]
  end

end
