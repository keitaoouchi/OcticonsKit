import UIKit
import OcticonsKit

class OcticonsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Octicons.tuples.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OcticonTableViewCell", for: indexPath)
        if let cell = cell as? OcticonTableViewCell {
            let tuple = Octicons.tuples[indexPath.row]
            cell.codeLabel.text = tuple.0
            cell.octiconFontLabel.font = UIFont.octicon(of: 24)
            cell.octiconFontLabel.text = String.octicon(with: tuple.1)
            cell.octiconFontImageView.image = UIImage.octicon(with: tuple.1, textColor: UIColor.purple, size: CGSize(width: 24, height: 24))
        }
        return cell
    }

}
