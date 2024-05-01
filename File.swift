
import SwiftUI
struct ButtonView: View {
    @State private var tableData = [
        "Row 1",
        "Row 2",
        "Row 3"
    ]
    var body: some View {
        VStack {
        List(tableData, id: \.self) { rowData in
                Text(rowData)
            }
            Button("Clear Table Data") {
            
                tableData = []
            }
            .padding()
        }
    }
}
