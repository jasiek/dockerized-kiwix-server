dockerized-kiwix-server
=================

> Wanna run your own wikipedia server locally? Look no further!

* Download a content file from <http://www.kiwix.org/wiki/Content>.
* Rename downloaded file to `wikipedia.zim`.
* Given `wikipedia.zim` resides in `/tmp/wiki`, execute the following:

```
docker run -v /tmp/wiki:/kiwix-data -p 8080:8080 jasiek/kiwix-server
```

![wikipedia1.png](snaps/wikipedia1.png)
![wikipedia2.png](snaps/wikipedia2.png)
