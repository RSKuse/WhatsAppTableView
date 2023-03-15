//
//  UserProfileCell.swift
//  TableView
//
//  Created by Gugulethu Mhlanga on 2023/03/15.
//

import UIKit

class UserProfileInfoCell: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Simphiwe Kuse"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Did you have other questions by the way"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userProfileImage: UIImageView = {
        let imageView = UIImageView()
        // imageView.image = UIImage(named: "simphiwe")
        imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .green
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    /*
     lazy var userStackView: UIStackView = {
         let stackView = UIStackView(arrangedSubviews: [userProfileImage, titleLabel, detailLabel])
         stackView.axis = .horizontal
         stackView.distribution = .fillProportionally
         stackView.spacing = 10.0
         stackView.alignment = .leading
         stackView.translatesAutoresizingMaskIntoConstraints = false
         return stackView
     }()
     */
    
    lazy var timestampLabel: UILabel = {
        let label = UILabel()
        label.text = "21:34"
        label.textColor = .darkGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, detailLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var userStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [userProfileImage,
                                                       labelStackView,
                                                       timestampLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(userStackView)
        
        accessoryType = UITableViewCell.AccessoryType.none
        
        userStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        userStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        userStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        // NEW
        userProfileImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        userProfileImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        timestampLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
