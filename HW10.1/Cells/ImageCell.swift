import UIKit

final class ImageCell: UICollectionViewCell, CellProtocol {
    
    static var reuseID: String = "image"
    
    internal var imageView: UIImageView = AppUIFuncs.createImageView(withCornerRadius: 15)
    
    func setCellConfig(item: ItemData) {
        
        imageView.image = UIImage(named: item.image)
        
        addSubview(imageView)
        
        constraintsActivation()
    }
    
    private func constraintsActivation() -> Void {
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
