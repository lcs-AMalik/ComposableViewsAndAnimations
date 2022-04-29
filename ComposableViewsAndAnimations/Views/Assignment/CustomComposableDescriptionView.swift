//
//  CustomComposableDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CustomComposableDescriptionView: View {
    
    // MARK: Stored properties
    @State private var phrase: String = ""
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Group {
                
                Text("Moving Circles")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                Text("""
                    On tap this work of art will explode with circles in and out!

                    This view accepts a TEXT parameter below. Type anything in the input below!
                    """)
                
                TextField("Enter an input value", text: $phrase)
                
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: CustomComposableView(message: phrase, showThisView: .constant(true))) {
                    SimpleListItemView(title: "My Composable View",
                                       caption: "A brief description of my view")
                }
            }
            
        }
        .padding()
        .navigationTitle("My Composable View")
        
    }
}

struct CustomComposableDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomComposableDescriptionView()
        }
    }
}
