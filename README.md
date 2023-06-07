# JSON Schemas for the AnyChannel Framework

This repo contains [JSON Schemas](http://json-schema.org/) and supporting libraries for the [Zendesk AnyChannel Framework](https://developer.zendesk.com/apps/docs/channels-framework/introduction).

### Usage

The schemas define the various contracts specified by the channels framework. We use them internally at Zendesk to validate the interactions that take place between a Channels Framework integration and Zendesk.

Feel free to use them in your own test suites or production code. There are supporting libraries for specific languages to help you include them in your integrations. Please reach out or make a pull request if you'd like to see another language included.

### Contact

jshay@zendesk.com

### Why is this called AnyChannel, isn't it called the Channels Framework??

The schemas and libraries in this repo and intended to be used in code and we want the naming to stay constant.

To make sure this is always the case we're letting the community in on our super secret internal code name. Don't tell anyone ;)

### Custom formats

These schemas use some custom formats

* https-url
* external-id

#### https-url

This custom format enforces that the URL uses the HTTPS scheme.  For example, 'https://www.test.com/document' passes, but 'http://www.test.com/document' does not.

#### external-id

* This custom format enforces that the string does not include leading or trailing whitespace.  For example '123' passes, but '123 ' does not.
* The [Channel Payload V2](./json_schemas/channelback_payload_v2.json) enforces the value as non-nil. For example '123' passes, but '' does not.

### License

[Apache License](./LICENSE)
