import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //Registering the custom CollectionViewCell
        let nibCell = UINib(nibName: "FootballCell", bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: "FootballCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FootballCell", for: indexPath) as! FootballCell
        
        
        cell.layer.borderWidth = 1
        
        cell.footballLabel.text = "Hello World"
        return cell
    }
    
    
}

