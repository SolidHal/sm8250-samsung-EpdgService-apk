.class public Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;
.super Ljava/lang/Object;
.source "EpdgWifiInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WifiInterface"

.field private static final MIN_RSSI:I = -0x64

.field private static mClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static mWificond:Landroid/net/wifi/nl80211/IWificond;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binderDied()V
    .locals 3

    .line 135
    const/4 v0, 0x0

    const-string v1, "WifiInterface"

    const-string v2, "Wificond died!"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 137
    sput-object v0, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->mClientList:Ljava/util/List;

    .line 138
    invoke-static {}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->resetInstance()V

    .line 139
    return-void
.end method

.method public static getAPMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .line 22
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 23
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 24
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 25
    .local v2, "mac":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 31
    :cond_0
    return-object v2
.end method

.method public static getCalculateSignalLevel(Landroid/content/Context;I)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "rssi"    # I

    .line 68
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 69
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result v1

    .line 70
    .local v1, "level":I
    return v1
.end method

.method public static getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .line 48
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 49
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 50
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 51
    .local v2, "newSsid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 53
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Ssid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiInterface"

    invoke-static {v3, v5, v4}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-object v2
.end method

.method public static getCurrentWifiRssi(Landroid/content/Context;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 59
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 60
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 61
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    .line 62
    const/16 v2, -0x64

    return v2

    .line 64
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    return v2
.end method

.method public static getUeWiFiMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .line 35
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 36
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 37
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 38
    .local v2, "mac":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 44
    :cond_0
    return-object v2
.end method

.method static synthetic lambda$retrieveWificondAndRegisterForDeath$0()V
    .locals 0

    .line 126
    invoke-static {}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->binderDied()V

    return-void
.end method

.method public static pollWifiRssi()I
    .locals 9

    .line 74
    sget-object v0, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->mClientList:Ljava/util/List;

    const/16 v1, -0x64

    const-string v2, "WifiInterface"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "Reference to clientInterfac is null"

    invoke-static {v3, v2, v0}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 76
    return v1

    .line 79
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 80
    .local v4, "it":Landroid/os/IBinder;
    invoke-static {v4}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v5

    .line 81
    .local v5, "client":Landroid/net/wifi/nl80211/IClientInterface;
    if-eqz v5, :cond_3

    .line 82
    invoke-interface {v5}, Landroid/net/wifi/nl80211/IClientInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "itName":Ljava/lang/String;
    const-string v7, "wlan0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 84
    invoke-interface {v5}, Landroid/net/wifi/nl80211/IClientInterface;->signalPoll()[I

    move-result-object v0

    .line 85
    .local v0, "resultArray":[I
    if-eqz v0, :cond_2

    array-length v7, v0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RSSI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v7}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 90
    aget v1, v0, v3

    return v1

    .line 86
    :cond_2
    :goto_1
    const-string v7, "Invalid signal poll result from wificond"

    invoke-static {v3, v2, v7}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return v1

    .line 93
    .end local v0    # "resultArray":[I
    .end local v4    # "it":Landroid/os/IBinder;
    .end local v5    # "client":Landroid/net/wifi/nl80211/IClientInterface;
    .end local v6    # "itName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 96
    :cond_4
    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getInterfaceName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return v1
.end method

.method private static retrieveWificondAndRegisterForDeath()Z
    .locals 6

    .line 115
    sget-object v0, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 117
    return v1

    .line 119
    :cond_0
    const-string v0, "wifinl80211"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 120
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 121
    const-string v3, "WifiInterface"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 122
    const-string v1, "Failed to get reference to wificond"

    invoke-static {v4, v3, v1}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 123
    return v4

    .line 126
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/net/wifi/nl80211/IWificond;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v5, Lcom/sec/epdg/WifiInterface/-$$Lambda$EpdgWifiInfo$ABbtOrEU1HIv0xm3id4r-lcf6LU;->INSTANCE:Lcom/sec/epdg/WifiInterface/-$$Lambda$EpdgWifiInfo$ABbtOrEU1HIv0xm3id4r-lcf6LU;

    invoke-interface {v2, v5, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    return v1

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to register death notification for wificond"

    invoke-static {v4, v3, v2}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 129
    return v4
.end method

.method public static setupInterfaceForWifiRssi()Z
    .locals 4

    .line 101
    invoke-static {}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    return v1

    .line 106
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->GetClientInterfaces()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->mClientList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .line 111
    const/4 v0, 0x1

    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "WifiInterface"

    const-string v3, "Failed to get IClientInterface due to remote exception"

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 109
    return v1
.end method
