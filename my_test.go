package test

import (
	"testing"
        "time"
	"github.com/gruntwork-io/terratest/modules/aws"
	"github.com/gruntwork-io/terratest/modules/http-helper"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestWebServer(t *testing.T) {
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "",
	})
    defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)

	instanceID := terraform.Output(t, terraformOptions, "instance_id")
	instanceIP := aws.GetPublicIpOfEc2Instance(t, instanceID, "us-west-2")

	url := "http://" + instanceIP + ":80"
	expectedStatus := 200
	expectedBody := "<h1>This is a demo of EC2 instance created using the remote state file"

	http_helper.HttpGetWithRetry(t, url, nil, expectedStatus, expectedBody, 30, 5*time.Second)
}

