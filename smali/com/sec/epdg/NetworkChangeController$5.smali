.class Lcom/sec/epdg/NetworkChangeController$5;
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

    .line 1095
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;

    .line 1098
    if-eqz p1, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    iget-object v0, v0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1100
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 1101
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1102
    .local v1, "networkType":I
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 1103
    .local v2, "networkState":Landroid/net/NetworkInfo$State;
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDefaultNetworkCallback() networkType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " networkState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    if-nez v1, :cond_0

    .line 1105
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->WifiDisconnect()V

    goto :goto_0

    .line 1106
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 1107
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/epdg/EpdgSubScription;->setWifiNetwork(Landroid/net/Network;)V

    .line 1108
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->WifiConnect()V

    .line 1109
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$900(Lcom/sec/epdg/NetworkChangeController;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1110
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1111
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_1

    .line 1112
    const/16 v5, 0x1f4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v7}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",Wifi signal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1117
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    .end local v1    # "networkType":I
    .end local v2    # "networkState":Landroid/net/NetworkInfo$State;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1121
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDefaultNetworkCallback onLost()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$5;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->WifiDisconnect()V

    .line 1123
    :cond_0
    return-void
.end method
