import boto3
import logging

# Configure logging
logger = logging.getLogger()
logger.setLevel(logging.INFO)

def lambda_handler(event, context):
    # TODO implement
    
    try:
        sesclient = boto3.client('ses')
        subject = "From AWS"
        body = "the state file was changed."
        message = {
            "Subject": {
                "Data": subject
            },
            "Body": {
                "Text": {
                    "Data": body
                }
            }
        }
        sesclient.send_email(Source="SOURCE_EMAIL_HERE", Destination={"ToAddresses": ["DEST_EMAILS_HERE",]}, Message=message)

    except Exception as e:
        logger.error(e)
        print(e)


    # save logs
    logger.info(f"message was sent Successfully.")
    
    