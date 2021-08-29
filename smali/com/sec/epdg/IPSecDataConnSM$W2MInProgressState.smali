.class Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
.super Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "W2MInProgressState"
.end annotation


# instance fields
.field private isHOResumeReceived:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .line 1120
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    .line 1121
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 1120
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private processHandoverResult(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1237
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1238
    .local v0, "pdnType":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1239
    .local v1, "act":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    .line 1240
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On handover resume, received act is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cid is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1243
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x21

    if-ne v1, v5, :cond_0

    .line 1244
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v6, "[HO_OPTIMIZATION][OH_EVENT]W2L HO success"

    invoke-static {v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1245
    sget-object v5, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "W2L_HO_Success"

    invoke-static {v5, v6, v7}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5, v3, v0}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    .line 1247
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1248
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1249
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->sendEventForTepdgTimerStart(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1250
    :cond_0
    const/16 v5, 0x30

    const-string v6, ",W2L HO fail due to RAT attach fail"

    const/16 v7, 0x12c

    if-ne v1, v5, :cond_5

    .line 1251
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v8, "[HO_OPTIMIZATION][OH_EVENT]W2L HO fail due to RAT attach fail"

    invoke-static {v5, v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1252
    sget-object v5, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v8}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "W2L_HO_Fail"

    invoke-static {v5, v8, v9}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1254
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    .line 1258
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1259
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgUtils;->isConnectedOnWifi()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1260
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v5, v6, :cond_1

    .line 1261
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HO_OPTIMIZATION][OH_EVENT]mIsWifiConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsWifiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , So we need to check current Wi-Fi condition to maintain IWLAN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1262
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1263
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1264
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 1265
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1266
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/Constants/EpdgCommands;->postUpdateWifiRssiToMaintainIWlan(Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 1267
    :cond_1
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsWifiConnected:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->isW2LRecommended(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1285
    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1286
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1287
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 1288
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_2

    .line 1268
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-ne v5, v6, :cond_4

    .line 1270
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyEpdgStatusToHandoverW2M(Ljava/lang/String;)V

    .line 1271
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lcom/sec/epdg/Constants/EpdgCommands;->postDeregister(Landroid/os/Handler;Ljava/lang/String;I)V

    goto :goto_1

    .line 1273
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    .line 1275
    :goto_1
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1276
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1279
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1280
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getHandoverEnableSetting()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1281
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->sendEventForTepdgTimerStart(Ljava/lang/String;)V

    goto :goto_2

    .line 1290
    :cond_5
    const/16 v2, 0xff

    if-ne v1, v2, :cond_6

    .line 1291
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v5, "[HO_OPTIMIZATION][OH_EVENT]W2L HO fail due to IP change"

    invoke-static {v2, v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1293
    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "W2L_HO_IPChange"

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1295
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1296
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1297
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    .line 1299
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1125
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->enter()V

    .line 1126
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "W2L_HO_Start"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 1128
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/32 v2, 0x27100

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 1129
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 1130
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 1131
    iput-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    .line 1132
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1136
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->exit()V

    .line 1137
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1138
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1142
    invoke-super {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->processMessage(Landroid/os/Message;)Z

    .line 1143
    const/4 v0, 0x0

    .line 1144
    .local v0, "status":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/epdg/Constants/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1145
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb

    const/16 v4, 0xf

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe

    if-eq v1, v2, :cond_6

    if-eq v1, v4, :cond_0

    goto/16 :goto_1

    .line 1206
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1207
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1208
    .local v1, "isHandoverDetach":Z
    if-nez v1, :cond_1

    .line 1209
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 1212
    .end local v1    # "isHandoverDetach":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyEpdgStatusToHandoverW2M(Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    .line 1224
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->disconnectEpdgConnection(ZI)V

    .line 1225
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1226
    goto/16 :goto_1

    .line 1154
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1155
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1156
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1157
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    .line 1158
    goto/16 :goto_1

    .line 1228
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleWifiStateChange(Landroid/os/Message;)V

    .line 1229
    goto/16 :goto_1

    .line 1162
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyEpdgStatusToHandoverW2M(Ljava/lang/String;)V

    .line 1163
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    .line 1164
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1166
    goto/16 :goto_1

    .line 1168
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->processHandoverResult(Landroid/os/Message;)V

    .line 1169
    goto/16 :goto_1

    .line 1174
    :cond_6
    const/4 v1, 0x0

    .line 1175
    .local v1, "supressW2LToRil":Z
    iget-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    if-nez v2, :cond_8

    .line 1176
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1177
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1176
    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1178
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v4, "APN_DETACH req received and cellular unavailable"

    invoke-static {v2, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1179
    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "W2L_HO_Supress"

    invoke-static {v2, v4, v5}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const/16 v2, 0x12c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",W2L_HO_Supress"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1181
    const/4 v1, 0x1

    goto :goto_0

    .line 1183
    :cond_7
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "APN_DETACH req received  before HO_RESUME. Unexpected event."

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1185
    goto :goto_1

    .line 1188
    :cond_8
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyEpdgStatusToHandoverW2M(Ljava/lang/String;)V

    .line 1198
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    .line 1200
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->disconnectEpdgConnection(ZI)V

    .line 1201
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1203
    .end local v1    # "supressW2LToRil":Z
    goto :goto_1

    .line 1147
    :cond_9
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1148
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 1149
    .local v1, "reason":Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1150
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 1233
    .end local v1    # "reason":Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    :cond_a
    :goto_1
    return v0
.end method
