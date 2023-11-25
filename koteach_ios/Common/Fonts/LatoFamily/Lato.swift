//
//  Lato.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import Foundation
import SwiftUI

enum LatoFamily: String {
    case Black, Bold, Light, Regular, Thin
}

struct LatoFont: ViewModifier {
    var family: LatoFamily
    var size: CGFloat

    func body(content: Content) -> some View {
//        return content.font(.custom("Lato-\(family.rawValue)", fixedSize: size))
        return content.font(.custom("Lato-\(family.rawValue)", fixedSize: size))
    }
}

extension View {
    func lato(family: LatoFamily, size: CGFloat) -> some View {
        return self.modifier(LatoFont(family: family, size: size))
    }
}

extension UIFont {
    static func lato(family: LatoFamily, size: CGFloat) -> UIFont {
        let font = UIFont(name: "Lato-\(family.rawValue)", size: size)
        return font ?? UIFont()
    }
}

extension Font {
    static func lato(family: LatoFamily, size: CGFloat) -> Font {
        let font = Font.custom("Lato-\(family.rawValue)", size: size)
        return font
    }
}
