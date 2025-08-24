# Borg

Container distribution of [Borg Backup](https://www.borgbackup.org).

> [!NOTE]
> I build this as minimal, publicly available image where it's trivial to verify that no shenanigans are going on.
>
> Currently, I build this manually. If I were you, I would only trust this once there are automated builds.

```shell
docker buildx build \
    --build-arg BORG_VERSION=1.4.0-5 \
    --platform linux/amd64,linux/arm64 \
    -t ghcr.io/dennisstritzke/borg:1.4.0 \
    -t ghcr.io/dennisstritzke/borg:1.4.0-5 \
    -t ghcr.io/dennisstritzke/borg:latest \
    . --push
```

## ... or build without explicit version.

```shell
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    -t ghcr.io/dennisstritzke/borg:latest . \
    --push
```