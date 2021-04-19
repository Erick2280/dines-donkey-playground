import Foundation
import SwiftUI

public struct DonkeyCanvas: View {
    @ObservedObject public var state = PlaygroundState.shared
    
    public init() {}

    public var body: some View {
        GeometryReader { metrics in
            Image(uiImage: state.selectedBackground)
                .resizable()
            
            ZStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: metrics.size.width * 0.4, height: metrics.size.height * 0.66)
                    Image(uiImage: state.selectedDonkeyLegsTexture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: metrics.size.width * 0.225)
                        .offset(x: metrics.size.width * 0.08, y: metrics.size.height * 0.2)
                    Image(uiImage: state.selectedDonkeyLegsTexture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: metrics.size.width * 0.225)
                        .offset(x: metrics.size.width * -0.05, y: metrics.size.height * 0.2)
                }.mask(DonkeyLegs())
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: metrics.size.width * 0.4, height: metrics.size.height * 0.66)
                    Image(uiImage: state.selectedDonkeyBodyTexture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: metrics.size.width * 0.35)
                        .offset(x: metrics.size.width * 0.01875)
                }.mask(DonkeyBody())

                Image(uiImage: state.selectedDonkeyHead)
                    .resizable()
                    .scaledToFit()
                    .frame(width: metrics.size.width * 0.075)
                    .offset(x: metrics.size.width * -0.16, y: metrics.size.height * -0.04)
                
                Image(uiImage: state.selectedDonkeyTail)
                    .resizable()
                    .scaledToFit()
                    .frame(width: metrics.size.width * 0.0215)
                    .offset(x: metrics.size.width * 0.19, y: metrics.size.height * 0.05)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: metrics.size.width * 0.4, height: metrics.size.height * 0.66)
                    Image(uiImage: state.selectedDineBodyTexture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: metrics.size.width * 0.225)
                        .offset(x: metrics.size.width * 0.0125, y: metrics.size.height * -0.05)
                }.mask(DineBody())
                
                Image(uiImage: UIImage(named: "Images/Miscellaneous/DetailsOverlay")!)
                    .resizable()
                
                Image(uiImage: state.selectedDineHat)
                    .resizable()
                    .scaledToFit()
                    .frame(width: metrics.size.width * 0.06)
                    .offset(x: metrics.size.width * -0.0175, y: metrics.size.height * -0.3075)

            }
            .frame(width: metrics.size.width * 0.3, height: metrics.size.height * 0.66)
            .offset(x: metrics.size.width * 0.475, y: metrics.size.height * 0.275)
        }
    }
}

public struct DonkeyLegs: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.25322*width, y: 0.58421*height))
        path.addCurve(to: CGPoint(x: 0.21276*width, y: 0.61684*height), control1: CGPoint(x: 0.23087*width, y: 0.58421*height), control2: CGPoint(x: 0.21276*width, y: 0.59882*height))
        path.addLine(to: CGPoint(x: 0.21276*width, y: 0.86316*height))
        path.addCurve(to: CGPoint(x: 0.25322*width, y: 0.89579*height), control1: CGPoint(x: 0.21276*width, y: 0.88118*height), control2: CGPoint(x: 0.23087*width, y: 0.89579*height))
        path.addCurve(to: CGPoint(x: 0.29368*width, y: 0.86316*height), control1: CGPoint(x: 0.27557*width, y: 0.89579*height), control2: CGPoint(x: 0.29368*width, y: 0.88118*height))
        path.addLine(to: CGPoint(x: 0.29368*width, y: 0.61684*height))
        path.addCurve(to: CGPoint(x: 0.25322*width, y: 0.58421*height), control1: CGPoint(x: 0.29368*width, y: 0.59882*height), control2: CGPoint(x: 0.27557*width, y: 0.58421*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.744*width, y: 0.58421*height))
        path.addCurve(to: CGPoint(x: 0.70354*width, y: 0.61684*height), control1: CGPoint(x: 0.72165*width, y: 0.58421*height), control2: CGPoint(x: 0.70354*width, y: 0.59882*height))
        path.addLine(to: CGPoint(x: 0.70354*width, y: 0.86316*height))
        path.addCurve(to: CGPoint(x: 0.744*width, y: 0.89579*height), control1: CGPoint(x: 0.70354*width, y: 0.88118*height), control2: CGPoint(x: 0.72165*width, y: 0.89579*height))
        path.addCurve(to: CGPoint(x: 0.78446*width, y: 0.86316*height), control1: CGPoint(x: 0.76635*width, y: 0.89579*height), control2: CGPoint(x: 0.78446*width, y: 0.88118*height))
        path.addLine(to: CGPoint(x: 0.78446*width, y: 0.61684*height))
        path.addCurve(to: CGPoint(x: 0.744*width, y: 0.58421*height), control1: CGPoint(x: 0.78446*width, y: 0.59882*height), control2: CGPoint(x: 0.76635*width, y: 0.58421*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.3472*width, y: 0.66105*height))
        path.addCurve(to: CGPoint(x: 0.38766*width, y: 0.62842*height), control1: CGPoint(x: 0.3472*width, y: 0.64303*height), control2: CGPoint(x: 0.36532*width, y: 0.62842*height))
        path.addCurve(to: CGPoint(x: 0.42813*width, y: 0.66105*height), control1: CGPoint(x: 0.41001*width, y: 0.62842*height), control2: CGPoint(x: 0.42813*width, y: 0.64303*height))
        path.addLine(to: CGPoint(x: 0.42813*width, y: 0.96632*height))
        path.addCurve(to: CGPoint(x: 0.38766*width, y: 0.99895*height), control1: CGPoint(x: 0.42813*width, y: 0.98434*height), control2: CGPoint(x: 0.41001*width, y: 0.99895*height))
        path.addCurve(to: CGPoint(x: 0.3472*width, y: 0.96632*height), control1: CGPoint(x: 0.36532*width, y: 0.99895*height), control2: CGPoint(x: 0.3472*width, y: 0.98434*height))
        path.addLine(to: CGPoint(x: 0.3472*width, y: 0.66105*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.87844*width, y: 0.62842*height))
        path.addCurve(to: CGPoint(x: 0.83798*width, y: 0.66105*height), control1: CGPoint(x: 0.85609*width, y: 0.62842*height), control2: CGPoint(x: 0.83798*width, y: 0.64303*height))
        path.addLine(to: CGPoint(x: 0.83798*width, y: 0.96632*height))
        path.addCurve(to: CGPoint(x: 0.87844*width, y: 0.99895*height), control1: CGPoint(x: 0.83798*width, y: 0.98434*height), control2: CGPoint(x: 0.85609*width, y: 0.99895*height))
        path.addCurve(to: CGPoint(x: 0.91891*width, y: 0.96632*height), control1: CGPoint(x: 0.90079*width, y: 0.99895*height), control2: CGPoint(x: 0.91891*width, y: 0.98434*height))
        path.addLine(to: CGPoint(x: 0.91891*width, y: 0.66105*height))
        path.addCurve(to: CGPoint(x: 0.87844*width, y: 0.62842*height), control1: CGPoint(x: 0.91891*width, y: 0.64303*height), control2: CGPoint(x: 0.90079*width, y: 0.62842*height))
        path.closeSubpath()
        return path
    }
}

public struct DonkeyBody: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.37069*width, y: 0.67895*height))
        path.addLine(to: CGPoint(x: 0.23364*width, y: 0.67895*height))
        path.addCurve(to: CGPoint(x: 0.13836*width, y: 0.6021*height), control1: CGPoint(x: 0.18102*width, y: 0.67895*height), control2: CGPoint(x: 0.13836*width, y: 0.64454*height))
        path.addLine(to: CGPoint(x: 0.13836*width, y: 0.49684*height))
        path.addCurve(to: CGPoint(x: 0.23364*width, y: 0.42*height), control1: CGPoint(x: 0.13836*width, y: 0.4544*height), control2: CGPoint(x: 0.18102*width, y: 0.42*height))
        path.addLine(to: CGPoint(x: 0.44239*width, y: 0.42*height))
        path.addCurve(to: CGPoint(x: 0.44248*width, y: 0.42*height), control1: CGPoint(x: 0.44242*width, y: 0.42*height), control2: CGPoint(x: 0.44245*width, y: 0.42*height))
        path.addLine(to: CGPoint(x: 0.87453*width, y: 0.42*height))
        path.addCurve(to: CGPoint(x: 0.96981*width, y: 0.49684*height), control1: CGPoint(x: 0.92715*width, y: 0.42*height), control2: CGPoint(x: 0.96981*width, y: 0.4544*height))
        path.addLine(to: CGPoint(x: 0.96981*width, y: 0.62842*height))
        path.addCurve(to: CGPoint(x: 0.87453*width, y: 0.70526*height), control1: CGPoint(x: 0.96981*width, y: 0.67086*height), control2: CGPoint(x: 0.92715*width, y: 0.70526*height))
        path.addLine(to: CGPoint(x: 0.44248*width, y: 0.70526*height))
        path.addCurve(to: CGPoint(x: 0.37069*width, y: 0.67895*height), control1: CGPoint(x: 0.41385*width, y: 0.70526*height), control2: CGPoint(x: 0.38816*width, y: 0.69507*height))
        path.closeSubpath()
        return path
    }
}

struct DineBody: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.37722*width, y: 0.23263*height))
        path.addCurve(to: CGPoint(x: 0.41377*width, y: 0.20316*height), control1: CGPoint(x: 0.37722*width, y: 0.21635*height), control2: CGPoint(x: 0.39358*width, y: 0.20316*height))
        path.addLine(to: CGPoint(x: 0.49208*width, y: 0.20316*height))
        path.addCurve(to: CGPoint(x: 0.52863*width, y: 0.23263*height), control1: CGPoint(x: 0.51227*width, y: 0.20316*height), control2: CGPoint(x: 0.52863*width, y: 0.21635*height))
        path.addLine(to: CGPoint(x: 0.52863*width, y: 0.41455*height))
        path.addCurve(to: CGPoint(x: 0.52863*width, y: 0.41691*height), control1: CGPoint(x: 0.52869*width, y: 0.41533*height), control2: CGPoint(x: 0.52869*width, y: 0.41612*height))
        path.addLine(to: CGPoint(x: 0.52863*width, y: 0.42*height))
        path.addLine(to: CGPoint(x: 0.52809*width, y: 0.42*height))
        path.addLine(to: CGPoint(x: 0.5051*width, y: 0.50736*height))
        path.addLine(to: CGPoint(x: 0.53284*width, y: 0.59633*height))
        path.addCurve(to: CGPoint(x: 0.53356*width, y: 0.60166*height), control1: CGPoint(x: 0.5334*width, y: 0.59811*height), control2: CGPoint(x: 0.53363*width, y: 0.59991*height))
        path.addCurve(to: CGPoint(x: 0.5456*width, y: 0.62105*height), control1: CGPoint(x: 0.54087*width, y: 0.60608*height), control2: CGPoint(x: 0.5456*width, y: 0.61312*height))
        path.addCurve(to: CGPoint(x: 0.51558*width, y: 0.64526*height), control1: CGPoint(x: 0.5456*width, y: 0.63442*height), control2: CGPoint(x: 0.53216*width, y: 0.64526*height))
        path.addCurve(to: CGPoint(x: 0.48556*width, y: 0.62105*height), control1: CGPoint(x: 0.499*width, y: 0.64526*height), control2: CGPoint(x: 0.48556*width, y: 0.63442*height))
        path.addCurve(to: CGPoint(x: 0.48839*width, y: 0.61078*height), control1: CGPoint(x: 0.48556*width, y: 0.61738*height), control2: CGPoint(x: 0.48657*width, y: 0.6139*height))
        path.addCurve(to: CGPoint(x: 0.48592*width, y: 0.60584*height), control1: CGPoint(x: 0.48731*width, y: 0.60927*height), control2: CGPoint(x: 0.48647*width, y: 0.60761*height))
        path.addLine(to: CGPoint(x: 0.45751*width, y: 0.51471*height))
        path.addCurve(to: CGPoint(x: 0.45711*width, y: 0.51318*height), control1: CGPoint(x: 0.45735*width, y: 0.5142*height), control2: CGPoint(x: 0.45722*width, y: 0.51369*height))
        path.addCurve(to: CGPoint(x: 0.45663*width, y: 0.5036*height), control1: CGPoint(x: 0.45599*width, y: 0.51016*height), control2: CGPoint(x: 0.45577*width, y: 0.50689*height))
        path.addLine(to: CGPoint(x: 0.47863*width, y: 0.42*height))
        path.addLine(to: CGPoint(x: 0.44248*width, y: 0.42*height))
        path.addLine(to: CGPoint(x: 0.44239*width, y: 0.42*height))
        path.addLine(to: CGPoint(x: 0.37722*width, y: 0.42*height))
        path.addLine(to: CGPoint(x: 0.37722*width, y: 0.23263*height))
        path.closeSubpath()
        return path
    }
}
