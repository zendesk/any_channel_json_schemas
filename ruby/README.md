# Any Channel JSON Schemas

This is a gem that lets you reference JSON Schema files for the [Zendesk AnyChannel Framework](https://developer.zendesk.com/apps/docs/channels-framework/introduction) in your ruby projects.

### Installation

```
gem install any_channel_json_schemas
```

### Usage

The gem exposes a single module with the following methods:

```ruby
  manifest
  pull_payload
  channelback_payload
  push_parameters
  event_base
  event_pull_request
  event_create_ris
  event_resources_created_from_external_ids
```

Each of these returns an absolute path to a schema file. We use these in our own code base with the [json-schema](https://github.com/ruby-json-schema/json-schema) gem both in our test suite and to validate json payloads real-time.

Here's an example of how use the schemas to validate a [manifest](https://developer.zendesk.com/apps/docs/channels-framework/integration_manifest).

```ruby
  validation_errors = JSON::Validator.fully_validate(AnyChannelJSONSchemas.manifest, manifest)

  if validation_errors.empty?
    # Manifest conforms to the published schema.
  else
    # There are validation erros and we can't proceed.
  end
```

### Contributing

Feel free to open an issue or fork the repo and submit a PR.

### Contact

jshay@zendesk.com
