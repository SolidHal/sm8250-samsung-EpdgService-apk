.class Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;
.super Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .line 1460
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 1460
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1463
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->enter()V

    .line 1464
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 1465
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1469
    invoke-super {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->processMessage(Landroid/os/Message;)Z

    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, "status":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

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

    .line 1472
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 1483
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 1484
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1486
    goto :goto_0

    .line 1488
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleWifiStateChange(Landroid/os/Message;)V

    .line 1489
    goto :goto_0

    .line 1474
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1475
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 1476
    .local v1, "reason":Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1477
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 1494
    .end local v1    # "reason":Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    :cond_3
    :goto_0
    return v0
.end method
