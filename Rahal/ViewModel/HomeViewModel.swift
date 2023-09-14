import Foundation

class HomeViewModel {
    static let shared = HomeViewModel()
    private var services: HomeServices!
    
    var homeSliderData: HomeSliderModel?
    var topTripsData: TopTripsModel?
    var topGuidesData: TopGuidesModel?
    
    var responseHandler: ((_ error: Bool) -> Void)?
    
    private init() {
        services = HomeServices()
    }
    
    @MainActor
    func fetchHomeSliderData() {
        Task {
            do {
                homeSliderData = try await services.fetchHomeSliderData()
                responseHandler?(true)
            } catch {
                responseHandler?(false)
            }
        }
    }
    
    @MainActor
    func fetchTopTripsData() {
        Task {
            do {
                topTripsData = try await services.fetchTopTripsData()
                responseHandler?(true)
            } catch {
                responseHandler?(false)
            }
        }
    }
    
    @MainActor
    func fetchTopGuidesData() {
        Task {
            do {
                topGuidesData = try await services.fetchTopGuidesData()
                responseHandler?(true)
            } catch {
                responseHandler?(false)
            }
        }
    }
}
