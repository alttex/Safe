import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet var symbolLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var rankLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
