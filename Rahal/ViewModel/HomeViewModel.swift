import Foundation

class HomeViewModel: ObservableObject {
    
    static let shared = HomeViewModel()
    private var services: HomeServices!
    
    var homeSliderData: HomeSliderModel?
    
    @Published var trips = [Trip]()
    @Published var guides = [Guide]()
    
    var responseHandler: ((_ error: Bool) -> Void)?
    
    private init() {
        services = HomeServices()
        Task {
            try await fetchTopTripsData()
            try await fetchTopGuidesData()
        }
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
    func fetchTopTripsData() async throws {
        do {
            let trips = try await services.fetchTopTripsData()
            self.trips = trips.guides
        } catch {
            print(error.localizedDescription)
            responseHandler?(false)
        }
    }
    
    @MainActor
    func fetchTopGuidesData() async throws {
        do {
            let guides = try await services.fetchTopGuidesData()
            self.guides = guides.guides
        } catch {
            responseHandler?(false)
        }
    }
}
