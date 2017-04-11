dockerized-kiwix-server
=================

> Wanna run your own wikipedia server locally? Look no further!

* Download a content file from <http://www.kiwix.org/wiki/Content>.
* Given `wikipedia.zim` resides in `/tmp/wiki`, execute the following:

```
docker run -v /tmp/wiki:/kiwix-data -p 8080:8080 jasiek/kiwix-server wikipedia.zim
```

![wikipedia1.png](https://github.com/jasiek/dockerized-kiwix-server/raw/master/snaps/wikipedia1.png)
![wikipedia2.png](https://github.com/jasiek/dockerized-kiwix-server/raw/master/snaps/wikipedia2.png)
