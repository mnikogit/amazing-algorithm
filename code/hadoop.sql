hive中查看hdfs文件： dfs -ls

hadoop fs -put /home/swq/要上传的文件  /user/hotelbi/songwq
hadoop fs -put -f /home/swq/要上传的文件  /user/hotelbi/songwq 覆盖

1，hadoop fs –fs [local | <file system URI>]：声明hadoop使用的文件系统，如果不声明的话，使用当前配置文件配置的，按如下顺序查找：hadoop jar里的hadoop-default.xml->$HADOOP_CONF_DIR下的hadoop-default.xml->$HADOOP_CONF_DIR下的hadoop-site.xml。使用local代表将本地文件系统作为hadoop的DFS。如果传递uri做参数，那么就是特定的文件系统作为DFS。
2，hadoop fs –ls <path>：等同于本地系统的ls，列出在指定目录下的文件内容，支持pattern匹配。输出格式如filename(full path)   <r n>  size.其中n代表replica的个数，size代表大小（单位bytes）。
3，hadoop fs –lsr <path>：递归列出匹配pattern的文件信息，类似ls，只不过递归列出所有子目录信息。
4，hadoop fs –du <path>：列出匹配pattern的指定的文件系统空间总量（单位bytes），等价于unix下的针对目录的du –sb <path>/*和针对文件的du –b <path> ，输出格式如name(full path)  size(in bytes)。
5，hadoop fs –dus <path>：等价于-du，输出格式也相同，只不过等价于unix的du -sb。
6，hadoop fs –mv <src> <dst>：将制定格式的文件 move到指定的目标位置。当src为多个文件时，dst必须是个目录。
7，hadoop fs –cp <src> <dst>：拷贝文件到目标位置，当src为多个文件时，dst必须是个目录。
8，hadoop fs –rm [-skipTrash] <src>：删除匹配pattern的指定文件，等价于unix下的rm <src>。
9，hadoop fs –rmr [skipTrash] <src>：递归删掉所有的文件和目录，等价于unix下的rm –rf <src>。
10，hadoop fs –rmi [skipTrash] <src>：等价于unix的rm –rfi <src>。
11，hadoop fs –put <localsrc> … <dst>：从本地系统拷贝文件到DFS。
12，hadoop fs –copyFromLocal <localsrc> … <dst>：等价于-put。
13，hadoop fs –moveFromLocal <localsrc> … <dst>：等同于-put，只不过源文件在拷贝后被删除。
14，hadoop fs –get [-ignoreCrc] [-crc] <src> <localdst>：从HDFS拷贝文件到本地文件系统，文件匹配pattern，若是多个文件，则dst必须是目录。
15，hadoop fs –getmerge <src> <localdst>：顾名思义，从DFS拷贝多个文件、合并排序为一个文件到本地文件系统。
16，hadoop fs –cat <src>：展示文件内容。
17，hadoop fs –copyToLocal [-ignoreCrc] [-crc] <src> <localdst>：等价于-get。
18，hadoop fs –mkdir <path>：在指定位置创建目录。
19，hadoop fs –setrep [-R] [-w] <rep> <path/file>：设置文件的备份级别，-R标志控制是否递归设置子目录及文件。
20，hadoop fs –chmod [-R] <MODE[,MODE]…|OCTALMODE> PATH…：修改文件的权限，-R标记递归修改。MODE为a+r,g-w,+rwx等，OCTALMODE为755这样。
21，hadoop fs -chown [-R] [OWNER][:[GROUP]] PATH…：修改文件的所有者和组。-R表示递归。
22，hadoop fs -chgrp [-R] GROUP PATH…：等价于-chown … :GROUP …。
23，hadoop fs –count[-q] <path>：计数文件个数及所占空间的详情，输出表格的列的含义依次为：DIR_COUNT,FILE_COUNT,CONTENT_SIZE,FILE_NAME或

haddop job -kill job_xxxxx
yarn application -kill  ****

search file name in hdfs
hadoop -find [path] [expression]

- 查看集群上在运行的应用
yarn application -list