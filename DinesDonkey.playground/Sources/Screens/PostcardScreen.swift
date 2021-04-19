import Foundation
import SwiftUI

public struct PostcardScreen: View {
    @Binding public var currentScreen: PlaygroundScreen
    @ObservedObject public var state = PlaygroundState.shared
    
    public init(currentScreen: Binding<PlaygroundScreen>) {
        self._currentScreen = currentScreen
    }
    
    public var body: some View {
        GeometryReader { metrics in
            ZStack(alignment: Alignment(horizontal: .center, vertical: .center)){
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [PlaygroundResources.shared.colors.lightBlue, PlaygroundResources.shared.colors.darkBlue]), startPoint: .top, endPoint: .bottom))
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: metrics.size.width * 0.75, height: metrics.size.height * 0.75)
                    .shadow(radius: 4)
                    .offset(y: -metrics.size.height * 0.05)
                
                DonkeyCanvas()
                    .frame(width: metrics.size.width * 0.7, height: metrics.size.height * 0.7)
                    .offset(y: -metrics.size.height * 0.05)
                
                Image(uiImage: state.selectedSticker)
                    .resizable()
                    .scaledToFit()
                    .frame(width: metrics.size.width * 0.225)
                    .rotationEffect(.degrees(-15))
                    .offset(x: -metrics.size.width * 0.375, y: -metrics.size.height * 0.35)
                
                Text("\"Here it comes Dinê, with his little donkey!\"")
                    .font(PlaygroundResources.shared.fonts.subheader)
                    .foregroundColor(Color.white)
                    .offset(x: -metrics.size.width * 0.17, y: metrics.size.height * 0.4)
                
                Button(action: {
                    currentScreen = .CustomizationScreen
                }) {
                    Text("Try again")
                        .font(PlaygroundResources.shared.fonts.subheader)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(40)
                        .foregroundColor(PlaygroundResources.shared.colors.magenta)
                        .shadow(radius: 4)
                }
                .position(x: metrics.size.width * 0.81, y: metrics.size.height * 0.9)
            }
        }
    }
}
