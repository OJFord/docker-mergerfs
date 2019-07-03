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

mergerfs itself has the following licence:
```
/*
  ISC License

  Copyright (c) 2016, Antonio SJ Musumeci <trapexit@spawn.link>

  Permission to use, copy, modify, and/or distribute this software for any
  purpose with or without fee is hereby granted, provided that the above
  copyright notice and this permission notice appear in all copies.

  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
*/
```
https://github.com/trapexit/mergerfs/blob/master/LICENSE
