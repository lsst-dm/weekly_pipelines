# setup Rubin env
export WEEKLY='2022_36'
source /cvmfs/sw.lsst.eu/linux-x86_64/lsst_distrib/w_${WEEKLY}/loadLSST.bash 
setup lsst_distrib

# setup PanDA env. Will be a simple step when the deployment of PanDA is fully done.
export PANDA_CONFIG_ROOT=$HOME
export PANDA_URL_SSL=https://pandaserver-doma.cern.ch:25443/server/panda
export PANDA_URL=http://pandaserver-doma.cern.ch:25080/server/panda
export PANDA_AUTH=oidc
export PANDA_VERIFY_HOST=off
export PANDA_AUTH_VO=Rubin

# IDDS_CONFIG path depends on the weekly version 
idds_cfg_template=/cvmfs/sw.lsst.eu/linux-x86_64/lsst_distrib/w_${WEEKLY}/conda/envs/lsst-scipipe-*/etc/idds/idds.cfg.client.template
export IDDS_CONFIG=`echo $idds_cfg_template |  cut -d ' ' -f1`
