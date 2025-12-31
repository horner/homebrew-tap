# Homebrew Tap for horner

This is a [Homebrew tap](https://docs.brew.sh/Taps) containing formulas for my projects.

## Installation

First, add this tap:

```bash
brew tap horner/tap
```

Then install any formula from this tap:

```bash
brew install it2name
```

## Available Formulas

### it2name

iTerm2 helper that renders big ASCII art captions and sets tab titles.

```bash
brew install horner/tap/it2name
```

Dependencies (imagemagick and chafa) will be installed automatically.

See the [it2name repository](https://github.com/horner/it2name) for more details.

## Development

To test the formula locally before pushing:

```bash
brew install --build-from-source ./Formula/it2name.rb
brew test it2name
```

To audit the formula:

```bash
brew audit --strict --online it2name
```
