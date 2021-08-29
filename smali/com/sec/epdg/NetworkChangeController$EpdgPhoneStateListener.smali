.class final Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkChangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/NetworkChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EpdgPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/NetworkChangeController;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/NetworkChangeController;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    .line 800
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 801
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$100(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0, p1}, Lcom/sec/epdg/NetworkChangeController;->access$102(Lcom/sec/epdg/NetworkChangeController;I)I

    .line 809
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    .line 810
    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isHandoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$100(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    .line 811
    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v1}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v1}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Vodafone_GB"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    .line 815
    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$100(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getPendingProfilingDuringCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->startPendingProfilingAfterCall()V

    .line 817
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setPendingProfilingDuringCall(Z)V

    .line 820
    :cond_2
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 829
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$600(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 832
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0, p1}, Lcom/sec/epdg/NetworkChangeController;->access$602(Lcom/sec/epdg/NetworkChangeController;I)I

    .line 833
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isNetworkVpn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$600(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 834
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$700(Lcom/sec/epdg/NetworkChangeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->WifiDisconnect()V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$500(Lcom/sec/epdg/NetworkChangeController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v1}, Lcom/sec/epdg/NetworkChangeController;->access$800(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 5
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 842
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreciseDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Elisa_FI"

    const-string v2, "Telia_SE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionFailCause()I

    move-result v0

    .line 845
    .local v0, "failCause":I
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionApnTypeBitMask()I

    move-result v1

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 848
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v2}, Lcom/sec/epdg/NetworkChangeController;->access$900(Lcom/sec/epdg/NetworkChangeController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    .line 849
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v1}, Lcom/sec/epdg/NetworkChangeController;->access$900(Lcom/sec/epdg/NetworkChangeController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v2}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 852
    .end local v0    # "failCause":I
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 824
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$500(Lcom/sec/epdg/NetworkChangeController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/NetworkChangeController$ServiceStatusChangedRunnable;

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/NetworkChangeController$ServiceStatusChangedRunnable;-><init>(Lcom/sec/epdg/NetworkChangeController;Landroid/telephony/ServiceState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method
