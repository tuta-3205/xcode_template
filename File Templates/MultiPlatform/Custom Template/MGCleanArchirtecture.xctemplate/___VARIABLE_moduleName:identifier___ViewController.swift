//___FILEHEADER___

import UIKit
import Reusable
import SDWebImage
import RxSwift
import RxCocoa
import MGArchitecture

final class ___VARIABLE_moduleName:identifier___ViewController: UIViewController, Bindable {

    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties

    var viewModel: ___VARIABLE_moduleName:identifier___ViewModel!
    var disposeBag = DisposeBag()

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }

    deinit {
        logDeinit()
    }

    private func configView() {

    }

    func bindViewModel() {
        let input = ___VARIABLE_moduleName:identifier___ViewModel.Input(

        )
        
        let output = viewModel.transform(input, disposeBag: disposeBag)
        
    }
}

extension ___VARIABLE_moduleName:identifier___ViewController {

}

// MARK: - StoryboardSceneBased
extension ___VARIABLE_moduleName:identifier___ViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.
}