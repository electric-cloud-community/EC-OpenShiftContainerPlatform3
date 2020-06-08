call flowpdk generate plugin --overwrite
REM call flowpdk generate plugin
call flowpdk build
call ectool installPlugin build\EC-OpenShiftContainerPlatform3.zip
call ectool promotePlugin EC-OpenShiftContainerPlatform3-0.9.1.0
