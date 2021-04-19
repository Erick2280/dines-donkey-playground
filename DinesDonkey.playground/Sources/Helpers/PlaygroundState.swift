import Foundation
import SwiftUI

public class PlaygroundState: ObservableObject {
    static public let shared = PlaygroundState()
    
    @Published public var selectedBackground = UIImage(named: "Images/Backgrounds/MatrizChurch")!
    @Published public var selectedDonkeyBodyTexture = UIImage(named: "Images/Textures/YellowChintzFabric")!
    @Published public var selectedDonkeyLegsTexture = UIImage(named: "Images/Textures/RedChintzFabric")!
    @Published public var selectedDonkeyHead = UIImage(named: "Images/DonkeyHeads/MaroonHead")!
    @Published public var selectedDonkeyTail = UIImage(named: "Images/DonkeyTails/PinkTail")!
    @Published public var selectedDineBodyTexture = UIImage(named: "Images/Textures/RedChintzFabric")!
    @Published public var selectedDineHat = UIImage(named: "Images/DineHats/ClassicHat")!
    @Published public var selectedSticker = UIImage(named: "Images/Stickers/Dine")!
    
    @Published public var selectedBackgroundIdentifier = "Images/Backgrounds/MatrizChurch"
    @Published public var selectedDonkeyBodyTextureIdentifier = "Images/Textures/YellowChintzFabric"
    @Published public var selectedDonkeyLegsTextureIdentifier = "Images/Textures/RedChintzFabric"
    @Published public var selectedDonkeyHeadIdentifier = "Images/DonkeyHeads/MaroonHead"
    @Published public var selectedDonkeyTailIdentifier = "Images/DonkeyTails/PinkTail"
    @Published public var selectedDineBodyTextureIdentifier = "Images/Textures/RedChintzFabric"
    @Published public var selectedDineHatIdentifier = "Images/DineHats/ClassicHat"
    @Published public var selectedStickerIdentifier = "Images/Stickers/Dine"
        
    private init() {}
}
