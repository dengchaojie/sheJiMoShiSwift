import UIKit
import Foundation

//https://mp.weixin.qq.com/s/HLsG98HnOqn_Ygn-kZhzAA


struct Employee {
    let id: String
}

struct SubEmployee {
    let id: String
}

class CompanyManager {
    func getAllEmployee() -> [Employee] {
        
        return (0...3).map { (i) -> Employee in
            return Employee.init(id: "总公司\(i)")
        }
    }
    
    func printIdOfAllEmployee(sub: SubCompany) {
        sub.printIdOfAllEmployee()
        let list = self.getAllEmployee()
        for item in list {
            print(item.id)
        }
    }
}

class SubCompany {
    func getAllEmployee() -> [SubEmployee] {
        
        return (0...2).map { (i) -> SubEmployee in
            return SubEmployee.init(id: "分公司\(i)")
        }
    }
    
    func printIdOfAllEmployee() {
        
        let list = self.getAllEmployee()
        for item in list {
            print(item.id)
        }
    }
}


let company = CompanyManager.init()
company.printIdOfAllEmployee(sub: SubCompany.init())

