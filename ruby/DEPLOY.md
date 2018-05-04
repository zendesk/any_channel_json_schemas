# Deployment

The gem is publically hosted so you will need a [ruby gems account](https://rubygems.org/sign_up).
Then reach out to any of the gem owners (run `gem owner any_channel_json_schemas` to get the full list) and ask them to add you with `gem owner --add <email> any_channel_json_schemas`.

To push a new version the steps are:

1. Update the version in the gemspec file.
2. Run `gem build any_channel_json_schemas.gemspec` *this will create a .gem file*
3. Run `gem push any_channel_json_schemas-<version>.gem`
