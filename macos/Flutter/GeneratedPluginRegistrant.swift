//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

<<<<<<< HEAD
import url_launcher_macos

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
=======
import path_provider_foundation
import url_launcher_macos

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  PathProviderPlugin.register(with: registry.registrar(forPlugin: "PathProviderPlugin"))
>>>>>>> e0c14dc96216e9a64eda25ee6dde43e409100d6f
  UrlLauncherPlugin.register(with: registry.registrar(forPlugin: "UrlLauncherPlugin"))
}
