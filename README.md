# Meelyze

訪日旅行者向け メニューアレルゲン推定アプリ（開発中）

## 概要

食物アレルギーや宗教・信条上の食事制限を持つ訪日旅行者が、日本語メニューをカメラで撮影するだけで、各料理に含まれる可能性のあるアレルゲン・制限食材を母語で確認できるアプリです。あわせて、店員へ確認するための翻訳支援機能を提供します。

本アプリは注文前の最終確認を補助するツールであり、摂食の安全を保証するものではありません。


## 技術スタック

- Swift / SwiftUI
- MVVM + Repository / Service
- AVFoundation / Apple Vision
- Apple Foundation Models（第一候補）/ llama.cpp（代替候補）
- SwiftData / JSON
- Apple Translation Framework
- Swift Testing / XCTest / XCUITest

LLMはメニューの自然言語理解と構造化に限定して利用し、最終的なアレルゲン・食事制限判定はDBとSwiftの決定論的なRule Engineで行います。詳細は[技術選定](docs/technology-selection.md)を参照してください。

## ドキュメント

- [要件定義](docs/requirements.md)
- [技術選定](docs/technology-selection.md)
- [開発ルール](docs/development-guide.md)

## 開発体制

2名体制・アジャイル開発（1週間スプリント）。Issue/PRの運用は [.github/](.github/) を参照。
