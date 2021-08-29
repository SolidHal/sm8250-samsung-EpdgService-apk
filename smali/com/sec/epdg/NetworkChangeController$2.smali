.class Lcom/sec/epdg/NetworkChangeController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/NetworkChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/NetworkChangeController;


# direct methods
.method constructor <init>(Lcom/sec/epdg/NetworkChangeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 980
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .line 983
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAvailable(): IMS pdn connected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

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

    if-nez v0, :cond_5

    .line 986
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 987
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    .line 988
    .local v0, "wificallpreferred":I
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v1}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getWifiRoamPrefSetting()I

    move-result v1

    .line 989
    .local v1, "Roamingpreferred":I
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v4}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v3, :cond_0

    .line 990
    const/4 v0, 0x4

    goto :goto_1

    .line 991
    :cond_0
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v4}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    if-le v1, v4, :cond_2

    .line 992
    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    move v0, v3

    .line 993
    if-ne v1, v5, :cond_2

    .line 994
    const/4 v0, 0x5

    .line 996
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wificallpreferred : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Roamingpreferred : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    if-eq v0, v5, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    .line 998
    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->getIsLteAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 999
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1002
    .end local v0    # "wificallpreferred":I
    .end local v1    # "Roamingpreferred":I
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v1}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto :goto_2

    .line 1003
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailableDuringConnecting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1004
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setIsLteAvailableDuringConnecting(Z)V

    .line 1005
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "During Connecting LTE was available, retryW2LHandoverIfRequired"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v1}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1008
    :cond_6
    :goto_2
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1012
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLost(): IMS pdn disconnected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    .line 1014
    invoke-static {v1}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    .line 1015
    invoke-static {v2}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v2

    .line 1013
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyL2WHandoverResult(ZLjava/lang/String;Z)V

    .line 1016
    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1026
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNetworkResumed(): IMS pdn Resumed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/NetworkChangeController;->onNetworkStatusChanged(Z)V

    .line 1028
    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1020
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNetworkSuspended(): IMS pdn Suspended"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$2;->this$0:Lcom/sec/epdg/NetworkChangeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/NetworkChangeController;->onNetworkStatusChanged(Z)V

    .line 1022
    return-void
.end method
