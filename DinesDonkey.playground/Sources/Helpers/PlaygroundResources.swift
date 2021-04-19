import Foundation
import SwiftUI

public class PlaygroundResources: ObservableObject {
    static public let shared = PlaygroundResources()
    public let fonts = PlaygroundFonts(fontName: "FredokaOne-Regular")
    public let colors = PlaygroundColors()

    public let stickerTitle: [Sticker: String] = [
        .Dine: "Dinê",
        .DrDeraldoPortela: "Doctor Deraldo Portela",
        .MotherMelania: "Mother Melânia",
        .TomZe: "Tom Zé",
        .Trumpet: "Trumpet",
        .Tambourine: "Tambourine",
        .ClayPot: "Clay Pot",
        .CambrainhaSign: "Cambraínha Sign",
        .Sun: "Sun",
        .Beiju: "Beijú",
        .Pineapple: "Pineapple",
        .CajaFruit: "Cajá Fruit",
        .Coconut: "Coconut",
        .Peanut: "Peanut"
    ]
    
    public let stickerInfo: [Sticker: String] = [
        .Dine: "The creator of Cambraínha the Donkey.",
        .DrDeraldoPortela: "An emblematic figure of Irará. Many places in the city were named after him.",
        .MotherMelania: "The great flag bearer of the Popular Festivities of Irará.",
        .TomZe: "A famous artist from Irará, exponent of the \"Tropicália\" artistic movement.",
        .Trumpet: "Musical instrument used by the \"Charanga\", group of musicians who march through the city during the festivities.",
        .Tambourine: "Musical instrument used in the popular \"samba de roda\" dance.",
        .ClayPot: "A pot commonly used to carry scented water during popular festivities in Irará.",
        .CambrainhaSign: "\"Cambraínha\" is the name of the Dinê's Donkey, named after cambric, a type of fabric.",
        .Sun: "Irará means \"son of sunshine\".",
        .Beiju: "Dish made of cassava starch, in a format similar to a pancake, usually stuffed with coconut.",
        .Pineapple: "Fruit with an acid and sweet taste, widely cultivated in the city.",
        .CajaFruit: "A small, sour and tasty fruit, widely cultivated in Northeast Brazil.",
        .Coconut: "Large, hard-shelled fruit with sweet pulp inside.",
        .Peanut: "Nut used in local cuisine, in dishes such as the \"pé-de-moleque\"."
    ]
    
    private init() {}
}

public enum Background: String, CaseIterable {
    case MatrizChurch = "Images/Backgrounds/MatrizChurch"
    case BentoSimoesChurch = "Images/Backgrounds/BentoSimoesChurch"
    case Coreto = "Images/Backgrounds/Coreto"
    case NogueirasTownhouse = "Images/Backgrounds/NogueirasTownhouse"
    case Oratory = "Images/Backgrounds/Oratory"
    case Obelisk = "Images/Backgrounds/Obelisk"
}


public enum Texture: String, CaseIterable {
    case RedChintzFabric = "Images/Textures/RedChintzFabric"
    case YellowChintzFabric = "Images/Textures/YellowChintzFabric"
    case BlueChintzFabric = "Images/Textures/BlueChintzFabric"
    case YellowDiagonalFabric = "Images/Textures/YellowDiagonalFabric"
    case BlueDiagonalFabric = "Images/Textures/BlueDiagonalFabric"
    case MaroonDiagonalFabric = "Images/Textures/MaroonDiagonalFabric"
    case BrownInterlacedFabric = "Images/Textures/BrownInterlacedFabric"
    case BeigeInterlacedFabric = "Images/Textures/BeigeInterlacedFabric"
    case GoldShinyFabric = "Images/Textures/GoldShinyFabric"
    case BeigeShinyFabric = "Images/Textures/BeigeShinyFabric"
    case GreenNonwovenFabric = "Images/Textures/GreenNonwovenFabric"
    case RedNonwovenFabric = "Images/Textures/RedNonwovenFabric"
    case YellowNonwovenFabric = "Images/Textures/YellowNonwovenFabric"
    case BlueNonwovenFabric = "Images/Textures/BlueNonwovenFabric"
    case GrayNonwovenFabric = "Images/Textures/GrayNonwovenFabric"
}

public enum DonkeyHead: String, CaseIterable {
    case MaroonHead = "Images/DonkeyHeads/MaroonHead"
    case BrownHead = "Images/DonkeyHeads/BrownHead"
    case BeigeHead = "Images/DonkeyHeads/BeigeHead"
    case InterlacedFabricHead = "Images/DonkeyHeads/InterlacedFabricHead"
    case RedChintzHead = "Images/DonkeyHeads/RedChintzHead"
    case YellowChintzHead = "Images/DonkeyHeads/YellowChintzHead"
    case BlueChintzHead = "Images/DonkeyHeads/BlueChintzHead"
}

public enum DonkeyTail: String, CaseIterable {
    case PinkTail = "Images/DonkeyTails/PinkTail"
    case RedTail = "Images/DonkeyTails/RedTail"
    case BlueTail = "Images/DonkeyTails/BlueTail"
    case GreenTail = "Images/DonkeyTails/GreenTail"
    case OrangeTail = "Images/DonkeyTails/OrangeTail"
}

public enum DineHat: String, CaseIterable {
    case ClassicHat = "Images/DineHats/ClassicHat"
    case StrawHat = "Images/DineHats/StrawHat"
    case BlueChintzHat = "Images/DineHats/BlueChintzHat"
    case RedChintzHat = "Images/DineHats/RedChintzHat"
    case YellowChintzHat = "Images/DineHats/YellowChintzHat"
}

public enum Sticker: String, CaseIterable {
    case Dine = "Images/Stickers/Dine"
    case DrDeraldoPortela = "Images/Stickers/DrDeraldoPortela"
    case MotherMelania = "Images/Stickers/MotherMelania"
    case TomZe = "Images/Stickers/TomZe"
    case Trumpet = "Images/Stickers/Trumpet"
    case Tambourine = "Images/Stickers/Tambourine"
    case ClayPot = "Images/Stickers/ClayPot"
    case CambrainhaSign = "Images/Stickers/CambrainhaSign"
    case Sun = "Images/Stickers/Sun"
    case Beiju = "Images/Stickers/Beiju"
    case Pineapple = "Images/Stickers/Pineapple"
    case CajaFruit = "Images/Stickers/CajaFruit"
    case Coconut = "Images/Stickers/Coconut"
    case Peanut = "Images/Stickers/Peanut"
}

public enum ImageType {
    case part, texture, background, sticker
}

public enum PlaygroundScreen {
    case StartScreen
    case CustomizationScreen
    case PostcardScreen
}

public struct PlaygroundFonts {
    public let name: String
    public let titleLarge: Font
    public let titleSmall: Font
    public let header: Font
    public let subheader: Font
    public let text: Font
    public let tip: Font
    
    public init(fontName: String) {
        self.name = fontName
        self.titleLarge = Font.custom(fontName, size: 96)
        self.titleSmall = Font.custom(fontName, size: 48)
        self.header = Font.custom(fontName, size: 24)
        self.subheader = Font.custom(fontName, size: 16)
        self.text = Font.custom(fontName, size: 12)
        self.tip = Font.custom(fontName, size: 11)
    }
}

public struct PlaygroundColors {
    public let lightBlue = Color(red: 0.08235294371843338, green: 0.6313725709915161, blue: 1)
    public let darkBlue = Color(red: 0, green: 0.5434471964836121, blue: 0.9083333611488342)
    public let magenta = Color(red: 0.686274528503418, green: 0.1411764770746231, blue: 0.38823530077934265)
}
