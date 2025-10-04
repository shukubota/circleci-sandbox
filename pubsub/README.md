# Pubsub

A simple Go application for pub/sub functionality.

## Usage

```bash
go run main.go
```

This will execute the main function which calls the run function and prints "Hello" to the console.


## Emulator

### Start PubSub Emulator

```bash
# Install gcloud CLI if not already installed
# https://cloud.google.com/sdk/docs/install

# Install PubSub emulator component
gcloud components install pubsub-emulator

# Start the emulator (runs on localhost:8085 by default)
gcloud beta emulators pubsub start --project=test-project

# In another terminal, set environment variables to use emulator
export PUBSUB_EMULATOR_HOST=localhost:8085
export GOOGLE_CLOUD_PROJECT=test-project
export GCLOUD_PROJECT=test-project

# IMPORTANT: Set the API endpoint to point to the emulator (one-time setup)
gcloud config set api_endpoint_overrides/pubsub http://localhost:8085/

# to unset
gcloud config unset api_endpoint_overrides/pubsub


### Create Topic and Subscription

```bash
# Create a topic
gcloud pubsub topics create my-topic --project=test-project

# Create a subscription
gcloud pubsub subscriptions create my-subscription --topic=my-topic --project=test-project

# List topics
gcloud pubsub topics list --project=test-project

# List subscriptions
gcloud pubsub subscriptions list --project=test-project
```

### Publish and Pull Messages

```bash
# Publish a message
gcloud pubsub topics publish my-topic --message="Hello World" --project=test-project

# Pull messages
gcloud pubsub subscriptions pull my-subscription --auto-ack --project=test-project
```
