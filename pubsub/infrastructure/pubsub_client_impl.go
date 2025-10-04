package infrastructure

import (
	"context"

	"cloud.google.com/go/pubsub/v2"
	"github.com/shukubota/circleci-sandbox/pubsub-example/client"
)

type PubSubClientImpl struct {
	client *pubsub.Client
}

func NewPubSubClient(ctx context.Context, projectID string) (client.PubSubClient, error) {
	client, err := pubsub.NewClient(ctx, projectID)
	if err != nil {
		return nil, err
	}

	return &PubSubClientImpl{
		client: client,
	}, nil
}
