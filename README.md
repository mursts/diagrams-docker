# diagrams-docker

[Diagrams](https://github.com/mingrammer/diagrams)をDockerで実行するためのDockerコンテナ  
フォントは[Cica](https://github.com/miiton/Cica)を使用しています

## 実行方法

```sh
# create image
$ docker image build -t mursts/diagrams-docker:0.1 .

# exec diagrams
$ docker run --rm -v `pwd`:/diagrams mursts/diagrams-docker:0.1 python sample.py
$ open sample.png
```

### サンプル

![](sample.png)
