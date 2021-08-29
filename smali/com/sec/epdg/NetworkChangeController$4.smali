.class Lcom/sec/epdg/NetworkChangeController$4;
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

    .line 1045
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .line 1048
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkCallback onAvailable(): wifi connected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->setWifiNetwork(Landroid/net/Network;)V

    .line 1050
    invoke-static {}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->setupInterfaceForWifiRssi()Z

    .line 1051
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    iget-object v0, v0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1052
    .local v0, "capabilities":Landroid/net/NetworkCapabilities;
    const/16 v1, 0x10

    if-eqz v0, :cond_0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v2}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiNetworkCallback onAvailable(): captive portal and validated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :cond_0
    if-eqz v0, :cond_1

    .line 1056
    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v2}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiNetworkCallback onAvailable(): no captive portal and validated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_1
    :goto_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1070
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isNetworkVpn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1072
    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    iget-object v0, v0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1077
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    .line 1078
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1079
    .local v1, "networkType":I
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 1080
    .local v2, "networkState":Landroid/net/NetworkInfo$State;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_3

    .line 1081
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiNetworkCallback onCapabilitiesChanged(): validated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1083
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->WifiConnect()V

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->getMobleDataState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1086
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->WifiDisconnect()V

    .line 1092
    .end local v1    # "networkType":I
    .end local v2    # "networkState":Landroid/net/NetworkInfo$State;
    :cond_3
    :goto_0
    return-void

    .line 1073
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1063
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkCallback onLost(): wifi disconnected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptiveAuthenticated:Z

    .line 1065
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$4;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->WifiDisconnect()V

    .line 1066
    :cond_0
    return-void
.end method
