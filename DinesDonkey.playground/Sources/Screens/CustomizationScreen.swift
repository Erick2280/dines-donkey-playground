import Foundation
import SwiftUI

public struct CustomizationScreen: View {
    @State public var showSelectionSidebar: Bool = true
    @Binding public var currentScreen: PlaygroundScreen
    
    public init(currentScreen: Binding<PlaygroundScreen>) {
        self._currentScreen = currentScreen
    }
    
    public var body: some View {
        GeometryReader { metrics in
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                DonkeyCanvas()
                    .frame(width: metrics.size.width, height: metrics.size.height)
                    .zIndex(0)

                if (showSelectionSidebar) {
                    Rectangle()
                        .foregroundColor(.gray)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .frame(width: metrics.size.width * 0.30, height: metrics.size.height)
                        .transition(.move(edge: .leading))
                        .animation(.easeInOut)
                        .zIndex(1)

                    SelectionSidebar()
                        .frame(width: metrics.size.width * 0.30)
                        .transition(.move(edge: .leading))
                        .animation(.easeInOut)
                        .zIndex(2)
                }
                
                Button(action: {
                    withAnimation {
                        showSelectionSidebar.toggle()
                    }
                }) {
                    Text(showSelectionSidebar ? "Preview" : "Continue customizing")
                        .font(PlaygroundResources.shared.fonts.text)
                        .padding(8)
                        .background(Color.white)
                        .cornerRadius(40)
                        .foregroundColor(PlaygroundResources.shared.colors.magenta)
                        .shadow(radius: 4)
                }
                .offset(x: showSelectionSidebar ? metrics.size.width * 0.2 : metrics.size.width * 0.025, y: -metrics.size.height * 0.445)
                .transition(.opacity)
                .animation(.easeInOut)
                .zIndex(3)
                
                Button(action: {
                    currentScreen = .PostcardScreen
                }) {
                    Text("Create Postcard")
                        .font(PlaygroundResources.shared.fonts.text)
                        .padding(8)
                        .background(Color.white)
                        .cornerRadius(40)
                        .foregroundColor(PlaygroundResources.shared.colors.magenta)
                        .shadow(radius: 4)
                }
                .offset(x: metrics.size.width * 0.8, y: metrics.size.height * 0.445)
                .zIndex(4)

            }
        }
    }
}
