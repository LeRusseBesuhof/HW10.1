import UIKit

final class BannerCell: UICollectionViewCell, CellProtocol {
    
    static var reuseID: String = "banner"
    
    internal var imageView: UIImageView = AppUIFuncs.createImageView(withCornerRadius: 15)
    
    private lazy var header : UILabel = AppUIFuncs.createHeader()
    
    private lazy var text : UILabel = AppUIFuncs.createLabel(withTextColor: .white)
    
    func setCellConfig(item: ItemData) {
        
        imageView.image = UIImage(named: item.image)
        header.text = item.header
        text.text = item.text
        
        [header, text].forEach { imageView.addSubview($0) }
        addSubview(imageView)
        
        constraintsActivation()
    }
    
    private func constraintsActivation() -> Void {
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            header.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 24),
            header.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 25),
            header.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -24),
            header.heightAnchor.constraint(equalToConstant: 30),
            
            text.leadingAnchor.constraint(equalTo: header.leadingAnchor),
            text.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 30),
            text.trailingAnchor.constraint(equalTo: header.trailingAnchor),
            text.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -20)
        ])
    }
}
