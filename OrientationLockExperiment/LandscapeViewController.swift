import UIKit

final class LandscapeViewController: UIViewController {
    override var shouldAutorotate: Bool {
        true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        .landscape
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        let orientation = UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.windowScene?.interfaceOrientation
        switch orientation {
        case .some(.landscapeLeft): return .landscapeLeft
        case .some(.landscapeRight): return .landscapeRight
        case .some(_), .none: return .landscapeRight
        }
    }
}

extension LandscapeViewController {
    @IBAction private func dismissButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
