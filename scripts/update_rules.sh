#!/usr/bin/env bash
set -euo pipefail

RULE_DIR="rules"
mkdir -p "$RULE_DIR"

declare -A RULES=(
  [CFnat.list]="https://raw.githubusercontent.com/cmliu/ACL4SSR/refs/heads/main/Clash/CFnat.list"
  [LocalAreaNetwork.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list"
  [UnBan.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/UnBan.list"
  [BanAD.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list"
  [BanProgramAD.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list"
  [adobe.list]="https://raw.githubusercontent.com/cmliu/ACL4SSR/main/Clash/adobe.list"
  [IDM.list]="https://raw.githubusercontent.com/cmliu/ACL4SSR/main/Clash/IDM.list"
  [GoogleFCM.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/GoogleFCM.list"
  [GoogleCN.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/GoogleCN.list"
  [SteamCN.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/SteamCN.list"
  [Microsoft.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Microsoft.list"
  [Apple.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Apple.list"
  [Telegram.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Telegram.list"
  [OpenAi.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/OpenAi.list"
  [ai.list]="https://raw.githubusercontent.com/juewuy/ShellClash/master/rules/ai.list"
  [Copilot.list]="https://raw.githubusercontent.com/cmliu/ACL4SSR/main/Clash/Copilot.list"
  [GithubCopilot.list]="https://raw.githubusercontent.com/cmliu/ACL4SSR/main/Clash/GithubCopilot.list"
  [Claude.list]="https://raw.githubusercontent.com/cmliu/ACL4SSR/main/Clash/Claude.list"
  [YouTube.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/YouTube.list"
  [Netflix.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Netflix.list"
  [ProxyMedia.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyMedia.list"
  [Emby.list]="https://raw.githubusercontent.com/cmliu/ACL4SSR/main/Clash/Emby.list"
  [ProxyLite.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyLite.list"
  [CMBlog.list]="https://raw.githubusercontent.com/cmliu/ACL4SSR/main/Clash/CMBlog.list"
  [ChinaDomain.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list"
  [ChinaCompanyIp.list]="https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list"
)

for file in "${!RULES[@]}"; do
  url="${RULES[$file]}"
  echo "Downloading $file"
  curl -L "$url" -o "$RULE_DIR/$file"
done
