# docs-examples
This repo is a fork of the urbit [docs-examples](https://github.com/urbit/docs-examples) repo. It only keeps the `chat-app` and adds some additional tooling.


# Auto-globbing
A common task for app developers is preparing globs (full of HTML and JS) and distributing them. The manual process is straightforward, although very manual and error-prone.

Using tloncorp's [bouncer](https://github.com/tloncorp/bouncer) we can automate most of this process.

With the following commands we will generate a fake ~zod ship on which to glob, then run the necessary commands to mount, commit, copy files and glob them.

First, lets make a new zod in our `~/dev/urbit/ships` folder.
```
urbit -F zod -c ~/dev/urbit/ships/zod/
```
Wait for the ship to fully boot, then run:
```
~/dev/urbit/bouncer/bin/bounce -c ~/dev/urbit/docs-examples/chat-app/glob-config.yml
```

If that bouncer command worked, you should now have a `.glob` file in `~/dev/urbit/ships/zod/.urb/put/`. This glob file can be uploaded to some sort of HTTP storage (S3 or minio).

# Future Work
I want to incorporate this whole process into an automated release github Action that does the globbing, the S3 upload, and finally bring the changes to the distribution moon (stretch goal).
Immediate next steps:
1. Run the auto-globbing function inside of a github action
2. Take the output of that, then upload it to a bucket
