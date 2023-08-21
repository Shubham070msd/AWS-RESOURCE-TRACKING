## OUTPUT ##
<p>+ echo 'Print List of S3 buckets'</p>
<p>Print List of S3 buckets</p>
<p>+ aws s3 ls</p>
<p>+ echo 'Print List of EC2 instances'</p>
<p>Print List of EC2 instances</p>
<p>+ jq '.Reservations[] .Instances[] .InstanceId'</p>
<p>+ aws ec2 describe-instances</p>
<p>"i-09bd9d3109a92376d"</p>
<p>"i-0cb16da1945f1a173"</p>
<p>+echo 'Print List of Lambda Functions'</p>
<p>Print List of Lambda Functions</p>
<p>+ aws lambda list-functions</p>
{
<p>	"Functions": []</p>
}
<p>+ echo 'Print List of IAM Users'</p>
<p>Print List of IAM Users</p>
<p>+ aws iam list-users</p>
{
<p>	"Users": []</p>
}
</p>
