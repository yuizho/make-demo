# 疑似ターゲット
## ファイルとして存在しない名前をターゲットにした場合は擬似ターゲットと呼ばれる
first:
	echo "first"

second: first
	echo "second"

## .PHONYで擬似ターゲットを宣言することもできる。明示的に擬似ターゲットを表現したいときに使うっぽい。
.PHONY: third
third: second
	echo "third"

# 順番にターゲットを処理する
tag1:
	echo "tag1"

tag2:
	echo "tag2"

tag3:
	echo "tag3"

all_tags: tag1 tag2 tag3

# 変数
ECHO = echo "AABBCC"
TARGET = 変数の代入と参照
$(TARGET):
	$(ECHO)

STR = AA
STR := $(STR)BBCC
再帰的代入を考慮した代入:
	echo "$(STR)"

STR2 = AA
STR2 += BB
STR2 += CC
変数へ追加:
	echo "$(STR2)"

環境変数の参照:
	echo "$(LANG)"

# コマンド行の制御
コマンド表示の抑止:
	@echo "@をつけてコマンドを実行するとコマンド実行そのものの表示を抑止できる"
