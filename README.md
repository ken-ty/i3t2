# i3t2

I3T2 is identify the task !

タスクの洗い出しをサポートします !

## 紹介

### できること

- 画面の一覧・詳細表示
- APIの一覧・詳細表示
- DBの一覧・詳細表示
- 機能の一覧・詳細表示

- 画面, API, DB, 機能 の見積もり・設計用分析データ CSV 出力

### 画面イメージ

| 画面一覧 | API一覧 | DB一覧 | 機能一覧 |
| --- | --- | --- | --- |
| ![画面一覧](assets/images/readme/i3t2_pages.png) |  ![API一覧](assets/images/readme/i3t2_pages.png) |  ![DB一覧](assets/images/readme/i3t2_pages.png) |  ![機能一覧](assets/images/readme/i3t2_pages.png) | 

| 画面詳細 | API詳細 | DB詳細 | 機能詳細 |
| --- | --- | --- | --- |
| ![画面詳細](assets/images/readme/i3t2_pages.png) |  ![API詳細](assets/images/readme/i3t2_pages.png) |  ![DB詳細](assets/images/readme/i3t2_pages.png) |  ![機能詳細](assets/images/readme/i3t2_pages.png) | 

### 基底クラス

以下の基底クラスを継承してプロジェクト作成を進行してください。

| 基底クラス名 | 役割 |
| --- | --- |
| `PageBase` | 全ての `page` クラスが継承する. | 
| `ApiBase` | 全ての `API` クラスが継承する. | 
| `ModelBase` | 全ての `Model` クラスが継承する. | 
| `ControllerBase` | 全ての `Controller` クラスが継承する. | 
