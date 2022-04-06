#!/bin/sh
rsync -avch --delete --ignore-existing --info=progress mspolito:~/cap* ./

