# Trae Superpowers 配置

在本地和远程服务器之间同步 Superpowers 技能和规则的配置仓库。

## 📦 内容

- **Superpowers 技能** - 15+ 个强大的开发技能
- **UI/UX Pro Max** - 专业的 UI/UX 设计智能
- **自动调用规则** - 每次对话自动激活相关技能

## 🚀 快速开始

### 本地安装

```powershell
# Windows
.\scripts\setup-superpowers.ps1
```

```bash
# Linux/Mac
./scripts/setup-superpowers.sh
```

### 全局安装（所有项目可用）

```powershell
# Windows
.\scripts\setup-superpowers.ps1 -Global
```

```bash
# Linux/Mac
./scripts/setup-superpowers.sh --global
```

### 远程服务器安装

```bash
# SSH 到远程服务器
ssh user@remote-server

# 克隆仓库
git clone https://github.com/powerpig666/trae-superpowers-config.git
cd trae-superpowers-config

# 安装配置
./scripts/setup-superpowers.sh
```

## 🔄 同步更新

### 推送本地更新到 GitHub

```bash
git add .
git commit -m "更新 superpowers 配置"
git push
```

### 拉取远程更新

```bash
git pull
```

## 📁 目录结构
