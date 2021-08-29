.class Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
.super Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field interfaceUpRecvd:Z

.field otherSoltIndex:I

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .line 803
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    .line 804
    iget-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->otherSoltIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 803
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private SetDsdsDiHandoverBlock()V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_DI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->is2simInserted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 878
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 879
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->isHandoverBlockForDSDS_DI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getCallStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "ipsec connected and call exist on DSDS_DI model.block ho for another sim"

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 882
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverBlockForDSDS_DI(ZI)V

    .line 883
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverPropForDSDS_DI(ZI)V

    goto :goto_1

    .line 886
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getHandoverBlockTriggerIdForDSDS_DI()I

    move-result v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 887
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->updateHandoverPropForDSDS_DI()V

    .line 891
    :cond_2
    :goto_1
    return-void
.end method

.method private processDetachRequest(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    .line 1097
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1098
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyEpdgStatusToHandoverW2M(Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getEnableHwKeepalive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1104
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_1
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1109
    .local v1, "isHandoverDetach":Z
    if-eqz v1, :cond_2

    .line 1110
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 1113
    .end local v1    # "isHandoverDetach":Z
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    .line 1115
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->disconnectEpdgConnection(ZI)V

    .line 1116
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1117
    return-void
.end method

.method private processDpdTimerExpired()V
    .locals 9

    .line 1025
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getEnableHwKeepalive()Z

    move-result v0

    const/16 v1, 0x10

    .line 1029
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1025
    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$3800(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1029
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v0, v3, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v3

    iget v3, v3, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->PDPD_CHECK_TIMEOUT:I

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3100(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->checkConnection(II)V

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1036
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "xcap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1037
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1038
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    int-to-long v3, v0

    .line 1039
    .local v3, "dpdTimer":J
    const-wide/16 v5, 0x0

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    .line 1040
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SM start periodic DPD timer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getEnableHwKeepalive()Z

    move-result v0

    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    mul-long/2addr v5, v3

    invoke-virtual {v0, v1, v5, v6}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;J)V

    goto :goto_1

    .line 1044
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    mul-long v7, v3, v5

    invoke-virtual {v0, v1, v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 1045
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long/2addr v5, v3

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    .end local v3    # "dpdTimer":J
    :cond_4
    :goto_1
    return-void
.end method

.method private processIpsecConnFail(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1052
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Telia_SE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1053
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1054
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1055
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    .line 1054
    invoke-virtual {v0, v3, v1}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    .line 1057
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->checkAndAddRouteForNextEpdgServerIp()Z

    move-result v0

    .line 1058
    .local v0, "result":Z
    if-ne v0, v1, :cond_1

    .line 1059
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next epdg server ip address is available apn type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1060
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ipv4 address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, v4, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1061
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ipv6 addr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, v4, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1062
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1059
    invoke-static {v1, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1063
    new-instance v1, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1064
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v5

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v3, v3, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1065
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v3, v3, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1066
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1068
    .local v1, "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1069
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1070
    .local v3, "apnAttachReq":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1071
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 1073
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 1074
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1076
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    .line 1077
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1078
    return-void

    .line 1080
    .end local v0    # "result":Z
    .end local v1    # "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    .end local v3    # "apnAttachReq":Landroid/os/Message;
    :cond_1
    goto :goto_0

    .line 1081
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isWifiOnlyOperator()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1082
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "Wifi only operator in SEA and need de-register"

    invoke-static {v0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/sec/epdg/Constants/EpdgCommands;->postDeregister(Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1084
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1085
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1086
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1087
    return-void

    .line 1089
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyEpdgStatusToHandoverW2M(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    .line 1091
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Constants/EpdgCommands;->triggerHandover(Landroid/os/Handler;ILjava/lang/Boolean;)V

    .line 1092
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1093
    return-void
.end method

.method private processSmTimeOut()V
    .locals 4

    .line 1008
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "Ignoring the time out  message as this is a handover request. Mobile Interface is already up."

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    if-ne v0, v1, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "Initial attach scenario. Mobile Interface is already up. Ignoring the timeout message. NO action needed"

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "RIL ISSUE -- Interface up event not recevied for Initial attach to ePDG. Attempting to tear down control path."

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1016
    .local v0, "msgForDisconnect":Landroid/os/Message;
    const/16 v1, 0x29

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1017
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1018
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1019
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1020
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1022
    .end local v0    # "msgForDisconnect":Landroid/os/Message;
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    .line 809
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->enter()V

    .line 810
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->IPSEC_CONNECTION:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPsecConnected"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 812
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->incrementNumOfApnsOnEpdg()V

    .line 814
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ConnectedState enter apnType: "

    const-string v2, " Seconds"

    const-string v3, "SM start periodic DPD timer : "

    const-wide/16 v4, 0x0

    const/16 v6, 0x10

    .line 830
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 814
    const-wide/16 v8, 0x3e8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 815
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->startDPDHandler()V

    .line 816
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    int-to-long v10, v0

    .line 817
    .local v10, "dpdTimer":J
    cmp-long v0, v4, v10

    if-gez v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getEnableHwKeepalive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 821
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->otherSoltIndex:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->otherSoltIndex:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->runningImsDdpPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/sec/epdg/EpdgPeriodicDpd;->getNextDpdTime(J)J

    move-result-wide v0

    .line 823
    .local v0, "nextDpdTime":J
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;J)V

    .line 824
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second dpdtimer will run at nextDpdTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 825
    .end local v0    # "nextDpdTime":J
    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    mul-long/2addr v8, v10

    invoke-virtual {v0, v1, v8, v9}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;J)V

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    mul-long v1, v10, v8

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 830
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long/2addr v8, v10

    add-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "enter connected state and ims call connected. start esp loss checking."

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/epdg/IPSecDataConnSM;->espLossChecking:Z

    .line 836
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3100(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->startEspCheck(II)V

    .line 838
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->controlWiFiThresholdDuringCall(Z)V

    .line 843
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 844
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->updateCpEpdgHoThreshold(Z)V

    goto/16 :goto_1

    .line 846
    .end local v10    # "dpdTimer":J
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v10, "xcap"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 847
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 848
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    int-to-long v10, v0

    .line 849
    .restart local v10    # "dpdTimer":J
    cmp-long v0, v4, v10

    if-gez v0, :cond_7

    .line 850
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getEnableHwKeepalive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 852
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    mul-long/2addr v8, v10

    invoke-virtual {v0, v1, v8, v9}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;J)V

    goto :goto_2

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    mul-long v1, v10, v8

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 856
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long/2addr v8, v10

    add-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 846
    .end local v10    # "dpdTimer":J
    :cond_6
    :goto_1
    nop

    .line 861
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->SetDsdsDiHandoverBlock()V

    .line 863
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 868
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v2, 0xb

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 869
    iput-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    goto :goto_3

    .line 871
    :cond_8
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 872
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 874
    :goto_3
    return-void
.end method

.method public exit()V
    .locals 5

    .line 895
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->exit()V

    .line 896
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$3400(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 897
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ConnectedState exit apnType: "

    const/16 v2, 0x10

    .line 904
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 897
    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->stopDPDHandler()V

    .line 899
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getEnableHwKeepalive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3500(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 904
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-boolean v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->espLossChecking:Z

    if-eqz v0, :cond_3

    .line 907
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, "exit connected state and espLossChecking is true. stop esp loss checking."

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/epdg/IPSecDataConnSM;->espLossChecking:Z

    .line 909
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3100(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->stopEspCheck(I)V

    .line 911
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 912
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->controlWiFiThresholdDuringCall(Z)V

    goto :goto_1

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "xcap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 916
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getEnableHwKeepalive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    goto :goto_1

    .line 920
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 921
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->decrementNumOfApnsOnEpdg()V

    .line 925
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->resetIsEpdgConnBlocked()V

    .line 926
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 930
    invoke-super {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->processMessage(Landroid/os/Message;)Z

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "status":Z
    const/4 v1, 0x0

    .line 933
    .local v1, "errorEnableEpdg":Z
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/Constants/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 934
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 955
    :pswitch_1
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3100(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgSubScription;->isW2LRecommended(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 956
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 961
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 962
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Constants/EpdgCommands;->triggerHandover(Landroid/os/Handler;ILjava/lang/Boolean;)V

    goto/16 :goto_0

    .line 939
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->processDpdTimerExpired()V

    .line 940
    goto/16 :goto_0

    .line 936
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->processSmTimeOut()V

    .line 937
    goto/16 :goto_0

    .line 999
    :pswitch_4
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleWifiStateChange(Landroid/os/Message;)V

    .line 1000
    goto/16 :goto_0

    .line 981
    :pswitch_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    .line 982
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v5, 0xb

    invoke-static {v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$3700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 983
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v2, v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    move-result v1

    .line 984
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v3, v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setEpdgInterfaceDropRule(ZI)V

    .line 985
    if-ne v2, v1, :cond_1

    .line 986
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "as Data path route addition failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 989
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 990
    .local v2, "msg1":Landroid/os/Message;
    const/16 v4, 0x29

    iput v4, v2, Landroid/os/Message;->what:I

    .line 991
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 992
    new-instance v4, Landroid/os/AsyncResult;

    new-instance v5, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v5, v6}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;-><init>(I)V

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 994
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 995
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v3, v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    .line 996
    .end local v2    # "msg1":Landroid/os/Message;
    goto :goto_0

    .line 944
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->processIpsecConnFail(Landroid/os/Message;)V

    .line 946
    goto :goto_0

    .line 977
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->processDetachRequest(Landroid/os/Message;)V

    .line 979
    goto :goto_0

    .line 949
    :pswitch_8
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Constants/EpdgCommands;->triggerHandover(Landroid/os/Handler;ILjava/lang/Boolean;)V

    .line 952
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 953
    nop

    .line 1004
    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
