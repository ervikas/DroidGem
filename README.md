# DroidGem
DroidGem is a tool for permission forecasting in Android apps. It aims to provide fine-grain control of Android apps through unsupervised and supervised graph representation learning. DroidGem relies on mainly three technical components to offer an in-context classification for permission (mis)uses by Android apps for each functionality triggered by users: (1) static inter-procedural control-flow graphs and call graphs representing each functionality in an app that may be triggered by users’ or systems’ events through UI-linked event handlers, (2) graph embedding techniques converting graph structures into numerical encoding, and (3) supervised machine learning models classifying (mis)uses of permissions based on the embedding.

The workflow of DroidGem is shown in the following figure. Static analysis generates call graphs in dot format. These generated dot files are then processed and cleaned for embedding. Graph embedding generated vectors which go for classification.

![photo_2023-07-28_12-40-39](https://github.com/ervikas/DroidGem/assets/1435552/83716320-7ce5-444e-b5a5-839afeeef06e)


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

<!--## Usage
The three phases of DroidGem are:
1. Static Program Analysis
2. Whole Graph Embedding
3. Supervised Learning-->


## Execution

Clone this repository to the computer and follow the following steps.  
<!--  make sure android-30 sdk platform is downloaded in your android sdk directory, and use your andorid sdk directory as input parameter for "runapm.sh".-->

<!--```sh
 sh runapm.sh "./your_android_sdk_dir"
```-->   

1. Make sure the Android SDK is installed on the computer. For example, the path is like "/home/<user_name>/Android/Sdk/” on Linux and "/Users/<user_name>/Library/Android/sdk" on Mac. (We tested the tool on Ubuntu and Mac only)
2. Put the apk files in the "input" directory inside the cloned directory.
3. Go to the cloned directory and run the following command. 
   ```java -jar ./extract_callgraph.jar <Android_SDK_location>```
4. Previous step will create three directories which are as follows: 
    - **dot_output:** This directory contains the graphs in dot format.  
    - **csv_output (folder) (optional):** This directory is created as part of the static analysis.
    - **sootOutput (folder) (optional):** This directory is also an optional one which is created for the processing of apk files.
    - **temp (folder) (optional):** This directory is also an optional one and is created for the processing of apk files.
5. The next step is to refine the dot files and prepare them for embedding. For doing this run this command 
   `python apm-gdot.py`. This python files needs **dot_output** directory as input and generates the output in the **dot_output** directory.
6. Run python file with the command for embedding of graphs `python apm-gembed.py`. The input and output of this file are as follows:
   - Input
     - dot_output (directory): You don't need to provide it as an input from terminal. This location is hard-coded inside the 'apm-gembed.py' file.
   - Output
     - apm_output/g2v_names_pred.txt (file)
     - apm_output/g2v_embeddings_pred.txt (file)
7. The next step is ensemble classification. For this run this command `python apm-ensemble.py'. There is no need to provide inputs from the terminal as this is hard-coded inside the python file. Inputs and outputs of this step are as follows.
   - Input
     - g2v_embeddings_train.txt (provided in repo)
     - g2v_labels_train.txt (provided in repo)
     - apm_output/g2v_names_pred.txt
     - apm_output/g2v_embeddings_pred.txt
   - Output
     - Prediction result in terminal

 ## Further information
 - `g2v_embeddings_train.txt` and `g2v_labels_train.txt` are the files which we used for training. `g2v_embeddings_train.txt` contains the embedded graphs and         `g2v_labels_train.txt` contains labels for these graphs. Each line of `g2v_embeddings_train.txt` contains an embedded graph corresponding to which each line in the `g2v_labels_train.txt` contains its label.
 - We also provided two apk files in the `input` directory and also the repository contains all the directories and files after the sample run with these two apk files.
 - Due to the big size of the dot and apk files we are not able to upload them on GitHub repository. We made them available on [Google Drive] using this link: (https://drive.google.com/drive/folders/1IdAs-a76kqJ8WolcQRI04fksKyZhcKkA?usp=sharing).

## Parameters of classifiers used in ensemble classification
- k-Nearest Neighbors
  - n_neighbors = 5
  - weights = uniform
  - leaf_size = 30
  - p (power) = 2
  - metric = Minkowski
  - metric_params = none
  - n_jobs = 1
- AdaBoost
  - estimator = DecisionTreeClassifier
  - n_estimators = 50
  - learning\_rate = 1.0
  - algorithm = SAMME.R
  - random\_state = None
- Support Vector Machine
  - C = 10
  - kernel = rbf
  - degree = 3
  - gamma = scale
  - shrinking = true
  - probability = false
  - tol = 1e-3
  - cache_size = 200
  - class_weight = 1
  - verbose = false
  - max_iter = -1
  - decision_function_shape = ovr
  - break_ties = false
  - random_state = None
- Gradient Boosting \begin{itemize}[noitemsep,topsep=0pt]
  - loss = log_loss
  - learning_rate = 0.1
  - n_estimators = 100
  - subsample = 1.0
  - criterion = friedman\_mse
  - min_samples_split = 2
  - min_samples_leaf = 1
  - min_weight_fraction_leaf = 0.0
  - max_depth = 3
  - min_impurity_decrease = 0.0
  - init = None
  - random_state = None
  - max_features = None
  - max_leaf_nodes = None
  - warm_start = False
  - validation_fraction = 0.1
  - n_iter_no_change = None
  - tol = 1e-4
  - ccp_alpha = 0.0
- Random Forest \begin{itemize}[noitemsep,topsep=0pt]
  - n_estimators = 100
  - criterion = gini
  - max_depth = None
  - min_samples_splitint = 2
  - min_samples_leaf = 1
  - min_weight_fraction_leaf = 0.0
  - max_features = sqrt
  - max_leaf_nodes = None
  - min_impurity_decrease = 0.0
  - bootstrap = True
  - oob_score = False
  - n_jobs = None
  - random_state = None
  - verbose = 0
  - warm_start = False
  - class_weight = None
  - ccp_alpha = 0.0
  - max_samples = None
- Decision Tree \begin{itemize}[noitemsep,topsep=0pt]
  - criterion = gini
  - splitter = best
  - max_depth = None
  - min_samples_split = 2
  - min_samples_leaf = 1
  - min_weight_fraction_leaf = 0
  - max_features = None (number of features)
  - random_state = None
  - max_leaf_nodes = None
  - min_impurity_decrease =0.0
  - class_weight = None
- eXtreme Gradient Boosting \begin{itemize}[noitemsep,topsep=0pt]
  - booster = gbtree
  - verbosity = 1
  - validate_parameters = false
  - nthread = default
  - disable_default_eval_metric = false
  - num_feature = default (set automatically by XGBoost)
     

<!--- The first step is to run static analysis on Android apps, to get the API callgraph of the widgets as digraph plots.


- The second and third steps are the Diagraph Data Analysis for prediction, the diagraph plots are pre-processed and whole graph embeddings are reproduced as text files (g2v_names_pred.txt and g2v_embeddings_pred.txt) in the apm-output folder.


- The last one is Supervised Learning. The Ensemble model is built with the whole graph embeddings and labels (train) text files to create prediction results with the whole graph embeddings (pred) text files. In this case, the training data are provided in the main directory.-->




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
