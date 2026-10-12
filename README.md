# TAILSIT Homebrew Tap

Homebrew formulae for command-line tools by [TAILSIT GmbH](https://www.tailsit.com).

## Installation

Add the tap once:

```bash
brew tap tailsit/tap
```

Then install any tool from it:

```bash
brew install tailsit/tap/<tool>
```

After tapping, the short form `brew install <tool>` also works, as long as the name does not clash with a formula in homebrew-core.


## Available tools

| Formula | Description | Platforms |
|---|---|---|
| `d3plot2hdf5` | Converts LS-DYNA d3plot files to HDF5 | macOS (Apple Silicon) |

## Updating

```bash
brew update
brew upgrade <tool>
```

## Uninstalling

```bash
brew uninstall <tool>
brew untap tailsit/tap     # optional, removes the tap itself
```

## License

See the license of each individual tool. The formulae in this repository are provided as-is.
