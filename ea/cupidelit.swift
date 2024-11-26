import SwiftUI

struct SizeClassEnvironmentValue {
    var horizontalSizeClass: UserInterfaceSizeClass?
    var verticalSizeClass: UserInterfaceSizeClass?
}

extension EnvironmentValues {
    var sizeClass: SizeClassEnvironmentValue {
        get { SizeClassEnvironmentValue(horizontalSizeClass: self.horizontalSizeClass, verticalSizeClass: self.verticalSizeClass) }
        set {
            self.horizontalSizeClass = newValue.horizontalSizeClass
            self.verticalSizeClass = newValue.verticalSizeClass
        }
    }
}
