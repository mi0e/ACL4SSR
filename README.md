# ACL4SSR

Custom Clash subscription configuration with locally maintained rule sets.

## Syncing rule sets

The repository uses a GitHub Actions workflow (`sync-rules.yml`) to
automatically download upstream rule files into the `rules/` directory.
These files are fetched according to `scripts/update_rules.sh` and
committed back to the repository on a daily schedule.

## DNS configuration

`clash.ini` now includes a `dns` section that enables fake-IP mode and
defines both domestic and fallback DNS resolvers.
