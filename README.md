# zenn-cli in Nix

zenn-cli を Nix でインストールできます。

## 導入

事前に [Nix](https://nixos.org) をインストールしておきます。

### channel を追加


```shell
nix-channel --add https://github.com/aumyf/zenn-cli.nix/archive/master.tar.gz zenn-cli
```

### (Optional) Cachix の設定

[Cachix のキャッシュも用意してみました](https://app.cachix.org/cache/zenn-cli) (ちゃんと動いてるのかはわからない)。

```shell
cachix use zenn-cli
```

### インストール

```shell
nix-env -iA zenn-cli
```

導入できたら `zenn` で使えます。

---

- 手順をお借りしました: https://zenn.dev/pandaman64/articles/zenn-built-with-nix
- zenn-cli の使い方: https://zenn.dev/zenn/articles/zenn-cli-guide
- このリポジトリは Zenn 公式とは関係ありません。トラブル報告を公式に投げないでください。
