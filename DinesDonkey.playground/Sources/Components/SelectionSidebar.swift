import Foundation
import SwiftUI

public struct SelectionSidebar: View {
    @ObservedObject public var state = PlaygroundState.shared
    
    public init() {}

    public var body: some View {
        ZStack {
            PlaygroundResources.shared.colors.magenta

            ScrollView {
                VStack(alignment: .leading) {
                    Text("Customize")
                        .padding()
                        .font(PlaygroundResources.shared.fonts.header)
                    
                    Group {
                        Text("CAMBRAÍNHA THE DONKEY")
                            .tracking(2)
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                        
                        Text("Body")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(Texture.allCases, id: \.self) { element in
                                    SelectionButton(action: {
                                        PlaygroundState.shared.selectedDonkeyBodyTexture = UIImage(named: element.rawValue)!
                                        PlaygroundState.shared.selectedDonkeyBodyTextureIdentifier = element.rawValue
                                    }, imagePath: element.rawValue, currentImagePath: state.selectedDonkeyBodyTextureIdentifier, imageType: .texture)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            .padding(.top, 4)
                        }
                        
                        Text("Legs")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(Texture.allCases, id: \.self) { element in
                                    SelectionButton(action: {
                                        PlaygroundState.shared.selectedDonkeyLegsTexture = UIImage(named: element.rawValue)!
                                        PlaygroundState.shared.selectedDonkeyLegsTextureIdentifier = element.rawValue
                                    }, imagePath: element.rawValue, currentImagePath: state.selectedDonkeyLegsTextureIdentifier, imageType: .texture)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            .padding(.top, 4)
                        }
                        
                        Text("Head")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(DonkeyHead.allCases, id: \.self) { element in
                                    SelectionButton(action: {
                                        PlaygroundState.shared.selectedDonkeyHead = UIImage(named: element.rawValue)!
                                        PlaygroundState.shared.selectedDonkeyHeadIdentifier = element.rawValue
                                    }, imagePath: element.rawValue, currentImagePath: state.selectedDonkeyHeadIdentifier, imageType: .part)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            .padding(.top, 4)
                        }

                        Text("Tail")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(DonkeyTail.allCases, id: \.self) { element in
                                    SelectionButton(action: {
                                        PlaygroundState.shared.selectedDonkeyTail = UIImage(named: element.rawValue)!
                                        PlaygroundState.shared.selectedDonkeyTailIdentifier = element.rawValue
                                    }, imagePath: element.rawValue, currentImagePath: state.selectedDonkeyTailIdentifier, imageType: .part)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            .padding(.top, 4)
                        }
                        
                    }
                    
                    Group {
                        Text("DINÊ")
                            .tracking(2)
                            .padding(.horizontal)
                            .padding(.bottom, 4)
                        
                        Text("Hat")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(DineHat.allCases, id: \.self) { element in
                                    SelectionButton(action: {
                                        PlaygroundState.shared.selectedDineHat = UIImage(named: element.rawValue)!
                                        PlaygroundState.shared.selectedDineHatIdentifier = element.rawValue
                                    }, imagePath: element.rawValue, currentImagePath: state.selectedDineHatIdentifier, imageType: .part)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            .padding(.top, 4)
                        }
                        
                        Text("Body")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(Texture.allCases, id: \.self) { element in
                                    SelectionButton(action: {
                                        PlaygroundState.shared.selectedDineBodyTexture = UIImage(named: element.rawValue)!
                                        PlaygroundState.shared.selectedDineBodyTextureIdentifier = element.rawValue
                                    }, imagePath: element.rawValue, currentImagePath: state.selectedDineBodyTextureIdentifier, imageType: .texture)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            .padding(.top, 4)
                        }
                    }
                    
                    Group {
                        Text("BACKGROUND")
                            .tracking(2)
                            .padding(.horizontal)
                            .padding(.vertical, 4)

                        Text("City Landmark")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(Background.allCases, id: \.self) { element in
                                    SelectionButton(action: {
                                        PlaygroundState.shared.selectedBackground = UIImage(named: element.rawValue)!
                                        PlaygroundState.shared.selectedBackgroundIdentifier = element.rawValue
                                    }, imagePath: element.rawValue, currentImagePath: state.selectedBackgroundIdentifier, imageType: .background)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            .padding(.top, 4)
                        }
                        
                        Text("Sticker")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding(.horizontal)

                        Text("The sticker will be used to stamp the postcard in the next page. Tap the question mark button on the element to view more information about it.")
                            .font(PlaygroundResources.shared.fonts.tip)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(Sticker.allCases, id: \.self) { element in
                                    SelectionButton(action: {
                                        PlaygroundState.shared.selectedSticker = UIImage(named: element.rawValue)!
                                        PlaygroundState.shared.selectedStickerIdentifier = element.rawValue
                                    }, imagePath: element.rawValue, currentImagePath: state.selectedStickerIdentifier, imageType: .sticker, helpTitle: PlaygroundResources.shared.stickerTitle[element], helpText: PlaygroundResources.shared.stickerInfo[element])
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            .padding(.top, 4)
                        }

                    }

                }
                .foregroundColor(.white)
                .font(PlaygroundResources.shared.fonts.text)
                .multilineTextAlignment(.leading)
            }
        }
    }
}
