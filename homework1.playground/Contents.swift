import Cocoa


func getNumber(price:String) -> String {
            return price.filter("0123456789.".contains)
}

func removeUnderScore(value:String) -> String {
    return value.replacingOccurrences(of: "_", with: " ")
}

func removeLeadingZeros(value:String) -> String {
    return value.replacingOccurrences(of: "^0+", with: "", options: .regularExpression)
}

getNumber(price:"My Wallet (SAR 1,685,633.00)")
removeUnderScore(value:"28_12_2024")
removeLeadingZeros(value:"01 December 2022")
