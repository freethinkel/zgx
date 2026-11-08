---
section: performance
---
- **A table a script puts in state is read 5% faster** (zgx-script): its strings take the fast UTF-8 check, and the converter's address-keyed maps (strings by their Luau string, values held by the cache) hash by a multiply, not SipHash. The mail example's first run, which puts 4,000 messages in state, does 5.3% fewer instructions (213.6M → 202.1M), with the same values and tables.
