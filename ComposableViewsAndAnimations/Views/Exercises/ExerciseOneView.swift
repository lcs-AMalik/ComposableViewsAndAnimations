//
//  ExerciseOneView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI
import UIKit

struct ExerciseOneView: View {
    
    // MARK: Stored properties
    
    // Controls whether this view is showing or not
    @Binding var showThisView: Bool
    
    // Controls the size of the circle
    @State private var scaleFactor = 1.0
    
    // Controls the hue of the circle
    @State private var hue: Color = .black
    
    // Controls the size of the circle
    @State private var offsetx = 0.0
    @State var offsety = 0.0
    
    // MARK: Computed properties
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Circle()
                    .foregroundColor(hue)
                    .frame(width: 100, height: 100)
                    .scaleEffect(scaleFactor)
                    .offset(x: offsetx, y: offsety)
                    .animation(
                        Animation.easeInOut(duration: 2.0)
                    )
                    .onTapGesture {
                        // Move the circle to the right
                        
                        if scaleFactor > 0.2 {
                            // Reduce the size of the circle by a tenth
                            scaleFactor -= 0.1
                        } else {
                            // Make sure the button doesn't entirely disappear
                            scaleFactor = 1
                            // Change the color of the view to a random hue
                            hue = Color(hue: Double.random(in: 1...360) / 360.0,
                                        saturation: 0.8,
                                        brightness: 0.8)
                            
                            offsetx = 100.0
                            offsety = 100.0
                        }
                    }
            }
            .navigationTitle("Exercise 1")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Done") {
                        hideView()
                    }
                }
            }
        }
    }
    
    // MARK: Functions
    
    // Makes this view go away
    func hideView() {
        showThisView = false
    }
    
}

struct ExerciseOneView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseOneView(showThisView: .constant(true))
    }
}









////
////  CustomComposableView.swift
////  ComposableViewsAndAnimations
////
////  Created by Russell Gordon on 2021-02-24.
////
//
//import SwiftUI
//
//struct CustomComposableView: View {
//
//    // MARK: Stored properties
//
//    // Control the horizontal offset
//    @State private var xoffset = 0.0
//    @State private var yoffset = 0.0
//
//    @State var message: String
//
//    // Control the rotation angle
//    @State var currentRotationAngle = Angle.degrees(0)
//
//    // MARK: Computed properties
//    var body: some View {
//        ZStack {
//            Circle()
//                .frame(width: 50, height: 50)
//
//
//            Text(message)
//                .foregroundColor(.white)
//        }
//
//        .rotationEffect(currentRotationAngle, anchor: .center)
//        .offset(x: xoffset, y: 0)
//        //.animation(.default)
//        .animation(
//            Animation.easeInOut(duration: 2.0)
//            )
//        .onTapGesture {
//            // Move the circle to the right
//            xoffset = 100.0
//
//            // Rotate a full revolution
//            currentRotationAngle = .degrees(360)
//        }
//    }
//}
//
//struct CustomComposableView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomComposableView(message: "OOOH!")
//    }
//}
