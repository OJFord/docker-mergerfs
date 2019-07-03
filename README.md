# mergerfs

All credit for the file-system itself to trapexit/mergerfs.

## Usage

Image is available at:
```
docker.io/ojford/mergerfs
```

Paths to pool should be mounted within:
```
/bricks/
```

The pool will be mounted at:
```
/mnt/pool
```

`fusermount -u` is *not* run automatically.


Override settings, if required, with either a different command, or with [runtime config](/trapexit/mergerfs#runtime-config)

## Licence

MIT.
