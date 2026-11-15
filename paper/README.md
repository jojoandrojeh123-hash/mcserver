# Paper Minecraft server

This folder is set up for Paper **26.3 build 253**. The server requires Java
25 or newer.

## Download and start

1. Run `./download-paper.sh` to download the official Paper server jar.
2. Read the [Minecraft EULA](https://aka.ms/MinecraftEULA). If you agree to
   it, create `eula.txt` in this folder with the line `eula=true`.
3. Run `./start.sh`.

The server listens on port `25565` by default. Configure it in the generated
`server.properties` file after the first start. Keep this port reachable from
your players' clients if they connect over a network.

The Paper jar and server-generated files are ignored by Git.
