local dap = require("dap")

function CheckDapStatus()
  if not dap.session() then
    print("No active debugger session.")
    return
  end

print("Debugger is attached.")
end

dap.adapters.dart = {
  type = 'executable',
  command = '$DART_HOME',
  args = { 'debug_adapter' }
}

dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch dart",
    dartSdkPath = "$DART_HOME",
    flutterSdkPath = "$FLUTTER_HOME",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  },
  {
    type = "flutter",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = "$DART_HOME",
    flutterSdkPath = "$FLUTTER_HOME",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  }
}
