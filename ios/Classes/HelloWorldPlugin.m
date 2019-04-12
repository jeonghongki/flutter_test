#import "HelloWorldPlugin.h"
#import <hello_world/hello_world-Swift.h>

@implementation HelloWorldPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHelloWorldPlugin registerWithRegistrar:registrar];
}
@end
