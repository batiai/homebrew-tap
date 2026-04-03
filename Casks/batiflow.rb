# Homebrew Formula for BatiFlow
# Install: brew install batiai/tap/batiflow
# Update: brew upgrade batiflow

cask "batiflow" do
  version "0.7.1"
  sha256 "d4d1086a70a47fe00b6cfbc39dfebecfb14b897d7e59b51b01a06a70c47ec642"

  url "https://github.com/batiai/batiflow-releases/releases/download/v#{version}/BatiFlow.dmg"
  name "BatiFlow"
  desc "AI-native macOS desktop automation — KakaoTalk, Slack, iMessage, Browser, Calendar, Files"
  homepage "https://flow.bati.ai"

  depends_on macos: ">= :ventura"

  app "BatiFlow.app"

  zap trash: [
    "~/.batiflow",
    "~/Library/Preferences/ai.bati.batiflow.plist",
    "~/Library/Preferences/BatiFlowApp.plist",
  ]

  caveats <<~EOS
    BatiFlow requires Accessibility permission to control other apps.
    Grant access in: System Settings > Privacy & Security > Accessibility

    AI setup: Settings > AI > connect Gemini (free) or Ollama (local)

    MCP for Claude Code:
      Settings > MCP > select folder > apply > restart Claude Code
  EOS
end
