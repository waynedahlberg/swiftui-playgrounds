import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.blue)
            .contextMenu {
                Button(action: {
                    // add an action here
                }) {
                    Text("Action 1")
                }
                Button(action: {
                    // add an action here
                }) {
                    Text("Action 2")
                }
                Button(action: {
                    // add an action here
                }) {
                    Text("Action 3")
                }
                Button(action: {
                    // add an action here
                }) {
                    Text("Action 4")
                }
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

