set wt [gi::getWindowTypes deBookmarkManager]
db::setAttr wt.geometry -value "530x400"
db::setAttr wt.maximized -value "false"
set wt [gi::getWindowTypes dbFindReplace]
db::setAttr wt.geometry -value "580x620"
db::setAttr wt.maximized -value "false"
set wt [gi::getWindowTypes embedWaveViewer]
db::setAttr wt.geometry -value "1024x768+405+170"
db::setAttr wt.maximized -value "false"
unset wt
