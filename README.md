This is a sample app that reproduces the bug in [this maildown issue](https://github.com/codetriage/maildown/issues/59).

## To reproduce the bug

This repo contains a patch in `config/initializers/maildown_patch.rb`. To reproduce the issue, comment out that code.

Then, you can either...

1. Run `rails s` and try to view either http://localhost:3000 or http://localhost:3000/welcome/index.
2. Or run `rake test:integration` to run the the simple integration test at `test/integration/welcome_test.rb`.

## To repro with the fix

Uncomment the code in `config/initializers/maildown_patch.rb`.
