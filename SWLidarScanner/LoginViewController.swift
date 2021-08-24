import UIKit

class LoginViewController: UIViewController {

    @IBAction func clickLoginButton(_ sender: Any) {
        print("Clicked login...")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyboard.instantiateViewController(withIdentifier: "yourOrders")
        self.present(newViewController, animated: true, completion: nil)
    }
    
}
