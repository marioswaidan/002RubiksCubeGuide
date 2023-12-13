import SwiftUI

struct Chapter5View: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Account Information")) {
                    HStack {
                        Text("Username:")
                        Spacer()
                        Text("JohnDoe123")
                            .foregroundColor(.gray)
                    }
                }
                
                Section(header: Text("Notification Settings")) {
                    Toggle("Receive Notifications", isOn: .constant(true))
                    Toggle("Email Notifications", isOn: .constant(false))
                }
                
                Section(header: Text("Privacy Settings")) {
                    Toggle("Private Account", isOn: .constant(false))
                }
                
                Section(header: Text("Sign Out")) {
                    Button(action: {
                        // Implement sign-out action (not implemented in this example)
                    }) {
                        Text("Sign Out")
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationBarTitle("Account Settings")
        }
    }
}

struct Chapter5View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter5View()
    }
}
