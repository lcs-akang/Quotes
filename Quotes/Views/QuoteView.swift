//
//  QuoteView.swift
//  Quotes
//
//  Created by Aidan Kang on 2023-04-14.
//

import SwiftUI

struct QuoteView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("True silence is the rest of the mind; it is to the spirit what sleep is to the body, nourishment and refreshment.")
                    .font(.title2)
                    .multilineTextAlignment(.center)
            }
            .navigationTitle("Random Quotes")
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
