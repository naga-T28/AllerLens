# 開発ルール

2人体制・アジャイル開発（1週間スプリント）を前提としたルール。テンプレートは `.github/ISSUE_TEMPLATE/` および `.github/PULL_REQUEST_TEMPLATE.md` を参照。

## Issue

- 実装前に必ずIssueを作成する（Issueのない変更は行わない）
- テンプレートを参考に概要・作業内容・完了条件を書く
- 1つのIssueは原則2日以内で完了する大きさにする
- 作業開始時に **担当者・期間・作業ブランチ** をIssue本文に設定する

| 種類 | テンプレート | 用途 |
|---|---|---|
| スプリント計画 | `sprint.md` | スプリントの期間・ゴール・完了条件を管理する親Issue |
| 開発タスク | `task.md` | スプリントに紐づく実装タスク（親Issueを持つ子Issue） |
| バグ報告 | `bug_report.md` | 想定と異なる挙動・不具合の報告 |
| 機能要望 | `feature_request.md` | 新しい機能や改善の提案 |

## Branch

- mainへ直接コミットしない
- ブランチ名には必ずIssue番号を含める

| Prefix | 用途 | 例 |
|---|---|---|
| `feature/{Issue番号}-{内容}` | 新機能の追加 | `feature/12-ocr-guide` |
| `fix/{Issue番号}-{内容}` | バグ修正 | `fix/15-crash-on-empty-image` |
| `chore/{Issue番号}-{内容}` | 環境構築・設定など機能に関わらない変更 | `chore/3-setup-flutter` |

## Commit

- 1コミット1目的にする
- 「修正」「更新」だけのような内容の分からないメッセージは禁止する
- **コミットメッセージには対象Issueの番号を `#Issue番号` の形式で必ず含める**（GitHub上でIssueと自動的にリンクされる）

```
[Prefix] : #<Issue番号> : <変更内容>
```

| Prefix | 意味 | 例 |
|---|---|---|
| `feat` | ユーザーが利用する機能の追加 | `feat: #12 メニュー撮影画面にOCRガイドを追加` |
| `fix` | バグ修正 | `fix: #15 空画像でクラッシュする不具合を修正` |
| `docs` | ドキュメントのみの変更 | `docs: #20 development-guide.mdを整備` |
| `style` | 機能に影響しない見た目・整形の変更 | `style: #22 lintエラーを解消` |
| `refactor` | 挙動を変えないコードの整理 | `refactor: #18 アレルゲン判定ロジックを関数分割` |
| `test` | テストの追加・修正 | `test: #25 OCR抽出処理のユニットテストを追加` |
| `chore` | 依存関係・設定など上記に当てはまらない変更 | `chore: #3 Flutterプロジェクトの初期セットアップ` |

## Pull Request

`.github/PULL_REQUEST_TEMPLATE.md` に沿って以下を記載する。

- 対応Issue（例: `Closes #12`）
- 作業ブランチ・対象スプリント
- 動作確認方法（Test plan）
- UI変更時はスクリーンショット
- レビュー依頼（もう一方の担当者）

原則として、もう一方のレビュー後にマージする。

## 完了条件（Definition of Done）

- [ ] 実装が完了している
- [ ] 動作確認が完了している
- [ ] 必要なテストが通っている
- [ ] Pull Requestがmainへマージされている
- [ ] Issueがクローズされている
