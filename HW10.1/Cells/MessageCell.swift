import UIKit

final class MessageCell: UICollectionViewCell, CellProtocol {
    static internal var reuseID : String = "message"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal lazy var imageView : UIImageView = AppUIFuncs.createImageView(withCornerRadius: 20)
    
    private lazy var name : UILabel = AppUIFuncs.createLabel()
    
    internal func setCellConfig(item: ItemData) {
        
        imageView.image = UIImage(named: item.image)
        name.text = item.text
        
        [imageView, name].forEach { addSubview($0) }
        backgroundColor = .appLightGray
        layer.cornerRadius = 15
        
        constraintsActivation()
    }
    
    private func constraintsActivation() -> Void {
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 13),
            imageView.widthAnchor.constraint(equalToConstant: 61),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            
            name.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 12),
            name.topAnchor.constraint(equalTo: topAnchor, constant: 13),
            name.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            name.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -13)
        ])
    }
}
