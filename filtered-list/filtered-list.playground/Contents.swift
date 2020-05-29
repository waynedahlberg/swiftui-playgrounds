import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State private var query: String = ""
    
    /// 1. Create list data
    private var listElements: [String] = [
        "Tools",
        "House",
        "Food",
        "Furniture"
    ]
    
    var body: some View {
        List {
            HStack {
                TextField("Search", text: $query)
                .padding()
            }
            .background(Color(red: 0.7, green: 0.7, blue: 0.7))
        .cornerRadius(10)
        .padding(.horizontal, 18)
            
        /// 2. Iterate over all list elements
            ForEach(listElements.filter { element in
                /// 3. filter the elements down according to the given query string
                element.lowercased().contains(self.query.lowercased()) || query == ""
            }, id: \.self) {
                Text($0)
            }
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

