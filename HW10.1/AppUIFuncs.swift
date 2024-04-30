import Foundation
import UIKit

final class AppUIFuncs {
    
    static func createImageView(withCornerRadius rad: CGFloat) -> UIImageView {
        .config(view: UIImageView()) {
            $0.layer.cornerRadius = rad
            $0.contentMode = .scaleAspectFill
            $0.clipsToBounds = true
        }
    }
    
    static func createLabel(withTextColor color: UIColor = .black, textAlignment: NSTextAlignment = .left) -> UILabel {
        .config(view: UILabel()) {
            $0.textColor = color
            $0.textAlignment = textAlignment
            $0.numberOfLines = .zero
        }
    }
    
    static func createHeader() -> UILabel {
        .config(view: UILabel()) {
            $0.textColor = .white
            $0.textAlignment = .left
            $0.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        }
    }
}
