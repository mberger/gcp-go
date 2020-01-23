package main

import (
	"fmt"
	"log"

	"golang.org/x/net/context"
	"golang.org/x/oauth2/google"
	"google.golang.org/api/compute/v1"
)

func main() {
	ctx := context.Background()

	c, err := google.DefaultClient(ctx, compute.CloudPlatformScope)
	if err != nil {
		log.Fatal(err)
	}

	computeService, err := compute.New(c)
	if err != nil {
		log.Fatal(err)
	}

	// Project ID for this request.
	project := "burwood-sandbox" // TODO: Update placeholder value.

	// The name of the zone for this request.
	zone := "asia-east1-a" // TODO: Update placeholder value.

	// Name of the resource for this request.
	resource := "application-default-12951" // TODO: Update placeholder value.

	resp, err := computeService.Instances.SetDeletionProtection(project, zone, resource).Context(ctx).Do()
	if err != nil {
		log.Fatal(err)
	}

	// TODO: Change code below to process the `resp` object:
	fmt.Printf("%#v\n", resp)
}
