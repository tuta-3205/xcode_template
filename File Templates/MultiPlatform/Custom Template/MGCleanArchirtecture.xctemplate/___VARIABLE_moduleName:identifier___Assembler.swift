//___FILEHEADER___

import UIKit
import Reusable

protocol ___VARIABLE_moduleName:identifier___Assembler {
    func resolve(navigationController: UINavigationController) -> ___VARIABLE_moduleName:identifier___ViewController
    func resolve(navigationController: UINavigationController) -> ___VARIABLE_moduleName:identifier___ViewModel
    func resolve(navigationController: UINavigationController) -> ___VARIABLE_moduleName:identifier___NavigatorType
    func resolve() -> ___VARIABLE_moduleName:identifier___UseCaseType
}

extension ReposAssembler {
    func resolve(navigationController: UINavigationController) -> ___VARIABLE_moduleName:identifier___ViewController {
        let vc = ___VARIABLE_moduleName:identifier___ViewController.instantiate()
        let vm: ReposViewModel = resolve(navigationController: navigationController)
        vc.bindViewModel(to: vm)
        return vc
    }
    
    func resolve(navigationController: UINavigationController) -> ___VARIABLE_moduleName:identifier___ViewModel {
        return ReposViewModel(navigator: resolve(navigationController: navigationController),
                              useCase: resolve())
    }
}

extension ___VARIABLE_moduleName:identifier___Assembler where Self: DefaultAssembler {
    func resolve() -> ___VARIABLE_moduleName:identifier___UseCaseType {
        return ___VARIABLE_moduleName:identifier___UseCase(repoGateway: resolve())
    }
    
    func resolve(navigationController: UINavigationController) -> ___VARIABLE_moduleName:identifier___NavigatorType {
        return ___VARIABLE_moduleName:identifier___Navigator(assembler: self, navigationController: navigationController)
    }
}
