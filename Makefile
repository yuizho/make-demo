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

