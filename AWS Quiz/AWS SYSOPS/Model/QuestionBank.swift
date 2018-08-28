//
//  QuestionBank.swift
//  AWS SYSOPS
//
//  Created by KS on 8/27/18.
//  Copyright © 2018 KS. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        list.append(Question(questionText: "You are currently hosting multiple applications in a VPC and have logged numerous port scans coming in from a specific IP address block. Your security team has requested that all access from the offending IP address block be denied for the next 24 hours. Which of the following is the best method to quickly and temporarily deny access from the specified IP address block?", choiceA: "Modify the Network ACLs associated with all public subnets in the VPC to deny access from the IP address block", answer: 1))
        list.append(Question(questionText: "A user has configured Elastic Load Balancing by enabling a Secure Socket Layer (SSL. negotiation configuration known as a Security Policy. Which of the below mentioned options is not part of this secure policy while negotiating the SSL connection between the user and the client?", choiceA: "Client Order Preference", answer: 1))
        list.append(Question(questionText: "A user has configured CloudWatch monitoring on an EBS backed EC2 instance. If the user has not attached any additional device, which of the below mentioned metrics will always show a 0 value?", choiceA: "DiskReadBytes", answer: 1))
        list.append(Question(questionText: "A user has launched an EBS backed EC2 instance. What will be the difference while performing the restart or stop/start options on that instance?", choiceA: "For restart it does not charge for an extra hour, while every stop/start it will be charged as a separate hour", answer: 1))
        list.append(Question(questionText: "A user has created a queue named “myqueue” in US-East region with AWS SQS. The user’s AWS account ID is 123456789012. If the user wants to perform some action on this queue, which of the below Queue URL should he use?", choiceA: "http://sqs.us-east-1.amazonaws.com/123456789012/myqueue", answer: 1))
        list.append(Question(questionText: "A sys admin is trying to understand the Auto Scaling activities. Which of the below mentioned processes is not performed by Auto Scaling?", choiceA: "Reboot Instance", answer: 1))
        list.append(Question(questionText: "A sys admin is trying to understand EBS snapshots. Which of the below mentioned statements will not be useful to the admin to understand the concepts about a snapshot?", choiceA: "The snapshot is synchronous", answer: 1))
        list.append(Question(questionText: "A root account owner has created an S3 bucket testmycloud. The account owner wants to allow everyone to upload the objects as well as enforce that the person who uploaded the object should manage the permission of those objects. Which is the easiest way to achieve this?", choiceA: "The root account should use ACL with the bucket to allow everyone to upload the object", answer: 1))
        list.append(Question(questionText: "An organization has setup consolidated billing with 3 different AWS accounts. Which of the below mentioned advantages will organization receive in terms of the AWS pricing?", choiceA: "All AWS accounts will be charged for S3 storage by combining the total storage of each account", answer: 1))
        list.append(Question(questionText: "A user has launched two EBS backed EC2 instances in the US-East-1a region. The user wants to change the zone of one of the instances. How can the user change it?", choiceA: "Create an AMI of the running instance and launch the instance in a separate AZ", answer: 1))
       
    }
    
}
