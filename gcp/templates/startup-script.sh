#!/bin/sh

cat >/etc/loci.conf<<EOF
[default]
Version: ${loci}
Deployment: ${deployment}
FilesystemTable: ${deployment}-fs-config
StartupTable: ${deployment}-startup-config
Profile: ${profile}
FsName: ${fsname}
MgsType: ${mgs_type}
MgsCount: ${mgs_count}
MgtType: ${mgt_type}
MgtSize: ${mgt_size}
MgtCount: ${mgt_count}
MgtRaid: ${mgt_raid}
MntType: ${mnt_type}
MntSize: ${mnt_size}
MntCount: ${mnt_count}
MntRaid: ${mnt_raid}
MdsType: ${mds_type}
MdsCount: ${mds_count}
MdtType: ${mdt_type}
MdtSize: ${mdt_size}
MdtCount: ${mdt_count}
MdtRaid: ${mdt_raid}
OssType: ${oss_type}
OssCount: ${oss_count}
OstType: ${ost_type}
OstSize: ${ost_size}
OstCount: ${ost_count}
OstRaid: ${ost_raid}
EOF

loci init
