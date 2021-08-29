.class Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;
.super Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialConnectingState"
.end annotation


# instance fields
.field private mIsDetachRcvdFromRil:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .line 437
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    .line 438
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->mIsDetachRcvdFromRil:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 437
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private isDetachRcvdFromRil()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->mIsDetachRcvdFromRil:Z

    return v0
.end method

.method private processIpsecConnFail(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 534
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 535
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    .line 536
    .local v0, "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    return-void

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgTxEvents.IPSEC_CONN_FAIL: apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->updatePermanentFail(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->delayNotifyAuthFailureTillPermanentThrottle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 545
    :cond_1
    if-eqz v0, :cond_3

    .line 546
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/IWlanConnectResult;

    .line 547
    .local v1, "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "Throttling is needed., so move to throttle state"

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "Throttling is not needed for this error, so move to inactive state"

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 556
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 557
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getBackoffTimer()I

    move-result v5

    .line 556
    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    .line 558
    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->IPSEC_CONNECTION:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/ErrorCode/IWlanError;->errorToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/16 v2, 0xc8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/ErrorCode/IWlanError;->errorToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 561
    .end local v1    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/epdg/IWlanConnectResult;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2800(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IWlanConnectResult;Z)V

    .line 562
    return-void
.end method

.method private processIpsecConnSuccess(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 500
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->isDetachRcvdFromRil()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 501
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isConnectedOnWifi()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 502
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 508
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 509
    .local v0, "cid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    .line 510
    .local v1, "linkprop":Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update conn status for cid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isHandOver is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 511
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsAirplaneMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setEpdgInterfaceDropRule(ZI)V

    .line 517
    :cond_1
    new-instance v10, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v7

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v2, v2, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 518
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnSetting;->getMtu()I

    move-result v9

    move-object v2, v10

    move-object v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;-><init>(Landroid/os/Handler;ILjava/lang/String;ZZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;I)V

    invoke-virtual {v10}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->post()V

    .line 519
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->isTmoSASupport()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getSnssai()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getPlmnid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/EpdgSubScription;->updateSnssai(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->resetThrottleState()V

    .line 523
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->initConnectionWhenAuthFailDuringHandover()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->resetHandoverFailCount()V

    .line 526
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecConnectionSuccess(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->cacheEpdgServerIpAddress()V

    .line 529
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_1

    .line 503
    .end local v0    # "cid":I
    .end local v1    # "linkprop":Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "Disconnect received during Connecting phase"

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->setDetachRcvdFromRil(Z)V

    .line 505
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->disconnectEpdgConnection(ZI)V

    .line 506
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 531
    :goto_1
    return-void
.end method

.method private setDetachRcvdFromRil(Z)V
    .locals 0
    .param p1, "isDetachRcvdFromRil"    # Z

    .line 445
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->mIsDetachRcvdFromRil:Z

    .line 446
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 450
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->enter()V

    .line 451
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->IPSEC_CONNECTION:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InitialConnect"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->setDetachRcvdFromRil(Z)V

    .line 453
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 454
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 455
    return-void
.end method

.method public exit()V
    .locals 2

    .line 459
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->exit()V

    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->setDetachRcvdFromRil(Z)V

    .line 461
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2400(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 462
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 466
    invoke-super {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->processMessage(Landroid/os/Message;)Z

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "status":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

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

    .line 469
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_4

    const/16 v2, 0xf

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 472
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 473
    goto :goto_0

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleWifiStateChange(Landroid/os/Message;)V

    .line 487
    goto :goto_0

    .line 478
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->processIpsecConnFail(Landroid/os/Message;)V

    .line 479
    goto :goto_0

    .line 475
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->processIpsecConnSuccess(Landroid/os/Message;)V

    .line 476
    goto :goto_0

    .line 483
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->setDetachRcvdFromRil(Z)V

    .line 484
    nop

    .line 491
    :goto_0
    return v0
.end method
