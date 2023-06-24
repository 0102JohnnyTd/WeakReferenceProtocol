import UIKit

protocol HogeDelegate {
  func run() -> Void
}

// AnyObjectを付与することでクラスのように(?)扱えるようになる。
protocol FugaDelegate : AnyObject {
  func run() -> Void
}

// ちなみにstructにはAnyObjectを指定することはできないようだ。
struct Fua: AnyObject {
    var someNumber: Int
}


class UhoView {
    // クラスおよびクラスを継承したものだけがweakを指定できる
    weak var delegate1: HogeDelegate?

    weak var fua: Fua?

    // AnyObjectが付与されてるので弱参照してもエラーは起きない。
    weak var delegate2: FugaDelegate?
}
