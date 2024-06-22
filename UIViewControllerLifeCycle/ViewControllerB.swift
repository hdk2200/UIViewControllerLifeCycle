//
// Copyright (c) 2024, ___ORGANIZATIONNAME___ All rights reserved.
//
//

import UIKit

class ViewControllerB: UIViewController {
  deinit {
    print("ViewControllerB deinit")
  }

  override func loadView() {
    super.loadView()
    print("ViewControllerB loadView")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .green

    let button = UIButton(type: .system)
    button.setTitle("Back to A", for: .normal)
    button.addTarget(self, action: #selector(popToA), for: .touchUpInside)

    button.center = view.center
    button.sizeToFit()
    view.addSubview(button)

    let buttonToC = UIButton(type: .system)
    buttonToC.setTitle("Go to C", for: .normal)
    buttonToC.addTarget(self, action: #selector(navigateToC), for: .touchUpInside)

    buttonToC.center = CGPoint(x: view.center.x, y: view.center.y + 20)
    buttonToC.sizeToFit()
    view.addSubview(buttonToC)
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("ViewControllerB viewWillAppear")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("ViewControllerB viewDidAppear")
  }

  override func viewIsAppearing(_ animated: Bool) {
    super.viewIsAppearing(animated)
    print("ViewControllerB viewIsAppearing")
  }

  override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
    print("ViewControllerB viewWillTransition")
  }

  // ビューが画面から非表示になる直前に呼び出されます。
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("ViewControllerB viewWillDisappear")
  }

  // ビューが画面から非表示になった直後に呼び出されます。
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("ViewControllerB viewDidDisappear")
  }

  // サブビューのレイアウトを開始する直前に呼び出されます。
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    print("ViewControllerB viewWillLayoutSubviews")
  }

  // サブビューのレイアウトが完了した直後に呼び出されます。
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    print("ViewControllerB viewDidLayoutSubviews")
  }

  // メモリ警告が発生したときに呼び出されます。
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    print("ViewControllerB didReceiveMemoryWarning")
  }

  @objc func popToA() {
    print("ViewControllerB popViewController to ViewControllerA")

    navigationController?.popViewController(animated: true)
  }

  @objc func navigateToC() {
    let viewControllerC = ViewControllerC()
    print("ViewControllerA pushViewControllerB to ViewControllerC")
    navigationController?.pushViewController(viewControllerC, animated: true)
  }
}
