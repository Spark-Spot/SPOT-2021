import Foundation
import Alamofire

struct Note: Decodable {
    var building_code: String
    var building_desc: String
    var building_floor: String
    var building_name: String
    var density_cnt: int
    var capacity: int
    var dc_ratio: float
}

class APIFunctions{
    var delegates: DataDelegates?
    static let functions = APIFunctions()

    func fetchAllLocinfo(_ params: [String : String], handler: @escaping(Bool) -> Void) {
        let url = "http://localhost3000/getbuildingdensity/:buildingCode"
        AF.request(url, method: .post, parameters: params)
        .validate()
        .responseJSON{ response in
            if response.result.isSuccess {
                print(response.data)
                let data = String(data: response.data!, encoding: .utf8)
                self.delegate?.updateArray(newArray.data)
                return handler(true)
            }
            return handler(false)
        }
    }

    func fetchBuildingFloorinfo(_ params: [String : String], handler: @escaping(Bool) -> Void) {
        let url = "http://localhost3000/getbuildingdensity/:buildingCode"
        AF.request(url, method: .post, parameters: params)
        .validate()
        .responseJSON{ response in
            if response.result.isSuccess {
                print(response.data)
                let data = String(data: response.data!, encoding: .utf8)
                self.delegate?.updateArray(newArray.data)
                return handler(true)
            }
            return handler(false)
        }
    }

    func rankbydensity(_ params: [String : String], handler: @escaping(Bool) -> Void) {
        let url = "http://localhost3000/getbuildingdensity/:buildingCode"
        AF.request(url, method: .post, parameters: params)
        .validate()
        .responseJSON{ response in
            if response.result.isSuccess {
                print(response.data)
                let data = String(data: response.data!, encoding: .utf8)
                self.delegate?.updateArray(newArray.data)
                return handler(true)
            }
            return handler(false)
        }
    }

    func fetchBuildinginfo(_ params: [String : String], handler: @escaping(Bool) -> Void) {
        let url = "http://localhost3000/getbuildingdensity/:buildingCode"
        AF.request(url, method: .post, parameters: params)
        .validate()
        .responseJSON{ response in
            if response.result.isSuccess {
                print(response.data)
                let data = String(data: response.data!, encoding: .utf8)
                self.delegate?.updateArray(newArray.data!)
                return handler(true)
            }
            return handler(false)
        }
    }
}