.class Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
.super Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandoverConnectingState"
.end annotation


# instance fields
.field private mIsDetachRcvdFromRil:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .line 565
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    .line 566
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 565
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private isDetachRcvdFromRil()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    return v0
.end method

.method private processHandoverResult(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 783
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 784
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 785
    .local v0, "act":I
    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getHandoverEnableSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "handover disabled, need de-register"

    invoke-static {v1, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 788
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/sec/epdg/Constants/EpdgCommands;->postDeregister(Landroid/os/Handler;Ljava/lang/String;I)V

    .line 789
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isNeedLteTimer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->sendEventForTepdgLteTimerStart(Ljava/lang/String;)V

    .line 796
    .end local v0    # "act":I
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 797
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 798
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 799
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 800
    return-void
.end method

.method private processIpsecConnFail(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 733
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "[HO_OPTIMIZATION][OH_EVENT]L2W HO fail due to IPSEC fail"

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 735
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    .line 736
    .local v0, "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    return-void

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->updatePermanentFail(Ljava/lang/String;)V

    .line 742
    if-eqz v0, :cond_4

    .line 743
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/IWlanConnectResult;

    .line 744
    .local v1, "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 745
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "Throttling is needed, so move to throttle state"

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 747
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->initConnectionWhenAuthFailDuringHandover()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 749
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 750
    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->checkHandoverFailCounter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->resetThrottleState()V

    .line 753
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 754
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getBackoffTimer()I

    move-result v5

    .line 753
    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    .line 755
    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->IPSEC_CONNECTION:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/ErrorCode/IWlanError;->errorToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/16 v2, 0x12c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

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

    .line 757
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleInterval()I

    move-result v2

    if-nez v2, :cond_2

    .line 758
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->makeAttachReq()Landroid/os/Message;

    move-result-object v2

    .line 759
    .local v2, "internalAttachReq":Landroid/os/Message;
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    .line 760
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 761
    return-void

    .line 763
    .end local v2    # "internalAttachReq":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 766
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "Throttling is not needed for this error, so move to inactive state"

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 768
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 771
    .end local v1    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->delayNotifyAuthFailureTillPermanentThrottle()Z

    move-result v1

    if-nez v1, :cond_6

    .line 772
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleInterval()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 773
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 774
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 775
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFrameworkWOIntent(I)V

    goto :goto_1

    .line 778
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/epdg/IWlanConnectResult;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2800(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IWlanConnectResult;Z)V

    .line 780
    :cond_7
    :goto_1
    return-void
.end method

.method private processIpsecConnSuccess(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "errorEnableEpdg":Z
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->isDetachRcvdFromRil()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "Disconnect received during Connecting phase"

    invoke-static {v1, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 661
    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    .line 662
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->disconnectEpdgConnection(ZI)V

    .line 663
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_4

    .line 665
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 666
    .local v1, "cid":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    .line 667
    .local v3, "linkprop":Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    move-result v0

    .line 669
    new-instance v13, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v5

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v6

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 670
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v9

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, v4, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getMtu()I

    move-result v11

    move-object v4, v13

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;-><init>(Landroid/os/Handler;ILjava/lang/String;ZZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;I)V

    invoke-virtual {v13}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->post()V

    .line 672
    if-nez v0, :cond_1

    .line 673
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v5, "[HO_OPTIMIZATION][OH_EVENT]L2W HO Success"

    invoke-static {v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_1
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v5, "[HO_OPTIMIZATION][OH_EVENT]L2W HO fail due to TC rule"

    invoke-static {v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 677
    :goto_0
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->resetThrottleState()V

    .line 678
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->initConnectionWhenAuthFailDuringHandover()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 679
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->resetHandoverFailCount()V

    .line 682
    :cond_2
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isEur()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 683
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v12

    .line 685
    .local v4, "checkCallStatus":Z
    :goto_2
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3100(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->isW2LRecommended(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 686
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 687
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$3200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 692
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5, v2}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 693
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Constants/EpdgCommands;->triggerHandover(Landroid/os/Handler;ILjava/lang/Boolean;)V

    .line 694
    return-void

    .line 698
    :cond_5
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v6, 0x11

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    goto :goto_3

    .line 701
    :cond_6
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5, v2}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 704
    :goto_3
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecConnectionSuccess(Ljava/lang/String;)V

    .line 705
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 706
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 707
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 708
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isNeedLteTimer()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 709
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/IPSecDataConnSMHelper;->sendEventForTepdgLteTimerStart(Ljava/lang/String;)V

    .line 712
    :cond_7
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v5

    .line 713
    invoke-virtual {v5}, Lcom/sec/epdg/EpdgServerSelection;->cacheEpdgServerIpAddress()V

    .line 714
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 715
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 716
    if-eqz v0, :cond_8

    .line 717
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getTargetRilNetwork()I

    move-result v5

    .line 718
    .local v5, "mTargetRilNetwork":I
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v7, "Error while enable epdg, calling failure function"

    invoke-static {v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 719
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v6

    invoke-virtual {v6, v1, v5, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleEnableEpdgFailure(III)V

    .line 721
    .end local v5    # "mTargetRilNetwork":I
    goto :goto_4

    .line 723
    :cond_8
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 724
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleUpdateL2WHandoverDoneWithoutTcFailed()V

    .line 730
    .end local v1    # "cid":I
    .end local v3    # "linkprop":Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
    .end local v4    # "checkCallStatus":Z
    :cond_9
    :goto_4
    return-void
.end method

.method private setDetachRcvdFromRil(Z)V
    .locals 0
    .param p1, "isDetachRcvdFromRil"    # Z

    .line 573
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    .line 574
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 578
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->enter()V

    .line 579
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->IPSEC_CONNECTION:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HandoverConnect"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    .line 581
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 582
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 583
    return-void
.end method

.method public exit()V
    .locals 2

    .line 587
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->exit()V

    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    .line 589
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2900(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 590
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 594
    invoke-super {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->processMessage(Landroid/os/Message;)Z

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "status":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

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

    .line 597
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 625
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v2, "[HO_OPTIMIZATION][OH_EVENT]L2W HO fail due to DNS fail"

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleDnsResolutionFail(I)V

    .line 628
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)I

    .line 632
    goto/16 :goto_0

    .line 599
    :pswitch_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFrameworkWOIntent(I)V

    .line 600
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 601
    const/16 v1, 0x12c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",L2W HO fail due to RIL timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleUpdateL2WHandoverFailByNoResponse()V

    goto :goto_0

    .line 645
    :pswitch_3
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleWifiStateChange(Landroid/os/Message;)V

    .line 646
    goto :goto_0

    .line 611
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->processIpsecConnFail(Landroid/os/Message;)V

    .line 612
    goto :goto_0

    .line 608
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->processIpsecConnSuccess(Landroid/os/Message;)V

    .line 609
    goto :goto_0

    .line 634
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->processHandoverResult(Landroid/os/Message;)V

    .line 635
    goto :goto_0

    .line 639
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    .line 640
    goto :goto_0

    .line 615
    :pswitch_8
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 616
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->checkDnsRetryRequired(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3000(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 618
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v2, "No DNS retry required. Proceeding handling the Connect Request"

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)I

    .line 623
    goto :goto_0

    .line 642
    :pswitch_9
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 643
    nop

    .line 650
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
