
#!/bin/bash
# temp-config-repo/scripts/setup-superpowers.sh

REPO_URL=""
GLOBAL=false

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --repo-url) REPO_URL="$2"; shift ;;
        --global) GLOBAL=true ;;
        *) echo "Unknown parameter: $1"; exit 1 ;;
    esac
    shift
done

echo "========================================"
echo "  Superpowers 配置安装脚本"
echo "========================================"
echo ""

if [ "$GLOBAL" = true ]; then
    TARGET_DIR="$HOME/.trae"
else
    TARGET_DIR=".trae"
fi

echo "目标目录: $TARGET_DIR"
echo ""

if [ ! -d "$TARGET_DIR" ]; then
    echo "创建目录: $TARGET_DIR"
    mkdir -p "$TARGET_DIR"
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &amp;&amp; pwd)"

echo "复制 skills..."
cp -rf "$SCRIPT_DIR/../.trae/skills/"* "$TARGET_DIR/skills/" 2&gt;/dev/null || true

echo "复制 rules..."
cp -rf "$SCRIPT_DIR/../.trae/rules/"* "$TARGET_DIR/rules/" 2&gt;/dev/null || true

echo ""
echo "✅ Superpowers 配置安装完成！"
echo ""
echo "使用方法："
echo "  在项目中，Trae 会自动加载 .trae/ 目录下的技能和规则"
echo ""

