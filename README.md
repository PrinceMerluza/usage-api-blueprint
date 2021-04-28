# Query your API usage using Genesys Cloud CLI and analyze it with AWS S3/Athena

> View the full [Usage API Blueprint article](https://developer.genesys.cloud/blueprints/usage-api-blueprint/) on the Genesys Cloud Developer Center.

This Genesys Cloud Developer Blueprint demonstrates how to query your organization's API usage, using the Genesys Cloud CLI. Analyzing your usage is essential in optimizing and scaling any solution that uses the API. This blueprint also demonstrates an example integration by exporting the information to an AWS S3 bucket and using AWS Athena to process queries against it.

The objective of the solution is to provide a sample workflow where you can monitor, analyze, and adjust to changing growth patterns of your integration. This is not something that's often considered until it's 'too late' when there are unforeseen issues like regular rate-limitting which can impact the business. Having a system similar to this blueprint will help you track your API usage and prevent undesirable surprises caused by it.

![Usage API Blueprint](blueprint/images/overview.png)
