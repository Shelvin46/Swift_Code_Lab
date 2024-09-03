import Foundation
import PlaygroundSupport
import _Concurrency

PlaygroundPage.current.needsIndefiniteExecution = true

enum APIError: Error {
    case invalidURL
    case networkError
    case serverError
    case decodingError
    case timeOutError
    case userNotFound
}

struct User: Codable {
    let id: Int
    let name: String
    let email: String
}



// dummy and simple API Call
func fetchUserData(user: User) async throws -> User {
    let url = URL(string: "https://www.google.com")
    
    do {
        try await Task.sleep(nanoseconds: 2_000_000_000) // 2 seconds in nanoseconds
        return user
    } catch let error as URLError {
        switch error.code {
        case .notConnectedToInternet:
            throw APIError.networkError
        case .timedOut:
            throw APIError.timeOutError
        case .badServerResponse:
            throw APIError.serverError
        default:
            throw APIError.invalidURL
        }
    } catch let error as DecodingError {
        throw APIError.decodingError
    } catch {
        print("Unexpected error: \(error)")
        throw error
    }
}

let user = User(id: 1, name: "Shelving", email: "shelvinvarghese6@gmail.com")


Task {
    do {
        let user = try await fetchUserData(user: user)
        print("User: \(user)")
    } catch APIError.invalidURL {
        print("Invalid URL.")
    } catch APIError.networkError {
        print("Network error.")
    } catch APIError.serverError {
        print("Server error.")
    } catch APIError.timeOutError {
        print("Request timed out.")
    } catch APIError.decodingError {
        print("Decoding error.")
    } catch APIError.userNotFound {
        print("User not found.")
    } catch {
        print("Unexpected error: \(error)")
    }
}
