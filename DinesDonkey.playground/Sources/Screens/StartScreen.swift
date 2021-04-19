import Foundation
import SwiftUI

public struct StartScreen: View {
    @Binding public var currentScreen: PlaygroundScreen
    @State public var currentImage: UIImage = UIImage(named: "Images/DonkeyHeads/MaroonHead")!
    @State public var currentIndex = 0
    @State public var isAnimating = false
    
    let timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    
    public init(currentScreen: Binding<PlaygroundScreen>) {
        self._currentScreen = currentScreen
    }
    
    public var body: some View {
        GeometryReader { metrics in
            ZStack {
                Image(uiImage: UIImage(named: "Images/Miscellaneous/StartScreenBackground")!)
                    .resizable()
                    .scaledToFit()

                Image(uiImage: UIImage(named: "Images/Miscellaneous/StartScreenLeg")!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: metrics.size.height * 0.175)
                    .offset(x: -metrics.size.width * 0.325, y: self.isAnimating ? metrics.size.height * 0.2 : metrics.size.height * 0.225)
                    .animation(Animation.linear(duration: 0.65).repeatForever())
                    .onAppear {
                        self.isAnimating = true
                    }

                Image(uiImage: UIImage(named: "Images/Miscellaneous/StartScreenLeg")!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: metrics.size.height * 0.175)
                    .offset(x: -metrics.size.width * 0.275, y: self.isAnimating ? metrics.size.height * 0.225 : metrics.size.height * 0.2)
                    .animation(Animation.linear(duration: 0.65).repeatForever())
                    .onAppear {
                        self.isAnimating = true
                    }
                
                Image(uiImage: UIImage(named: "Images/Textures/BlueChintzFabric")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: metrics.size.width * 0.125, height: metrics.size.height * 0.18)
                    .mask(RoundedRectangle(cornerRadius: 32))
                    .offset(x: -metrics.size.width * 0.3, y: metrics.size.height * 0.1)
                
                Image(uiImage: currentImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: metrics.size.width * 0.08)
                    .offset(x: -metrics.size.width * 0.3, y: -12)
                    .onReceive(timer) { _ in
                        currentIndex = currentIndex + 1

                        if (currentIndex >= DonkeyHead.allCases.count - 1) {
                            currentIndex = 0
                        }
                        
                        currentImage = UIImage(named: DonkeyHead.allCases[currentIndex].rawValue)!
                    }
                
                VStack(alignment: .leading) {
                    Text("Dinê's")
                        .font(PlaygroundResources.shared.fonts.titleSmall)
                        .foregroundColor(Color.white)
                    Text("Donkey")
                        .font(PlaygroundResources.shared.fonts.titleLarge)
                        .foregroundColor(Color.white)
                        .offset(y: -12)
                }
                .offset(x: metrics.size.width * 0.05)
                
                Button(action: {
                    currentScreen = .CustomizationScreen
                }) {
                    Text("Play")
                        .font(PlaygroundResources.shared.fonts.header)
                        .padding()
                        .padding(.horizontal, 64)
                        .background(Color.white)
                        .cornerRadius(40)
                        .foregroundColor(PlaygroundResources.shared.colors.magenta)
                        .shadow(radius: 4)
                }
                .position(x: metrics.size.width * 0.5, y: metrics.size.height * 0.85)
            }
        }
    }
}
