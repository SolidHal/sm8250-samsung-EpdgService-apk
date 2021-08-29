.class Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SmartWifiProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 1048
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .line 1051
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$1000(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Landroid/net/ConnectivityManager;

    move-result-object v0

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
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWiFiValidateNetworkCallback onAvailable(): captive portal and validated "

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
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWiFiValidateNetworkCallback onAvailable(): no captive portal and validated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setCaptiveNotAuthStatus(Z)V

    .line 1060
    :goto_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1064
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$1100(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1066
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWiFiValidateNetworkCallback onCapabilitiesChanged(): validated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " captiveportal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    .line 1070
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    return-void

    .line 1067
    :cond_2
    :goto_0
    return-void
.end method
