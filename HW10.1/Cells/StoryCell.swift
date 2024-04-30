import UIKit

final class StoryCell: UICollectionViewCell, CellProtocol {
    
    static internal var reuseID : String = "story"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal lazy var imageView : UIImageView = AppUIFuncs.createImageView(withCornerRadius: 40)
    
    private lazy var name : UILabel = AppUIFuncs.createLabel(textAlignment: .center)
    
    internal func setCellConfig(item: ItemData) {
        
        imageView.image = UIImage(named: item.image)
        name.text = item.text
        
        [imageView, name].forEach { addSubview($0) }
        
        constraintsActivation()
    }
    
    private func constraintsActivation() -> Void {
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 80),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            
            name.leadingAnchor.constraint(equalTo: leadingAnchor),
            name.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
            name.trailingAnchor.constraint(equalTo: trailingAnchor),
            name.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
