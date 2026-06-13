#!/usr/bin/env bash
# negi-pages をローカルでプレビューするHTTPサーバーを起動する。
# 使い方:  ./serve.sh [PORT]   (既定ポート 8000)
cd "$(dirname "$0")"
PORT=${1:-8000}
echo "葱。 local preview:"
echo "  トップ:   http://localhost:${PORT}/index.html"
echo "  ep900:    http://localhost:${PORT}/episodes/ep900/index.html"
echo "  ep901:    http://localhost:${PORT}/episodes/ep901/index.html"
echo "(Ctrl+C で停止)"
python3 -m http.server "$PORT"
