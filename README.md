# RealityKitSwiftUITest

Sample project to test the memory impact of opening and closing a RealityView inside a View.

Just a simple 

```swift
struct RootView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                Text("Main View")

                NavigationLink("Open AR") {
                    ARContentView()
                }

                Spacer()
            }
        }
    }
}
```
that allows us to go back from the `RealityView` in `ARContentView`
