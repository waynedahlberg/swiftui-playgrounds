import SwiftUI
import PlaygroundSupport

struct ActionSheetView: View {
    @State private var showActionSheet: Bool = false
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("My action sheet"),
                    message: Text("This is a message for the action sheet."),
                    buttons: [
            .default(Text("OK")),
            .destructive(Text("Cancel"))
        ])
    }
    
    var body: some View {
        Button(action: {
            self.showActionSheet.toggle()
        }) {
            Text("Content View")
        }
        .actionSheet(isPresented: self.$showActionSheet) {
            self.actionSheet
        }
    }
}

PlaygroundPage.current.setLiveView(ActionSheetView())

