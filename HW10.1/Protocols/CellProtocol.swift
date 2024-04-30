import Foundation
import UIKit

protocol CellProtocol : AnyObject {
    static var reuseID : String { get }
    var imageView : UIImageView { get }
    func setCellConfig(item: ItemData) -> Void
}
