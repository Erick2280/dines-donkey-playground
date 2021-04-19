/*:
 
# Dinê's Donkey

 Welcome to Irará, a small town in northeastern Brazil. Despite the size, make no mistake! It is a land of people with big hearts.

 Every year, the traditional "Lavagem" festival takes place. There is a lot of music and dancing! To brighten up the festivities, Dinê will make a big donkey out of cloth! **Let's help Dinê decorate his donkey?**
 
 After you customize the donkey, you can create a postcard!
 
## Who's Dinê?
 One of the great names of the culture of Irará, **Antônio Cardoso** (popularly known as **Dinê**) was the creator of _Cambraínha_, the donkey made of fabric that cheers the popular festivities of the city. In 2009, Dinê received the **Master of Popular Culture** (_Mestre da Cultura Popular_) award from the Ministry of Culture of Brazil.
 
 Unfortunately, Dinê passed away earlier this year. It will always be in the history of the city and in our hearts.
 
## Who's Cambraínha?
 It's the name of Dinê's donkey. The name _Cambraínha_ comes from _cambric_, a type of fabric. Despite the name, the donkey is ornamented with various types of fabrics.
 
*/

import SwiftUI
import PlaygroundSupport

// MARK: Font importing
let fontUrl = Bundle.main.url(forResource: "Fonts/FredokaOne-Regular", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(fontUrl, CTFontManagerScope.process, nil)

// MARK: View configuring
struct GameView: View {
    @ObservedObject public var state = PlaygroundState.shared
    @State public var currentScreen: PlaygroundScreen = .StartScreen

    var body: some View {
        if (currentScreen == .StartScreen) {
            StartScreen(currentScreen: $currentScreen)
        }
        if (currentScreen == .CustomizationScreen) {
            CustomizationScreen(currentScreen: $currentScreen)
        }
        if (currentScreen == .PostcardScreen) {
            PostcardScreen(currentScreen: $currentScreen)
        }
    }
}

PlaygroundPage.current.setLiveView(
    GameView()
        .frame(width: 800, height: 600)
)
