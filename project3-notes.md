# Project 3 — Serverless REST API

## Architecture
- API Gateway (HTTP API) — receives HTTP requests
- Lambda — runs Python code, no servers to manage
- DynamoDB — NoSQL table storing visitor data
- IAM role — grants Lambda permission to access DynamoDB and CloudWatch

## Services used
- AWS Lambda (Python 3.13 runtime)
- Amazon API Gateway (HTTP API)
- Amazon DynamoDB (on-demand capacity)
- AWS IAM (custom execution role)
- Amazon CloudWatch (automatic logging)

## DynamoDB table
- Table name: visitors-table
- Partition key: id (String)
- Capacity mode: on-demand (free tier friendly)

## IAM role
- Role name: lambda-visitors-role
- Policies attached:
  - AmazonDynamoDBFullAccess
  - AWSLambdaBasicExecutionRole

## Lambda function
- Function name: visitors-api
- Runtime: Python 3.13
- Execution role: lambda-visitors-role
- Handles both GET (list visitors) and POST (add visitor)

## API Gateway
- Type: HTTP API
- Routes:
  - GET /visitors
  - POST /visitors
- Stage: $default (auto-deploy enabled)
- Invoke URL requires the route path appended manually,
  e.g. https://api-id.execute-api.region.amazonaws.com/visitors

## Key lesson — REST API vs HTTP API event structure
AWS has two different API Gateway types, and they pass data to Lambda
in different event formats:

REST API (older):
    event['httpMethod']

HTTP API (newer, what I used):
    event['requestContext']['http']['method']

Using the wrong format causes Lambda to silently fail to detect the
HTTP method, even though API Gateway successfully invokes the function.
The fix is to always check which API Gateway type is configured before
writing the Lambda handler code.

## Testing approach
1. Test Lambda directly first using built-in test events
   - Confirms the function and DynamoDB connection works
   - Isolates Lambda issues from API Gateway issues
2. Then test through API Gateway via browser/curl
   - Confirms the full request path works end to end

## curl command to test POST
curl -X POST https://API-INVOKE-URL/visitors -H "Content-Type: application/json" -d "{\"name\": \"New Visitor\"}"

## Cost
- Lambda: free tier covers 1 million requests/month
- DynamoDB: free tier covers 25GB storage + 200M requests/month
- API Gateway: free tier covers 1 million HTTP API calls/month
- Essentially $0/month for a learning project
