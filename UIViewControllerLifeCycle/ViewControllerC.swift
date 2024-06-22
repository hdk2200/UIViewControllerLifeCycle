//
// Copyright (c) 2024, ___ORGANIZATIONNAME___ All rights reserved.
//
//

import UIKit

class ViewControllerC: UIViewController {
  deinit {
    print("ViewControllerC deinit")
  }

  override func loadView() {
    super.loadView()
    print("ViewControllerC loadView")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .brown

    let button = UIButton(type: .system)
    button.setTitle("Back to B", for: .normal)
    button.addTarget(self, action: #selector(popToB), for: .touchUpInside)

    button.center = view.center
    button.sizeToFit()
    view.addSubview(button)

    let buttonToA = UIButton(type: .system)
    buttonToA.setTitle("Back to A", for: .normal)
    buttonToA.addTarget(self, action: #selector(backToA), for: .touchUpInside)
    buttonToA.center = CGPoint(x: view.center.x, y: view.center.y + 20)
    buttonToA.sizeToFit()
    view.addSubview(buttonToA)
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("ViewControllerC viewWillAppear")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("ViewControllerC viewDidAppear")
  }

  override func viewIsAppearing(_ animated: Bool) {
    super.viewIsAppearing(animated)
    print("ViewControllerC viewIsAppearing")
  }

  override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
    print("ViewControllerC viewWillTransition")
  }

  // ビューが画面から非表示になる直前に呼び出されます。
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("ViewControllerC viewWillDisappear")
  }

  // ビューが画面から非表示になった直後に呼び出されます。
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("ViewControllerC viewDidDisappear")
  }

  // サブビューのレイアウトを開始する直前に呼び出されます。
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    print("ViewControllerC viewWillLayoutSubviews")
  }

  // サブビューのレイアウトが完了した直後に呼び出されます。
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    print("ViewControllerC viewDidLayoutSubviews")
  }

  // メモリ警告が発生したときに呼び出されます。
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    print("ViewControllerB didReceiveMemoryWarning")
  }

  @objc func popToB() {
    print("ViewControllerC popViewController to ViewControllerB")
    navigationController?.popViewController(animated: true)
  }

  @objc func backToA() {
    if let viewControllers = navigationController?.viewControllers {
      for viewController in viewControllers {
        if viewController is ViewControllerA {
          navigationController?.popToViewController(viewController, animated: true)
          return
        }
      }
    }
  }
}
