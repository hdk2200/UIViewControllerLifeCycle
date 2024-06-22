# ViewController Lifecycle Events with NavigationController

This document summarizes the lifecycle events observed when transitioning between ViewControllers (A, B, C) using a NavigationController in an iOS application.

## Launch

When the application is launched, the following events occur:

1. `didFinishLaunchingWithOptions`
2. `scene willConnectTo`
3. `sceneWillEnterForeground`
4. `ViewControllerA loadView`
5. `ViewControllerA viewDidLoad`
6. `ViewControllerA viewWillAppear`
7. `ViewControllerA viewIsAppearing`
8. `ViewControllerA viewWillLayoutSubviews`
9. `ViewControllerA viewDidLayoutSubviews`
10. `ViewControllerA viewWillLayoutSubviews`
11. `ViewControllerA viewDidLayoutSubviews`
12. `sceneDidBecomeActive`
13. `UIApplication.didBecomeActive`
14. `ViewControllerA viewDidAppear`

## ViewControllerA to ViewControllerB

When transitioning from ViewControllerA to ViewControllerB:

1. `ViewControllerB loadView`
2. `ViewControllerA viewWillDisappear`
3. `ViewControllerB viewWillAppear`
4. `ViewControllerB viewIsAppearing`
5. `ViewControllerB viewWillLayoutSubviews`
6. `ViewControllerB viewDidLayoutSubviews`
7. `ViewControllerA viewDidDisappear`
8. `ViewControllerB viewDidAppear`

## ViewControllerB to ViewControllerC

When transitioning from ViewControllerB to ViewControllerC:

1. `ViewControllerC loadView`
2. `ViewControllerB viewWillDisappear`
3. `ViewControllerC viewWillAppear`
4. `ViewControllerC viewIsAppearing`
5. `ViewControllerC viewWillLayoutSubviews`
6. `ViewControllerC viewDidLayoutSubviews`
7. `ViewControllerB viewDidDisappear`
8. `ViewControllerC viewDidAppear`

## ViewControllerC to ViewControllerB

When popping ViewControllerC to return to ViewControllerB:

1. `ViewControllerC viewWillDisappear`
2. `ViewControllerB viewWillAppear`
3. `ViewControllerB viewIsAppearing`
4. `ViewControllerC viewDidDisappear`
5. `ViewControllerB viewDidAppear`
6. `ViewControllerC deinit`

## ViewControllerB to ViewControllerA

When popping ViewControllerB to return to ViewControllerA:

1. `ViewControllerB viewWillDisappear`
2. `ViewControllerA viewWillAppear`
3. `ViewControllerA viewIsAppearing`
4. `ViewControllerB viewDidDisappear`
5. `ViewControllerA viewDidAppear`
6. `ViewControllerB deinit`

## Application Background and Foreground Transitions

### Going to Background (Switching to Another App)

1. `sceneWillResignActive`
2. `UIApplication.willResignActive`
3. `sceneDidEnterBackground`
4. `UIApplication.didEnterBackground`
5. `ViewControllerA viewWillLayoutSubviews` (twice)
6. `ViewControllerA viewDidLayoutSubviews` (twice)

### Returning to Foreground

1. `sceneWillEnterForeground`
2. `UIApplication.willEnterForeground`
3. `sceneDidBecomeActive`
4. `UIApplication.didBecomeActive`

## Additional Transitions

### ViewControllerA to ViewControllerB

1. `ViewControllerB loadView`
2. `ViewControllerA viewWillDisappear`
3. `ViewControllerB viewWillAppear`
4. `ViewControllerB viewIsAppearing`
5. `ViewControllerB viewWillLayoutSubviews`
6. `ViewControllerB viewDidLayoutSubviews`
7. `ViewControllerA viewDidDisappear`
8. `ViewControllerB viewDidAppear`

### ViewControllerB to ViewControllerC

1. `ViewControllerC loadView`
2. `ViewControllerB viewWillDisappear`
3. `ViewControllerC viewWillAppear`
4. `ViewControllerC viewIsAppearing`
5. `ViewControllerC viewWillLayoutSubviews`
6. `ViewControllerC viewDidLayoutSubviews`
7. `ViewControllerB viewDidDisappear`
8. `ViewControllerC viewDidAppear`

### ViewControllerC to ViewControllerA

1. `ViewControllerC viewWillDisappear`
2. `ViewControllerA viewWillAppear`
3. `ViewControllerA viewIsAppearing`
4. `ViewControllerB deinit`
5. `ViewControllerC viewDidDisappear`
6. `ViewControllerA viewDidAppear`
7. `ViewControllerC deinit`
