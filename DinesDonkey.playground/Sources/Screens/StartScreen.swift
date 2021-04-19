import Foundation
import SwiftUI

public struct StartScreen: View {
    @Binding public var currentScreen: PlaygroundScreen
    @State public var currentImage: UIImage = UIImage(named: "Images/DonkeyHeads/MaroonHead")!
    @State public var currentIndex = 0
    
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

                Image(uiImage: currentImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: metrics.size.width * 0.1)
                    .offset(x: -metrics.size.width * 0.3)
                    .onReceive(timer) { _ in
                        currentIndex = currentIndex + 1
                        
                        if (currentIndex >= DonkeyHead.allCases.count) {
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
