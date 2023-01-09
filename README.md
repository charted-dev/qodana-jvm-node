# qodana-jvm-node
> *Dockerfile to bundle Node.js and Qodana's JVM community images together*

This repository only holds a single Dockerfile that contains [Node.js](https://nodejs.org/en) with [JetBrains Qodana's JVM Community Docker image](https://hub.docker.com/r/jetbrains/qodana-jvm-community) together.

> **Note**
>
> Why does this exist? -- This was only possible to fix issues where Spotless needed a Node.js installation to use
> the Prettier formatting step, so this was made to combat it.
>
> This is only recommended if you plan to do what we are doing for our Code Quality pipeline.

## Usage
> `qodana.yaml`

```yaml
version: "1.0"
linter: ghcr.io/charted-dev/qodana-jvm-node:2022.3 # Or any tag that `jetbrains/qodana-jvm-community` supports over 2022.3, older tags won't work
# insert your rules here
```

You should get a warning similar to:

```
!   You are using an unofficial Qodana linter: ghcr.io/charted-dev/qodana-jvm-node:2022.3
```

This is completely fine, this image just extends **jetbrains/qodana-jvm-community** with the specified Qodana version that this images uses.

## License
**qodana-jvm-node** is released under the **Unlicense**, so you can do whatever you want by Noelware. <3
