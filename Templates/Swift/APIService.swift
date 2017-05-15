//
// APIRequest.swift
//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

public struct APIService<ResponseType> {

    public let id: String
    public let tag: String
    public let method: String
    public let path: String
    public let hasBody: Bool
    public let authorization: Authorization?
    public let decode: ResponseDecoder<ResponseType>

    public init(id: String, tag: String = "", method:String, path:String, hasBody: Bool, authorization: Authorization? = nil, decode: @escaping ResponseDecoder<ResponseType>) {
        self.id = id
        self.tag = tag
        self.method = method
        self.path = path
        self.hasBody = hasBody
        self.authorization = authorization
        self.decode = decode
    }
}

extension APIService: CustomStringConvertible {

    public var description: String {
        return "\(id): \(method) \(path)"
    }
}

public struct Authorization {
    public let type: String
    public let scope: String

    public init(type: String, scope: String) {
        self.type = type
        self.scope = scope
    }
}
