.class Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
.super Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .line 290
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 290
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private processApnAttachReq(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 385
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 386
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "Send failure connection status to RIL"

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x578

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;-><init>(Landroid/os/Handler;ILjava/lang/String;ZZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;I)V

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->post()V

    .line 389
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v2, "RJIL_IN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "DNS query posted to Epdg service"

    const-string v3, "No DNS retry required. Proceeding handling the Connect Request"

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eq v5, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->checkDnsRetryRequired(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    goto :goto_2

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto :goto_2

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eq v5, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v4

    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->checkDnsRetryRequired(ZI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 410
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    goto :goto_2

    .line 412
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)I

    .line 416
    :goto_2
    return-void
.end method

.method private processIpsecConnFailForRjil()V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "[HO_OPTIMIZATION][OH_EVENT]IPSEC fail received in inactive state, retry for available IP"

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 421
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 422
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->checkAndAddRouteForNextEpdgServerIp()Z

    move-result v0

    .line 425
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 426
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/Constants/EpdgCommands;->postRetryL2WIfRequired(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v2, "No new epdg server ip address is available, resetting the ip and counter"

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 431
    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 434
    .end local v0    # "result":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private processStartL2WHandover(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 368
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 369
    .local v0, "cid":I
    if-gez v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get cid for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 371
    return-void

    .line 373
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 374
    .local v1, "reason":Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 375
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0, v3}, Lcom/sec/epdg/Constants/EpdgCommands;->triggerHandover(Landroid/os/Handler;ILjava/lang/Boolean;)V

    .line 376
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 377
    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 381
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1200(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 294
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->enter()V

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "needHOpropUpdate":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_DI()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->is2simInserted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->isHandoverBlockForDSDS_DI()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 299
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getHandoverBlockTriggerIdForDSDS_DI()I

    move-result v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1400(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 306
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 307
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 309
    if-eqz v0, :cond_1

    .line 310
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->updateHandoverPropForDSDS_DI()V

    .line 312
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 316
    invoke-super {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->processMessage(Landroid/os/Message;)Z

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "status":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

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

    .line 319
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->InternalDisconnectRequest(I)V

    .line 360
    goto/16 :goto_0

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 356
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->InternalConnectRequest(I)V

    .line 357
    goto/16 :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "RJIL_IN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 348
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->processIpsecConnFailForRjil()V

    goto :goto_0

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 342
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->disconnectEpdgConnection(ZI)V

    .line 343
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 344
    goto :goto_0

    .line 328
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_5

    .line 329
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleDnsResolutionFail(I)V

    .line 330
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 332
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v2, "Proceeding Handling Connect Request"

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)I

    .line 335
    goto :goto_0

    .line 352
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleWifiStateChange(Landroid/os/Message;)V

    .line 353
    goto :goto_0

    .line 325
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->processApnAttachReq(Landroid/os/Message;)V

    .line 326
    goto :goto_0

    .line 321
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->processStartL2WHandover(Landroid/os/Message;)V

    .line 322
    nop

    .line 364
    :cond_9
    :goto_0
    return v0
.end method
