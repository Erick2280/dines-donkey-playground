import Foundation
import SwiftUI

public struct SelectionButton: View {
    public var action: (() -> Void)
    public var imagePath: String
    public var currentImagePath: String
    public var helpTitle: String?
    public var helpText: String?
    public var imageType: ImageType
    public var imageSize: CGFloat
    public var checkmarkXOffset: CGFloat
    public var fillWithImage: Bool
    @State var showInfo: Bool = false
    
    public init(action: @escaping (() -> Void), imagePath: String, currentImagePath: String, imageType: ImageType, helpTitle: String? = nil, helpText: String? = nil) {
        self.action = action
        self.imagePath = imagePath
        self.currentImagePath = currentImagePath
        self.helpTitle = helpTitle
        self.helpText = helpText
        self.imageType = imageType
        
        if (imageType == .sticker) {
            imageSize = 72
        } else {
            imageSize = 40
        }
        
        if (imageType == .texture || imageType == .background) {
            self.fillWithImage = true
        } else {
            self.fillWithImage = false
        }
        
        if (imageType == .background) {
            checkmarkXOffset = 38
        } else {
            checkmarkXOffset = 24
        }
    }
    
    public var body: some View {
        Button(action: action) {
            ZStack {
                if (!fillWithImage) {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(RadialGradient(gradient: Gradient(colors: [.white, .gray]), center: .center, startRadius: 0, endRadius: 100))
                        .frame(width: 80, height: 80)
                        .shadow(radius: 2)
                }

                if (fillWithImage) {
                    Image(uiImage: UIImage(named: imagePath)!)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                        .mask(RoundedRectangle(cornerRadius: 16))
                        .shadow(radius: 2)
                }
            
                if (!fillWithImage) {
                    Image(uiImage: UIImage(named: imagePath)!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: imageSize, height: imageSize)
                }
                
                if (helpText != nil) {
                    Button(action: {
                        showInfo = true
                    }) {
                        ZStack {
                            Circle()
                                .foregroundColor(.white)
                                .shadow(radius: 2)
                            
                            Image(systemName: "questionmark.circle.fill")
                                .foregroundColor(PlaygroundResources.shared.colors.magenta)
                        }
                    }
                    .position(x: -checkmarkXOffset + 8, y: -16)
                    .frame(width: 16, height: 16)

                }
                
                if (currentImagePath == imagePath) {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 16, height: 16)
                        .offset(x: checkmarkXOffset, y: -24)
                        .shadow(radius: 2)
                    
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(PlaygroundResources.shared.colors.magenta)
                        .offset(x: checkmarkXOffset, y: -24)
                }
            }.sheet(isPresented: $showInfo) {
                ZStack {
                    Button(action: {
                        showInfo = false
                    }) {
                        Text("Back")
                            .font(PlaygroundResources.shared.fonts.subheader)
                            .padding()
                            .background(PlaygroundResources.shared.colors.magenta)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .position(x: 60, y: 50)
                    }
                    HStack {
                        Image(uiImage: UIImage(named: imagePath)!)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .shadow(radius: 8)
                        VStack(alignment: .leading) {
                            Text(helpTitle != nil ? helpTitle! : "")
                                .font(PlaygroundResources.shared.fonts.header)
                                .foregroundColor(PlaygroundResources.shared.colors.magenta)
                                .multilineTextAlignment(.leading)
                                .padding(4)
                            Text(helpText != nil ? helpText! : "")
                                .font(PlaygroundResources.shared.fonts.subheader)
                                .foregroundColor(PlaygroundResources.shared.colors.magenta)
                                .multilineTextAlignment(.leading)
                                .padding(4)
                        }.padding(.horizontal)
                    }

                }
            }
        }

    }
}

