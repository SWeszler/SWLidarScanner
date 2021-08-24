import UIKit

struct MenuItem {
    let title: String
    let description: String
    let prefix: String
    
    func viewController() -> UIViewController {
        let storyboard = UIStoryboard(name: prefix, bundle: nil)
        let vc = storyboard.instantiateInitialViewController()!
        vc.title = title

        return vc
    }
}

class MenuViewModel {
    private let dataSource = [
        MenuItem (
            title: "CW-10000",
            description: "Start scanning your sofa.",
            prefix: "Export"
        )
    ]
    
    var count: Int {
        dataSource.count
    }
    
    func item(row: Int) -> MenuItem {
        dataSource[row]
    }
    
    func viewController(row: Int) -> UIViewController {
        dataSource[row].viewController()
    }
}
