import Foundation

struct ItemData : Identifiable {
    var id : String = UUID().uuidString
    let image : String
    var header : String? = nil
    var text : String? = nil
}
