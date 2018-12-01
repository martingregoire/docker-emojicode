# Emojicode Docker image

Emojicode compiler, see https://www.emojicode.org/.

## Description

Compile Emojicode applications without installing Emojicode locally.

## Build

```shell
$ docker build -t martingregoire/emojicode .
```

## Push to Docker hub
```shell
$ docker push martingregoire/emojicode
```

## Usage

Create an Emojicode source file, for example the "hello world" program from the [Emojicode documentation](https://www.emojicode.org/docs/guides/compile-and-run.html), and save it to `helloworld.emojic`:

```shell
🏁 🍇
  😀 🔤Hey!🔤❗️
🍉
```

---

Start a Docker container from this image, mounting your current directory to the `/app` folder inside the container:

```shell
$ docker run --rm -it -v $PWD/:/app martingregoire/emojicode bash
```

---

You can then compile and run the program from the container like this:

```shell
root@371a6f1f5621:~# emojicodec /app/helloworld.emojic
root@371a6f1f5621:~# /app/helloworld
Hey!
```


---

Or you can compile the program through the container, and run it directly from you shell like this:

```shell
$ docker run --rm -it -v $PWD/:/app martingregoire/emojicode emojicodec /app/helloworld.emojic
$ ./helloworld
Hey!
```
