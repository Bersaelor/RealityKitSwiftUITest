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
This is just the default Xcode template for a new AR app using RealityKit, with the `ContentView` moved into a Navigationstack.

Now I check the memory usage  in `Debug` and `Release` config:

Opening app, the app uses `< 20MB` of memory.
Tapping on `Open AR` the memory usage goes up to ~700MB for the AR Scene.
Tapping back, the memory stays up at ~700MB.

Checking with `Debug memory graph` I can still see all the RealityKit classes in the memory, like `ARView`, `ARRenderView`, `ARSessionManager`

There aren't any leaks, as we can open/reopen the `ARContentView` many times without scaling the apps memory usage up.
But to keep memory pressure on the system low, there should be a way of freeing all the memory the AR uses for apps that only occasionally show AR scenes.
