# archlinux-ssh

This image is Arch Linux with OpenSSH.

You can use Arch Linux on Docker via SSH.

# Usage

1. Download the image.

```
docker pull u2fsdgvkx1/archlinux-ssh
```

2. Run it.

```
docker run -d -p 2220:22 u2fsdgvkx1/archlinux-ssh
```

3. Connect.

```
ssh root@{docker ip} -p 2220
```

**Warning: The default password is empty. Please modify it.**
