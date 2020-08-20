# linksafe

Hi! I'm Linksafe and I use a domain whitelist to block harmful urls in messages.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     linksafe:
       github: mixflame/linksafe
   ```

2. Run `shards install`

## Usage

```crystal
require "linksafe"
```

```crystal
Linksafe.kosher?("http://google.com") #=> true
Linksafe.kosher_string!("Check this out http://unsafesite.com") #=> "Check this out [link removed]"
```

`kosher_string!` supports multiple urls being in a string.

## Development

Fork, clone, run tests, add domains to whitelist, edit code, run tests, commit, push, pull request.

## Contributing

1. Fork it (<https://github.com/mixflame/linksafe/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Jonathan Silverman](https://github.com/mixflame) - creator and maintainer
