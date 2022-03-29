#!/bin/bash
     ### memory free
     free -h > ~/folder1/subfolder1/free_memomry.txt
     ### disk usage
     du -h > ~/folder1/subfolder2/du_diskusage.txt
     ### disk free
     df -h > ~/folder1/subfolder3/d_diskfree.txt
      ###
     lsof > ~/folder1/subfolder4/open_list.txt