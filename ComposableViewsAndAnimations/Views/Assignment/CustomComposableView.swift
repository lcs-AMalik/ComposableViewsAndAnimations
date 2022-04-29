//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    // MARK: Stored properties
    
    // Control the horizontal offset for first circle
    @State private var xoffset = 0.0
    @State private var yoffset = 0.0
    
    // Control the horizontal offset for second circle
    @State private var xoffset2 = 0.0
    @State private var yoffset2 = 0.0
    
    // Control the horizontal offset for third circle
    @State private var xoffset3 = 0.0
    @State private var yoffset3 = 0.0
    
    // Control the horizontal offset for fourth circle
    @State private var xoffset4 = 0.0
    @State private var yoffset4 = 0.0
    
    // Control the horizontal offset for fifth circle
    @State private var xoffset5 = 0.0
    @State private var yoffset5 = 0.0
    
    // Control the horizontal offset for sixth circle
    @State private var xoffset6 = 0.0
    @State private var yoffset6 = 0.0
    
    // Control the horizontal offset for seventh circle
    @State private var xoffset7 = 0.0
    @State private var yoffset7 = 0.0
    
    // Control the horizontal offset for eight circle
    @State private var xoffset8 = 0.0
    @State private var yoffset8 = 0.0
    
    // Trigger to start the animation
    let timer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    
    // Control the message written in the view
    @State var message: String
    
    // Controls whether this view is showing or not
    @Binding var showThisView: Bool
    
    // Controls the size of the circle
    @State private var scaleFactor = 1.0
    
    // MARK: Computed properties
    var body: some View {
        
        ZStack {
            // First circle
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleFactor)
                .offset(x: xoffset, y: yoffset)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                .onReceive(timer) {input in
                    // Move the circle to the right
                    xoffset = 150.0
                    yoffset = -150.0
                }
            
            // Second circle
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleFactor)
                .offset(x: xoffset2, y: yoffset2)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                .onReceive(timer) {input in
                    // Move the circle to the right
                    yoffset2 = -200.0
                    xoffset2 = 0.0
                }
            // Third circle
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleFactor)
                .offset(x: xoffset3, y: yoffset3)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                .onReceive(timer) {input in
                    // Move the circle to the right
                    xoffset3 = -150.0
                    yoffset3 = -150.0
                }
            // fourth circle
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleFactor)
                .offset(x: xoffset4, y: yoffset4)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                .onReceive(timer) {input in
                    // Move the circle to the right
                    xoffset4 = -200.0
                    yoffset4 = 0.0
                }
            // fifth circle
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleFactor)
                .offset(x: xoffset5, y: yoffset5)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                .onReceive(timer) {input in
                    // Move the circle to the right
                    xoffset5 = -150.0
                    yoffset5 = 150.0
                }
            // sixth circle
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleFactor)
                .offset(x: xoffset6, y: yoffset6)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                .onReceive(timer) {input in
                    // Move the circle to the right
                    yoffset6 = 200.0
                    xoffset6 = 0.0
                }
            // seventh circle
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleFactor)
                .offset(x: xoffset7, y: yoffset7)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                .onReceive(timer) {input in
                    // Move the circle to the right
                    xoffset7 = 150.0
                    yoffset7 = 150.0
                }
            // eighth circle
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleFactor)
                .offset(x: xoffset8, y: yoffset8)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true)
                )
                .onReceive(timer) {input in
                    // Move the circle to the right
                    xoffset8 = 200.0
                    yoffset8 = 0.0
                    
            }
            
            Text(message)
                .foregroundColor(.white)
            
        }
    }
    
    struct CustomComposableView_Previews: PreviewProvider {
        static var previews: some View {
            CustomComposableView(message: "OOOH!", showThisView: .constant(true))
        }
    }
}
