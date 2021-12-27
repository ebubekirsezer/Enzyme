//
//  File.swift
//  
//
//  Created by Ebubekir Sezer on 25.12.2021.
//

import UIKit

public enum SocialMediaType: String {
    case twitter = "twitter"
    case facebook = "facebook"
    case instagram = "instagram"
}

@IBDesignable
public class SocialMediaButton: UIButton {
    
    @IBInspectable var socialMediaType: String {
        get {
            return self.socialMediaType
        }
        set {
            self.layer.cornerRadius = 20
            self.imageView?.contentMode = .scaleAspectFit
            self.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
            switch newValue {
            case SocialMediaType.twitter.rawValue:
                self.backgroundColor = #colorLiteral(red: 0.1002852395, green: 0.6974458098, blue: 0.9604418874, alpha: 1)
                self.setImage(EnzymeImage(named: SocialMediaType.twitter.rawValue), for: .normal)
            case SocialMediaType.facebook.rawValue:
                self.backgroundColor = #colorLiteral(red: 0.231372549, green: 0.3490196078, blue: 0.5960784314, alpha: 1)
                self.setImage(EnzymeImage(named: SocialMediaType.facebook.rawValue), for: .normal)
            case SocialMediaType.instagram.rawValue:
                self.backgroundColor = #colorLiteral(red: 0.8039215686, green: 0.2823529412, blue: 0.4196078431, alpha: 1)
                self.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
                self.setImage(EnzymeImage(named: SocialMediaType.instagram.rawValue), for: .normal)
            default:
                self.backgroundColor = #colorLiteral(red: 0.1002852395, green: 0.6974458098, blue: 0.9604418874, alpha: 1)
                self.setImage(EnzymeImage(named: SocialMediaType.twitter.rawValue), for: .normal)
            }
        }
    }
}

extension SocialMediaButton {
    public func EnzymeImage(named name: String) -> UIImage? {
      UIImage(named: name, in: Bundle.module, compatibleWith: nil)
    }
}
