.class Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
.super Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .line 1498
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 1498
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1501
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->enter()V

    .line 1502
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, "apnType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

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

    .line 1505
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->isHandoverBlockForDSDS_DI()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1506
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1507
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getHandoverBlockTriggerIdForDSDS_DI()I

    move-result v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1508
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->updateHandoverPropForDSDS_DI()V

    .line 1513
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1514
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1515
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->updateCpEpdgHoThreshold(Z)V

    .line 1519
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IWlanApnContext;->setmReqIpv4addr(Ljava/lang/String;)V

    .line 1520
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IWlanApnContext;->setmReqIpv6addr(Ljava/lang/String;)V

    .line 1521
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 1522
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1400(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 1523
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isNeedLteTimer()Z

    move-result v1

    .line 1524
    .local v1, "needLteTimer":Z
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1525
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1526
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1527
    if-eqz v1, :cond_2

    .line 1528
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Constants/EpdgCommands;->postRetryL2WIfRequired(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0

    .line 1530
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Constants/EpdgCommands;->postRetryL2WIfRequired(Landroid/os/Handler;ILjava/lang/String;)V

    .line 1533
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1534
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 1536
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->isWiFiScanStart()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1537
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicWiFiScan()V

    .line 1539
    :cond_5
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1543
    invoke-super {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->processMessage(Landroid/os/Message;)Z

    .line 1544
    const/4 v0, 0x0

    .line 1545
    .local v0, "status":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

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

    .line 1546
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1554
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleWifiStateChange(Landroid/os/Message;)V

    .line 1555
    goto :goto_0

    .line 1550
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1552
    nop

    .line 1559
    :goto_0
    return v0
.end method
