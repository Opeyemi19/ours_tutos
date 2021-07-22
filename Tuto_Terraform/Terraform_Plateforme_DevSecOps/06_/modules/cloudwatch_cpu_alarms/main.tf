# Autoscaling notifications
resource "aws_sns_topic" "my-sns" {
 name         = "${var.prefix_name}-asg-sns"
 display_name = "my ASG SNS topic"
} 

resource "aws_autoscaling_notification" "my-notify" {
 group_names = ["${var.asg_name}"]
 topic_arn     = "${aws_sns_topic.my-sns.arn}"
 notifications  = [
   "autoscaling:EC2_INSTANCE_LAUNCH",
   "autoscaling:EC2_INSTANCE_TERMINATE",
   "autoscaling:EC2_INSTANCE_LAUNCH_ERROR"
 ]
}