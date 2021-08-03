# cowsay-swift-cli

> Cowsay is a configurable talking cow for your terminal.

```sh
 _____________
< Swift rocks >
 -------------
        \   ^__^
         \  (oo\________
            (__)\       )\/\
                ||----w |
                ||     ||
```

## Why
Cowsay was originally written in Perl by [Tony Monroe](https://github.com/tnalpgge/rank-amateur-cowsay). This project is a translation in the [Swift language](https://swift.org/) based on the original idea.
Created for a similar purpose as it's author:
> A simple and silly project for learning how to use Swift, as a executable [cli](https://en.wikipedia.org/wiki/Command-line_interface), as well as general amusement around this ecosystem.

## Install
```sh
brew install mint
mint install lnfnunes/cowsay-swift-cli
# That’s it! Now you can run "cowsay" from anywhere!
```

## Usage
```sh
cowsay Swift rocks
```

## Options
```sh
cowsay -h

USAGE: cowsay [<message> ...] [--eyes <eyes>] [--tongue <tongue>] [--name <name>]

ARGUMENTS:
  <message>               The cow should say something

OPTIONS:
  -e, --eyes <eyes>       Change cow's eyes (default: oo)
  -t, --tongue <tongue>   Change cow's tongue (default:   )
  --name <name>           Select, by name, one of cows included in the package (default: example)
  -h, --help              Show help information.
```

## Developing
```sh
git clone git@github.com:lnfnunes/cowsay-swift-cli.git
cd cowsay-swift-cli
swift run cowsay
```

## Contributing
Check it out: [CONTRIBUTING.md](./CONTRIBUTING.md).

## License
[MIT LICENSE](./LICENSE) © Leandro Nunes (lnfnunes)
