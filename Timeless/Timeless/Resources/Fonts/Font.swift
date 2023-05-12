//
//  Font.swift
//  Timeless
//
//  Created by Zien on 12/05/2023.
//

import Foundation
import SwiftUI

extension Font {
    public enum Name {
        public static let phosphate = "Phosphate"
        public static let sfProDisplayBlack = "SFProDisplay-Black"
        public static let sfProDisplayBold = "SFProDisplay-Bold"
        public static let sfProDisplayMedium = "SFProDisplay-Medium"
        public static let sfProDisplayRegular = "SFProDisplay-Regular"
        public static let sfProDisplaySemibold = "SFProDisplay-Semibold"
        public static let sfProRoundedBold = "SFProRounded-Bold"
        public static let sfProRoundedRegular = "SFProRounded-Regular"
        public static let sfProRoundedSemibold = "SFProRounded-Semibold"
        public static let sfProTextBold = "SFProText-Bold"
        public static let sfProTextLight = "SFProText-Light"
        public static let sfProTextMedium = "SFProText-Medium"
        public static let sfProTextSemibold = "SFProText-Semibold"
    }
}

extension Font {
    static func phosphate(size: CGFloat) -> Font {
        Font.custom(Name.phosphate, fixedSize: size)
    }
    static func sfProDisplayBlack(size: CGFloat) -> Font {
        Font.custom(Name.sfProDisplayBlack, fixedSize: size)
    }
    static func sfProDisplayBold(size: CGFloat) -> Font {
        Font.custom(Name.sfProDisplayBold, fixedSize: size)
    }
    static func sfProDisplayMedium(size: CGFloat) -> Font {
        Font.custom(Name.sfProDisplayMedium, fixedSize: size)
    }
    static func sfProDisplayRegular(size: CGFloat) -> Font {
        Font.custom(Name.sfProDisplayRegular, fixedSize: size)
    }
    static func sfProDisplaySemibold(size: CGFloat) -> Font {
        Font.custom(Name.sfProDisplaySemibold, fixedSize: size)
    }
    static func sfProRoundedBold(size: CGFloat) -> Font {
        Font.custom(Name.sfProRoundedBold, fixedSize: size)
    }
    static func sfProRoundedRegular(size: CGFloat) -> Font {
        Font.custom(Name.sfProRoundedRegular, fixedSize: size)
    }
    static func sfProRoundedSemibold(size: CGFloat) -> Font {
        Font.custom(Name.sfProRoundedSemibold, fixedSize: size)
    }
    static func sfProTextBold(size: CGFloat) -> Font {
        Font.custom(Name.sfProTextBold, fixedSize: size)
    }
    static func sfProTextLight(size: CGFloat) -> Font {
        Font.custom(Name.sfProTextLight, fixedSize: size)
    }
    static func sfProTextMedium(size: CGFloat) -> Font {
        Font.custom(Name.sfProTextMedium, fixedSize: size)
    }
    static func sfProTextSemibold(size: CGFloat) -> Font {
        Font.custom(Name.sfProTextSemibold, fixedSize: size)
    }
}
