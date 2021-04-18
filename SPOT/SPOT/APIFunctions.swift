import Foundation
import Alamofire

struct Building: Decodable {
    var building_code: String
    var building_desc: String
    var building_floor: String
    var building_name: String
    var density_cnt: Int
    var capacity: Int
    var dc_ratio: Int
}

class APIFunctions{
    var delegates: DataDelegate?
    static let functions = APIFunctions()

    func fetchBuildingInfo(_ params: [String: Any], handler: @escaping(Bool) -> Void) {
        let url = "http://localhost3000/getbuildingdensity/:buildingCode"
        AF.request(url, method: .get, parameters: params)
        .validate()
        .responseJSON{ response in
                print(response.data)
                let data = response.data
                self.delegates?.updateArray(newArray: data)
                return handler(true)
        }
    }
}
