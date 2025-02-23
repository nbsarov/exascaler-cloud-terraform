#!/bin/sh -e

cat >/etc/loci.conf<<EOF
[default]
Version: ${loci}
Deployment: ${deployment}
FilesystemTable: ${deployment}-fs-config
Profile: ${profile}
FsName: ${fsname}
MgsType: ${mgstype}
MgsCount: ${mgscount}
MgtType: ${mgttype}
MgtSize: ${mgtsize}
MgtCount: ${mgtcount}
MgtRaid: ${mgtraid}
MntType: ${mnttype}
MntSize: ${mntsize}
MntCount: ${mntcount}
MntRaid: ${mntraid}
MdsType: ${mdstype}
MdsCount: ${mdscount}
MdtType: ${mdttype}
MdtSize: ${mdtsize}
MdtCount: ${mdtcount}
MdtRaid: ${mdtraid}
OssType: ${osstype}
OssCount: ${osscount}
OstType: ${osttype}
OstSize: ${ostsize}
OstCount: ${ostcount}
OstRaid: ${ostraid}
EOF

loci init
