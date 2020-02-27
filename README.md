1) Amazon Personalize can make recommendations based purely on historical imported data as well as can also make                recommendations purely on real time event data, or a combination of both, using the Amazon Personalize event ingestion        SDK.

2) In this document we would be concentrating on how to make recommendations on real time event data.

3) Unlike historical data, after a campaign is created, new recorded event data is automatically used when getting              recommendations from the campaign.

        Note:
        * The minimum data requirements to train a model are:
        * 1000 records of combined interaction data (after filtering by eventType and eventValueThreshold,     if provided)
        * 25 unique users with at least 2 interactions each


4) To record events, you need the following:

        * A dataset group that includes an Interactions dataset, which can be empty.
        * An event tracker.
        * A call to the PutEvents operation.

   Amazon Personalize predefined recipes are compatible with the PutEvents API. This includes the required sessionId            parameter which makes these recipes aware of sessions.


5) This step will describe hands on. We have two ways to create recommendations on real time event data.

        1) AWS Cli 
        2) AWS Lambda function

        * lets discuss AWS Cli first to get recommendations from real event Data.

        AWS Cli:

          * Getting Tracking ID:

                aws personalize create-event-tracker \
                --name MovieClickTracker \
                --dataset-group-arn arn:aws:personalize:us-west-2:acct-id:dataset-group/MovieClickGroup 
        
          * Put Events Operation:

                aws personalize-events put-events \
                --tracking-id tracking_id \
                --user-id USER_ID \
                --session-id session_id \
                --event-list '[{
                        "sentAt": "TIMESTAMP",
                        "eventType": "EVENT_TYPE",
                        "properties": "{\"itemId\": \"ITEM_ID\"}"
                        }]'


        AWS Lambda: 

          * Getting Tracking ID: 

              We created event Tracker from Amazon Personalize console by clicking on 'create event tracker option', from                   where we got our event tracking id.

          *   In the next step we created lambda function named as awsPersonlizeEventStreamData. We needed a role with                     amazonPersonalize permission, we created that. You can check lambda function in file                                         awsPersonlizeEventStreamData.py            
