//
// Copyright (c) 2024, ___ORGANIZATIONNAME___ All rights reserved.
//
//

import UIKit

class ViewControllerA: UIViewController {
  // ビューコントローラーが解放される直前に呼び出されます。
  deinit {
    print("ViewControllerA deinit")

    // 通知センターからオブザーバを削除
    NotificationCenter.default.removeObserver(self)
  }

  override func loadView() {
    super.loadView()
    print("ViewControllerA loadView")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    print("ViewControllerA viewDidLoad")

    // 通知センターにオブザーバを登録
    NotificationCenter.default.addObserver(self, selector: #selector(handleDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(handleWillEnterForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(handleWillResignActive), name: UIApplication.willResignActiveNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(handleDidEnterBackground), name: UIApplication.didEnterBackgroundNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(handleWillTerminate), name: UIApplication.willTerminateNotification, object: nil)

    // Do any additional setup after loading the view.
    view.backgroundColor = .blue

    let button = UIButton(type: .system)
    button.setTitle("Go to B", for: .normal)
    button.addTarget(self, action: #selector(navigateToB), for: .touchUpInside)

    button.center = view.center
    button.sizeToFit()
    view.addSubview(button)
  }

  @objc func handleDidBecomeActive() {
    print("UIApplication.didBecomeActive")
  }

  @objc func handleWillEnterForeground() {
    print("UIApplication.willEnterForeground")
  }

  @objc func handleWillResignActive() {
    print("UIApplication.willResignActive")
  }

  @objc func handleDidEnterBackground() {
    print("UIApplication.didEnterBackground")
  }

  @objc func handleWillTerminate() {
    print("UIApplication.willTerminate")
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("ViewControllerA viewWillAppear")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("ViewControllerA viewDidAppear")
  }

  override func viewIsAppearing(_ animated: Bool) {
    super.viewIsAppearing(animated)
    print("ViewControllerA viewIsAppearing")
  }

  override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
    print("ViewControllerA viewWillTransition")
  }

  // ビューが画面から非表示になる直前に呼び出されます。
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("ViewControllerA viewWillDisappear")
  }

  // ビューが画面から非表示になった直後に呼び出されます。
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("ViewControllerA viewDidDisappear")
  }

  // サブビューのレイアウトを開始する直前に呼び出されます。
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    print("ViewControllerA viewWillLayoutSubviews")
  }

  // サブビューのレイアウトが完了した直後に呼び出されます。
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    print("ViewControllerA viewDidLayoutSubviews")
  }

  // メモリ警告が発生したときに呼び出されます。
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    print("ViewControllerA didReceiveMemoryWarning")
  }

  @objc func navigateToB() {
    let viewControllerB = ViewControllerB()
    print("ViewControllerA pushViewController to ViewControllerB")
    navigationController?.pushViewController(viewControllerB, animated: true)
  }
}
