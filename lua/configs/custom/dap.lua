local dap = require('dap')

dap.adapters.dart = {
  type = 'server',
  port = 5040,
  executable = {
    command = 'dart',
    args = { 'debug', '--pause-isolates-on-start' },
  }
}

dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch dart",
    dartSdkPath = "$DART_ROOT",
    flutterSdkPath = "$FLUTTER_ROOT",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  },
  {
    type = "flutter",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = "$DART_ROOT",
    flutterSdkPath = "$FLUTTER_ROOT",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  }
}

dap.adapters.dart = {
  type = 'executable',
  command = 'dart',
  args = { 'debug_adapter' },
  options = {
    detached = false,
  }
}

dap.adapters.flutter = {
  type = 'executable',
  command = 'flutter',
  args = { 'debug_adapter' },
  options = {
    detached = false,
  }
}
