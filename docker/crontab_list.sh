0 */1 * * * git -C /jscool/ pull >> /jscooldocker/logs/pull.log 2>&1
#0 */2 * * * git -C /jscooldocker/ pull >> /jscooldocker/logs/pull.log 2>&1
# 每3天的23:50分清理一次日志
50 23 */3 * * rm -rf /jscooldocker/logs/*.log
2 */1 * * * crontab /jscooldocker/docker/${CRONTAB_LIST_FILE}
0 0-18/6,9 * * * node /jscool/lxk0301/jd_818.js >> /jscooldocker/logs/jd_818.log 2>&1
0,10 0 * * * node /jscool/lxk0301/jd_xtg.js >> /jscooldocker/logs/jd_xtg.log 2>&1
0 0,12,18 * * * node /jscool/lxk0301/jd_bean_sign.js >> /jscooldocker/logs/jd_bean_sign.log 2>&1
0 0 * * * node /jscool/lxk0301/jd_blueCoin.js >> /jscooldocker/logs/jd_blueCoin.log 2>&1
0 0 * * * node /jscool/lxk0301/jd_club_lottery.js >> /jscooldocker/logs/jd_club_lottery.log 2>&1
5 6-18/6 * * * node /jscool/lxk0301/jd_fruit.js >> /jscooldocker/logs/jd_fruit.log 2>&1
15 */2 * * * node /jscool/lxk0301/jd_joy.js >> /jscooldocker/logs/jd_joy.log 2>&1
15 */1 * * * node /jscool/lxk0301/jd_joy_feedPets.js >> /jscooldocker/logs/jd_joy_feedPets.log 2>&1
0 0-16/8 * * * node /jscool/lxk0301/jd_joy_reward.js >> /jscooldocker/logs/jd_joy_reward.log 2>&1
0 0,6 * * * node /jscool/lxk0301/jd_joy_steal.js >> /jscooldocker/logs/jd_joy_steal.log 2>&1
0 */2 * * * node /jscool/lxk0301/jd_moneyTree.js >> /jscooldocker/logs/jd_moneyTree.log 2>&1
5 6-18/6 * * * node /jscool/lxk0301/jd_pet.js >> /jscooldocker/logs/jd_pet.log 2>&1
0 7-22/1 * * * node /jscool/lxk0301/jd_plantBean.js >> /jscooldocker/logs/jd_plantBean.log 2>&1
1 1 * * * node /jscool/lxk0301/jd_redPacket.js >> /jscooldocker/logs/jd_redPacket.log 2>&1
10 0 * * * node /jscool/lxk0301/jd_shop.js >> /jscooldocker/logs/jd_shop.log 2>&1
8 */3 * * * node /jscool/lxk0301/jd_speed.js >> /jscooldocker/logs/jd_speed.log 2>&1
11 1-23/5 * * * node /jscool/lxk0301/jd_superMarket.js >> /jscooldocker/logs/jd_superMarket.log 2>&1
55 23 * * * node /jscool/lxk0301/jd_unsubscribe.js >> /jscooldocker/logs/jd_unsubscribe.log 2>&1
0 */1 * * * node /jscool/lxk0301/jd_collectProduceScore.js >> /jscooldocker/logs/jd_collectProduceScore.log 2>&1
0 2 * * * node /jscool/lxk0301/jd_bean_change.js >> /jscooldocker/logs/jd_bean_change.log 2>&1