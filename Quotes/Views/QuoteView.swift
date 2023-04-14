//
//  QuoteView.swift
//  Quotes
//
//  Created by Aidan Kang on 2023-04-14.
//

import SwiftUI

struct QuoteView: View {
    
    // MARK: Stored properties
    
    @State var currentQuote: Quote?
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                
                
                if let currentQuote {
                    
                    Text(currentQuote.text)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                    Text("- \(currentQuote.author)")
                        .font(.title3)
                        .padding()
                    
                } else {
                    ProgressView()
                }
                
                
            }
            .padding()
            .navigationTitle("Random Quotes")
        }
        .task {
            currentQuote = await NetworkService.fetch()
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
