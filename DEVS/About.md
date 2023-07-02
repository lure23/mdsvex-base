# Intention

The intention of the author is to have replicable, local, development environments that are not built with Docker.

## Why sandboxing?

This should need little convincing. The development environments are moving en-mass to safeguarded, isolated environments. Visual Studio and IntelliJ IDE's support this. Such environments are available on the cloud, as easy-to-use "cattle, not pets" instances. This is great.

The idea is same here, only the implementation is local. "Just because".


### Why not use Docker? [Comparison]

One could easily set up the same using Docker Compose - and of course you may do so!

But we don't need most of Docker's features for doing this.

||Docker (Compose)|Multipass|Implication to sandboxing|
|---|---|---|---|
|Virtualization focus|General (many OS'es)|Ubuntu only|fine|
|Sharing local folders|Works|Works (but ssh filesystem may not be the most performant)|decent|
|Port forwarding|Works|A missing feature (but can be worked around, using ssh)|slightly annoying|
|Business focus|Suck you all in?? ;)|Mostly harmless|like it!!!|

The last entry is the main reason why the author prefers installing Multipass on his computer.


