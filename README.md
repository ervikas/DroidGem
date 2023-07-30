# DroidGem
DroidGem is a tool for permission forecasting in Android apps. It aims to provide fine-grain control of Android apps through unsupervised and supervised graph representation learning. DroidGem relies on mainly three technical components to offer an in-context classification for permission (mis)uses by Android apps for each functionality triggered by users: (1) static inter-procedural control-flow graphs and call graphs representing each functionality in an app that may be triggered by users’ or systems’ events through UI-linked event handlers, (2) graph embedding techniques converting graph structures into numerical encoding, and (3) supervised machine learning models classifying (mis)uses of permissions based on the embedding.

## Requirements

- Android API: Level 30
- JAVA Version: 1.8 or above
- Python Version: 3.8
- Python Library:
    - numpy 1.22.1
    - matplotlib 3.5.1
    - networkx 2.6.3
    - pydot 1.4.2
    - karateclub 1.2.3
    - scikit-learn 1.0.2
    - xgboost 1.5.2

## Usage
The three phases of DroidGem are:
1. Static Program Analysis
2. Whole Graph Embedding
3. Supervised Learning


## Execution

Clone this repository to your computer and make sure android-30 sdk platform is downloaded in your android sdk directory, and use your andorid sdk directory as input parameter for "runapm.sh".

```sh
 sh runapm.sh "./your_android_sdk_dir"
```   



- The first step is to run static analysis on Android apps, to get the API callgraph of the widgets as digraph plots.


- The second and third steps are the Diagraph Data Analysis for prediction, the diagraph plots are pre-processed and whole graph embeddings are reproduced as text files (g2v_names_pred.txt and g2v_embeddings_pred.txt) in the apm-output folder.


- The last one is Supervised Learning. The Ensemble model is built with the whole graph embeddings and labels (train) text files to create prediction results with the whole graph embeddings (pred) text files. In this case, the training data are provided in the main directory.




## List of apps used for the evaluation
### Benign Apps
#### SG Smart Nation Apps (Available at: https://www.smartnation.gov.sg/community/apps-for-you)
- ActiveSG v2.7.12 apkpure.com.apk
- CustomsSG v2.0.3 apkpure.com.apk
- DementiaFriends v1.0.5 apkpure.com.apk
- HealthHubSG v3.5.0 apkpure.com.apk
- Healthy365 v5.6.2 apkpure.com.apk
- MyTransportSG v1.7.2 apkpure.com.apk
- NLBMobile v2.8.1 apkpure.com.apk
- OneMap v2.2.4 apkpure.com.apk
- OneService v5.5.1 apkpure.com.apk
- ParentsGateway v5.1.0 apkpure.com.apk
- Parkingsg v2.19.0 apkpure.com.apk
- PoliceSG v3.2.8 apkpure.com.apk
- SGBioAtlas v2.1.6 apkpure.com.apk
- SGSecure v1.4.6 apkpure.com.apk
- SingStat v1.6.5 apkpure.com.apk
- eApptICA v1.0.30 apkpure.com.apk
- myENV v2.7.18 apkpure.com.apk
- myResponder v3.8.0 apkpure.com.apk
- sg.gov.app.mol v1.7.8 apkpure.com.apk

#### Androzoo Apps (Available at: https://androzoo.uni.lu)
- aboard.and.mentalarithmetic.apk
- abservices.thuisbridge2.apk
- ae.gov.cda.voulunteer.apk
- afghanistan.hitsongs.apk
- air.bahraniapps.comicpagecreator.apk
- air.com.applauz.grillking.apk
- air.enter.ShoutPlayer.apk
- air.imi.production.threeportions.apk
- animals.giraffe.animal.lazoo.tycoon.baby.giggle.sounds.apk
- app.eqwip.apk
- app.golive.artiste.jose.apk
- app.hologram.virtual.drum.simulator.apk
- apps.fortuneappsdev.fakecalllogfunnyjoke.apk
- apps.krokom.apk
- ar.com.wd.wdservice.apk
- art.plane.air.thema.apk
- at.apa.pdfwlclient.lensing dorstenerzeitung.apk
- au.com.messengerbird618802.apk
- au.com.wmac.schoolapp.apk
- be.jehay.apk
- be.yellowbrick.mobile.apk
- com.DIYPalletProjectInstructions.androidto.apk
- com.aghani johnydev92.jafarghazal.apk
- com.aim.racing.sf.apk
- com.andromo.dev529694.app568509.apk
- com.bridgetechnocrats.dressureapp.apk
- com.canada.latest.news.apk
- com.deepsgamestudio.kolam.apk
- com.doroossar.best.top.apk
- com.fta.rajampat.wallpaper.backgrounds.papua.live.free.fullhd.apk

### Malicious Apps
#### DeepIntent Apps (Available at: https://github.com/deepintent-ccs/DeepIntent)
- com.Abby Alex.apk
- com.apostek.untangle.apk
- com.dale.clearmaster.apk
- com.dolm.YakyukenOLG.apk
- com.eoznxfx.zlc.eovmidt.uglmnk.apk
- com.feiyuapp.manager.apk
- com.gg.malixiongdikll.test.apk
- com.kfmillionairegame.apk
- com.listen5.gifby.apk
- com.tanggo.jewelshunt.apk
- com.xx.race.dq.apk
- com.yuasdsdmendia.mobbles.apk
- me.hypertext.wml.llk.apk
- net.lazyer.wiyun.ppl.yxjd.apk
- net.lepeng.superboxsszh.apk
- wabao.ETAppLock.apk

#### Other Apps
- biz.nlnrnqn.noknlnkno.apk
- biz.nnnrnnn.loknlnonk.apk
- biz.nsnnnon.moknlnsnp.apk
- cn.com.rlmmpmi.ghjkqkh01.apk
- cn.milan.photo.apk
- cn.npnnntn.noknlnono.apk
- com.blood.zombiescn.apk
- com.bobgame.majong.plugin.hk.apk
- com.bubble.biu.apk
- com.letang.game111.cn.apk
- com.mpisoft.se themaze.apk
- com.p9ipl.fingerrevolution pro.apk
- com.suoxiaomaomu.suoxiaomaomucpc.apk
- com.toprays.reader.dskb.zy.apk
- com.v8youxi.qmxxdz.apk
- com.yueyun.laizimiaoxingdeni.apk
- info.nlnnntn.qnpoknlnpnr.apk
- info.nlnrnon.nnmoknmnknk.apk
- info.nqnqnqn.toknlnknn.apk
- mobi.nlnsnkn.pntoknlnknn.apk
- mobi.nqnlnmn.poknlnsnl.apk
- org.cddgame.byscj1.seer.apk
- org.ecekeie.cejefdlehekee.apk
- org.wallpapers.newyear.apk
