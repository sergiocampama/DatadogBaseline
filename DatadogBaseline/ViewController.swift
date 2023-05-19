import UIKit

// This module is not imported in DatadogBaselineExpected because the target is not added in the Podfile
#if canImport(Datadog)
import Datadog
#endif

class ViewController: UIViewController {
  let label = UILabel()

  override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(label)

    label.backgroundColor = .red.withAlphaComponent(0.3)

    var attributedString = try! AttributedString(markdown: "BaselineTest")
    attributedString.baselineOffset = 100

    label.attributedText = NSAttributedString(attributedString)
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()

    label.frame.size = CGSize(width: 200, height: 200)
    label.center = view.center
  }
}
