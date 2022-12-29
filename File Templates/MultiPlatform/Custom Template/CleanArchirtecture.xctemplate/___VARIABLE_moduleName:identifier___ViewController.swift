//___FILEHEADER___

final class ___VARIABLE_moduleName:identifier___ViewController: BaseViewController, BindableType {

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

    static func instance(navigationController: UINavigationController) -> ___VARIABLE_moduleName:identifier___ViewController {
        let vc = ___VARIABLE_moduleName:identifier___ViewController.instantiate()
        let navigator = ___VARIABLE_moduleName:identifier___Navigator(navigationController: navigationController)
        let vm = ___VARIABLE_moduleName:identifier___ViewModel(navigator: navigator,
                                         repository: ___VARIABLE_moduleName:identifier___Repository())
        vc.bindViewModel(to: vm)
        return vc
    }
}