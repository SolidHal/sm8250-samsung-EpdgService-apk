.class public final Lcom/sec/epdg/EpdgServerSelection;
.super Ljava/lang/Object;
.source "EpdgServerSelection.java"


# static fields
.field private static final COMMAND_GET_RESPONSE:I = 0xc0

.field private static final COMMAND_READ_BINARY:I = 0xb0

.field private static final EPDG_FQDN_START_BYTE:I = 0x4

.field private static final FILE_ID_EPDG_ID:I = 0x6ff3

.field private static final FILE_PATH_EPDG_ID:Ljava/lang/String; = "3F007FFF"

.field private static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field private static final MAX_DNS_RETRY_COUNT:I = 0x3

.field private static final MIN_DNS_RETRY_COUNT:I = 0x1

.field private static final MIN_READ_BINARY_BYTES:I = 0x4

.field private static final NO_EPDG_SERVER_IP:Ljava/lang/String; = "NoEpdgServerIp"

.field private static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field private static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/EpdgServerSelection;

.field private static mInstance2:Lcom/sec/epdg/EpdgServerSelection;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentEpdgIpCounter:I

.field private mDnsTimeout:Z

.field private mEpdgFqdnFromSim:Ljava/lang/String;

.field private mEpdgServerIpAddress:Ljava/net/InetAddress;

.field private mEpdgServerIpArray:[Ljava/net/InetAddress;

.field private mIpv6AddressUpdated:Z

.field private mPhoneId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mUseHome:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "[EpdgServerSelection]"

    sput-object v0, Lcom/sec/epdg/EpdgServerSelection;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subsciption"    # Lcom/sec/epdg/EpdgSubScription;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 32
    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 33
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 34
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    .line 47
    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 57
    const-string v4, ""

    iput-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    .line 59
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mDnsTimeout:Z

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/epdg/EpdgServerSelection;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 66
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    .line 67
    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 68
    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 69
    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;

    .line 70
    iput-boolean v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 71
    iput-object p3, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 72
    iput-object p2, p0, Lcom/sec/epdg/EpdgServerSelection;->mContext:Landroid/content/Context;

    .line 73
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 74
    iput p1, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    .line 75
    return-void
.end method

.method private declared-synchronized RjilPerformDnsAndSetEpdgServerIpPoolInternal(I)Z
    .locals 10
    .param p1, "dnsRetryCount"    # I

    monitor-enter p0

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 467
    .local v1, "isIndiaNetworkOperator":Z
    const/4 v2, 0x0

    .line 468
    .local v2, "nationalRoaming":Z
    const/4 v3, 0x0

    .line 470
    .local v3, "internationalRoaming":Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 471
    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/sec/epdg/Operator/EpdgOperator;->isIndiaNetworkOperator(Landroid/content/Context;)Z

    move-result v4

    move v1, v4

    .line 472
    iget-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    const/4 v6, 0x1

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    move v2, v4

    .line 473
    iget-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    move v3, v4

    .line 474
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RJIL domestic roaming: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", international roaming: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    if-nez v2, :cond_2

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-eqz v4, :cond_3

    .line 477
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v4

    move v0, v4

    .line 478
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-nez v4, :cond_4

    if-nez v3, :cond_4

    .line 479
    iput-boolean v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 480
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 482
    :cond_4
    if-eqz v0, :cond_5

    .line 483
    monitor-exit p0

    return v6

    .line 487
    :cond_5
    :try_start_1
    const-string v4, ""

    .line 488
    .local v4, "staticFqdn":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 489
    const-string v6, "internationalvowifi.jio.com"

    move-object v4, v6

    goto :goto_2

    .line 491
    :cond_6
    const-string v6, "vowifi.jio.com"

    move-object v4, v6

    .line 493
    :goto_2
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_3
    if-gt v6, p1, :cond_9

    .line 494
    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgServerSelection;->setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z

    move-result v7

    move v0, v7

    .line 495
    if-eqz v0, :cond_7

    .line 497
    iput v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 498
    goto :goto_4

    .line 500
    :cond_7
    if-ge v6, p1, :cond_8

    .line 501
    iget-object v7, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DNS is failed doing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " retry"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 506
    .end local v6    # "i":I
    :cond_9
    :goto_4
    monitor-exit p0

    return v0

    .line 464
    .end local v0    # "result":Z
    .end local v1    # "isIndiaNetworkOperator":Z
    .end local v2    # "nationalRoaming":Z
    .end local v3    # "internationalRoaming":Z
    .end local v4    # "staticFqdn":Ljava/lang/String;
    .end local p1    # "dnsRetryCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private addLegacyRoute(Ljava/net/InetAddress;)Z
    .locals 12
    .param p1, "addr"    # Ljava/net/InetAddress;

    .line 839
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNMService()Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 840
    .local v0, "NMService":Landroid/os/INetworkManagementService;
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getConnMgrInstance()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 841
    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 842
    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v4, "addLegacyRoute : ConnectivityManager is NULL "

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    return v2

    .line 846
    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getWifiNetwork()Landroid/net/Network;

    move-result-object v3

    .line 847
    .local v3, "wifiNetwork":Landroid/net/Network;
    if-nez v3, :cond_1

    .line 848
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v5, "addLegacyRoute : WiFi Network is NULL "

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return v2

    .line 852
    :cond_1
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    .line 853
    .local v4, "lp":Landroid/net/LinkProperties;
    if-nez v4, :cond_2

    .line 854
    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v6, "addLegacyRoute : LinkProperties is NULL "

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return v2

    .line 858
    :cond_2
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 860
    .local v5, "bestRoute":Landroid/net/RouteInfo;
    if-nez v5, :cond_3

    .line 861
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v5

    goto :goto_0

    .line 863
    :cond_3
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v6

    .line 864
    .local v6, "iface":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 866
    invoke-static {p1, v6}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v5

    goto :goto_0

    .line 870
    :cond_4
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-static {p1, v7, v6}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 874
    .end local v6    # "iface":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v6

    .line 875
    .local v6, "netId":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 878
    .local v7, "uid":I
    :try_start_0
    invoke-interface {v0, v6, v5, v7}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    nop

    .line 883
    const/4 v2, 0x1

    return v2

    .line 879
    :catch_0
    move-exception v8

    .line 880
    .local v8, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addLegacyRoute Excpetion trying to add a route "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    return v2
.end method

.method private checkNetworkRoaming(II)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 381
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 382
    return v1

    .line 384
    :cond_0
    invoke-static {p1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v2, "AIRTEL_IN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    return v1

    .line 387
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized createInstance(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgServerSelection;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subsciption"    # Lcom/sec/epdg/EpdgSubScription;

    const-class v0, Lcom/sec/epdg/EpdgServerSelection;

    monitor-enter v0

    .line 81
    if-nez p0, :cond_0

    .line 82
    :try_start_0
    new-instance v1, Lcom/sec/epdg/EpdgServerSelection;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgServerSelection;-><init>(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/EpdgServerSelection;->mInstance:Lcom/sec/epdg/EpdgServerSelection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v0

    return-object v1

    .line 85
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/EpdgServerSelection;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgServerSelection;-><init>(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/EpdgServerSelection;->mInstance2:Lcom/sec/epdg/EpdgServerSelection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit v0

    return-object v1

    .line 80
    .end local p0    # "phoneId":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "subsciption":Lcom/sec/epdg/EpdgSubScription;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 887
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 888
    sput-object v0, Lcom/sec/epdg/EpdgServerSelection;->mInstance:Lcom/sec/epdg/EpdgServerSelection;

    goto :goto_0

    .line 890
    :cond_0
    sput-object v0, Lcom/sec/epdg/EpdgServerSelection;->mInstance2:Lcom/sec/epdg/EpdgServerSelection;

    .line 892
    :goto_0
    return-void
.end method

.method private declared-synchronized getCachedEpdgServerIpAddress()Ljava/net/InetAddress;
    .locals 4

    monitor-enter p0

    .line 290
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedEpdgServerIpAddress() epdg server ip address is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 289
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/EpdgServerSelection;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/EpdgServerSelection;

    monitor-enter v0

    .line 91
    if-nez p0, :cond_0

    .line 92
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgServerSelection;->mInstance:Lcom/sec/epdg/EpdgServerSelection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 94
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgServerSelection;->mInstance2:Lcom/sec/epdg/EpdgServerSelection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 90
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getIpv6AddressUpdated()Z
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpv6AddressUpdated(): returning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    return v0
.end method

.method private getOperatorNumeric(Z)Ljava/lang/String;
    .locals 8
    .param p1, "forceHome"    # Z

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicFQDN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getSubId()I

    move-result v1

    .line 119
    .local v1, "subId":I
    if-nez p1, :cond_0

    iget v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-direct {p0, v2, v1}, Lcom/sec/epdg/EpdgServerSelection;->checkNetworkRoaming(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v4, "can\'t read roaming operator plmnID"

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    .line 128
    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgUtils;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "imsi":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOperatorNumeric: Spr imsi "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 132
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    .end local v1    # "subId":I
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EPDG.EPC.MNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 135
    :cond_4
    :goto_0
    nop

    .line 139
    :goto_1
    return-object v0
.end method

.method private getSubId()I
    .locals 2

    .line 831
    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getSubId(I)I

    move-result v0

    .line 832
    .local v0, "subId":I
    if-gez v0, :cond_0

    .line 833
    const/4 v1, 0x0

    return v1

    .line 835
    :cond_0
    return v0
.end method

.method private isIpPoolAndCounterValid()Z
    .locals 4

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    if-ltz v2, :cond_0

    array-length v1, v1

    if-ge v2, v1, :cond_0

    .line 299
    const/4 v0, 0x1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIpPoolAndCounterValid: mEpdgServerIpArray is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 302
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentEpdgIpCounter is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return v0
.end method

.method private declared-synchronized peekAndAddRouteForNextEpdgServerIp()Z
    .locals 9

    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "peekAndAddRouteForNextEpdgServerIp: mEpdgServerIpArray itself is not initialized, returning false"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return v1

    .line 560
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentEpdgIpCounter is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mEpdgServerIpArray.length is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    .line 563
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "peekAndAddRouteForNextEpdgServerIp: No new epdg server ip is available"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    monitor-exit p0

    return v1

    .line 568
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "Next epdg ip address is available, remove route for existing epdg ip and add route for next epdg ip"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    add-int/2addr v0, v3

    .line 572
    .local v0, "tempIpCounter":I
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 573
    .local v2, "mConnMgr":Landroid/net/ConnectivityManager;
    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    if-ltz v4, :cond_3

    .line 575
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->removeRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 577
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route deletion of current epdg ip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is successful"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_2
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route deletion fails for current epdg server ip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_3
    :goto_0
    const/4 v4, 0x0

    .line 586
    .local v4, "result":Z
    iget v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgUtils;->checkFirstApiLevel()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 588
    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/sec/epdg/EpdgServerSelection;->addLegacyRoute(Ljava/net/InetAddress;)Z

    move-result v5

    move v4, v5

    goto :goto_1

    .line 590
    :cond_4
    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    aget-object v5, v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v5

    move v4, v5

    .line 594
    :goto_1
    if-eqz v4, :cond_5

    .line 595
    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Route addition for new epdg ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is successful"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 599
    iput v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 600
    monitor-exit p0

    return v3

    .line 602
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Route addition fails for new epdg server ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    add-int/2addr v8, v3

    aget-object v3, v7, v8

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    monitor-exit p0

    return v1

    .line 553
    .end local v0    # "tempIpCounter":I
    .end local v2    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v4    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private performDnsAndAddRoute(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 16
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 668
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 669
    .local v0, "mConnMgr":Landroid/net/ConnectivityManager;
    iget-object v2, v1, Lcom/sec/epdg/EpdgServerSelection;->mContext:Landroid/content/Context;

    .line 670
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 672
    .end local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .local v2, "mConnMgr":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 673
    .local v0, "inetAddressArray":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, v4

    .line 674
    iget-object v4, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ip addresses returned after DNS is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    array-length v4, v0

    if-nez v4, :cond_0

    .line 677
    iget-object v4, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v5, "performDnsAndAddRoute: No ip address is returned."

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-object v3

    .line 680
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 682
    .local v4, "inetAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    const/4 v5, 0x0

    .line 683
    .local v5, "address":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    .local v6, "inet4AddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v0

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 685
    .local v7, "inet6AddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    array-length v8, v0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v10, v8, :cond_8

    aget-object v12, v0, v10

    .line 686
    .local v12, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 687
    instance-of v13, v12, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "Suppressed"

    if-eqz v13, :cond_3

    .line 688
    :try_start_1
    iget-object v13, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added EPDG FQDN resolved to IPv4 address to list: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move-object v14, v5

    :goto_1
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 688
    invoke-static {v13, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget v9, v1, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v9

    iget-boolean v9, v9, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v9, :cond_7

    iget-object v9, v1, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 692
    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Preferred()Z

    move-result v9

    if-nez v9, :cond_7

    .line 693
    :cond_2
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v9, "Multiple ip address support is disabled, returning 1st IPv4 address"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 695
    goto :goto_4

    .line 697
    :cond_3
    instance-of v9, v12, Ljava/net/Inet6Address;

    if-eqz v9, :cond_6

    .line 698
    iget-object v9, v1, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 699
    iget-object v9, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v11, "Ignoring the EPDG FQDN resolved to IPv6 address, as user selected to use IPV4 address"

    invoke-static {v9, v11}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 701
    :cond_4
    iget-object v9, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Added EPDG FQDN resolved to IPv6 address to list: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_2

    :cond_5
    move-object v14, v5

    :goto_2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 701
    invoke-static {v9, v13}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-direct {v1, v11}, Lcom/sec/epdg/EpdgServerSelection;->setIpv6AddressUpdated(Z)V

    .line 705
    iget v9, v1, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v9

    iget-boolean v9, v9, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v9, :cond_7

    iget-object v9, v1, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 706
    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Preferred()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 707
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v9, "Multiple ip address support is disabled, returning 1st IPv6 address"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 709
    goto :goto_4

    .line 713
    :cond_6
    iget-object v9, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v11, "Invalid Address format of epdg server, try another ip address"

    invoke-static {v9, v11}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .end local v12    # "inetAddress":Ljava/net/InetAddress;
    :cond_7
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 716
    :cond_8
    :goto_4
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v8

    if-nez v8, :cond_9

    .line 717
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v9, "IPv6 address support is not enabled"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    move-object v4, v6

    goto :goto_5

    .line 719
    :cond_9
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Preferred()Z

    move-result v8

    if-nez v8, :cond_a

    .line 720
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v9, "IPv6 address support is enabled but ipv6 is not preferred"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    move-object v4, v6

    .line 722
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 724
    :cond_a
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v9, "IPv6 address support is enabled and ipv6 is preferred"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    move-object v4, v7

    .line 726
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 728
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 729
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v9, "All ip addresses format of epdg server is invalid"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-object v3

    .line 732
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/net/InetAddress;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/net/InetAddress;

    move-object v0, v8

    .line 733
    iget-object v8, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of ip addresses returned in DNS query response after parsing is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget v8, v1, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgUtils;->checkFirstApiLevel()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 738
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-direct {v1, v8}, Lcom/sec/epdg/EpdgServerSelection;->addLegacyRoute(Ljava/net/InetAddress;)Z

    goto :goto_6

    .line 740
    :cond_c
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v2, v11, v8}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 743
    :goto_6
    return-object v0

    .line 745
    .end local v0    # "inetAddressArray":[Ljava/net/InetAddress;
    .end local v4    # "inetAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "inet4AddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v7    # "inet6AddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/net/UnknownHostException;
    iget-object v4, v1, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS resolution failed for epdg server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-object v3
.end method

.method private declared-synchronized performDnsAndSetEpdgServerIpPoolInternal(I)Z
    .locals 12
    .param p1, "dnsRetryCount"    # I

    monitor-enter p0

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "result":Z
    const-wide/16 v1, 0x0

    .line 512
    .local v1, "dnsBegin":J
    const-wide/16 v3, 0x0

    .line 513
    .local v3, "dnsEnd":J
    :try_start_0
    iget-boolean v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    invoke-virtual {p0, v5}, Lcom/sec/epdg/EpdgServerSelection;->generateEpdgFqdn(Z)Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, "epdgServerIP":Ljava/lang/String;
    iget v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->isNeedSMSProvisioning()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 516
    iget v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/sec/epdg/VodaProvisionManager;->getInstance(ILandroid/content/Context;)Lcom/sec/epdg/VodaProvisionManager;

    move-result-object v6

    .line 517
    .local v6, "vpm":Lcom/sec/epdg/VodaProvisionManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/epdg/VodaProvisionManager;->getIsProvisioning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 518
    invoke-virtual {v6}, Lcom/sec/epdg/VodaProvisionManager;->getFqdn()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 522
    .end local v6    # "vpm":Lcom/sec/epdg/VodaProvisionManager;
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_0
    if-nez v5, :cond_1

    .line 523
    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v7, "performDnsAndSetEpdgServerIpPool: ERROR!!! epdg FQDN is null, returning"

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return v0

    .line 526
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting epdg server ip address from FQDN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Suppressed"

    goto :goto_0

    :cond_2
    move-object v8, v5

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " dnsRetryCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v1, v6

    .line 530
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    const/4 v7, 0x1

    if-gt v6, p1, :cond_5

    .line 531
    invoke-direct {p0, v5}, Lcom/sec/epdg/EpdgServerSelection;->setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z

    move-result v8

    move v0, v8

    .line 532
    if-ne v0, v7, :cond_3

    .line 534
    sget-object v8, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_COUNTER:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {p0, v8}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 535
    const/4 v0, 0x1

    .line 536
    goto :goto_2

    .line 538
    :cond_3
    if-ge v6, p1, :cond_4

    .line 539
    iget-object v7, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DNS is failed doing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " retry"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 543
    .end local v6    # "i":I
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v3, v8

    .line 545
    sub-long v8, v3, v1

    const-wide/16 v10, 0x1388

    cmp-long v6, v8, v10

    if-lez v6, :cond_6

    .line 546
    iput-boolean v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mDnsTimeout:Z

    .line 547
    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v7, "DNS server does not respond"

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :cond_6
    monitor-exit p0

    return v0

    .line 509
    .end local v0    # "result":Z
    .end local v1    # "dnsBegin":J
    .end local v3    # "dnsEnd":J
    .end local v5    # "epdgServerIP":Ljava/lang/String;
    .end local p1    # "dnsRetryCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private prepareFqdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    .local v0, "mcc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 144
    .local v1, "mnc":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareFqdn: operatorNumeric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 146
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 149
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "epdg.epc.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".pub.3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "finalFqdn":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "fqdn":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New ePDG FQDN is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object v3

    .line 152
    .end local v2    # "finalFqdn":Ljava/lang/StringBuilder;
    .end local v3    # "fqdn":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v3, "operator numeric has wrong length use default"

    invoke-static {v5, v2, v3}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x0

    return-object v2
.end method

.method private retrieveAndSaveEpdgServerIdFromSim()V
    .locals 12

    .line 205
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x6ff3

    const/16 v2, 0xc0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const-string v6, "3F007FFF"

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v0

    .line 207
    .local v0, "getResponseData":[B
    if-eqz v0, :cond_5

    array-length v1, v0

    const/16 v2, 0xf

    if-lt v1, v2, :cond_5

    .line 209
    const/4 v1, 0x2

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    .line 213
    .local v2, "size":I
    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x6ff3

    const/16 v7, 0xb0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v11, "3F007FFF"

    move v10, v2

    invoke-virtual/range {v5 .. v11}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v4

    .line 215
    .local v4, "binaryData":[B
    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    .line 225
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    .line 226
    .local v5, "tag":I
    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    .line 227
    .local v7, "length":I
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    .line 228
    .local v3, "addressType":I
    iget-object v8, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retrieveAndSaveEpdgServerIdFromSim: TAG value is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " addressType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " binary data length is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/16 v8, 0x80

    if-eq v5, v8, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    if-eqz v3, :cond_1

    .line 257
    goto :goto_0

    .line 239
    :cond_1
    array-length v8, v4

    add-int/lit8 v9, v7, 0x4

    sub-int/2addr v9, v1

    if-lt v8, v9, :cond_2

    .line 240
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    add-int/lit8 v9, v7, 0x4

    sub-int/2addr v9, v1

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;

    goto :goto_0

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v6, "retrieveAndSaveEpdgServerIdFromSim: Incomplete data for retrieving FQDN"

    invoke-static {v1, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    nop

    .line 264
    .end local v3    # "addressType":I
    .end local v5    # "tag":I
    .end local v7    # "length":I
    :goto_0
    goto :goto_2

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveAndSaveEpdgServerIdFromSim: Read binary is null or incomplete: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    if-nez v4, :cond_4

    move-object v5, v4

    goto :goto_1

    :cond_4
    array-length v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v2    # "size":I
    .end local v4    # "binaryData":[B
    :goto_2
    goto :goto_4

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveAndSaveEpdgServerIdFromSim: Response data is null or incomplete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    if-nez v0, :cond_6

    move-object v3, v0

    goto :goto_3

    :cond_6
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_4
    return-void
.end method

.method private declared-synchronized setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "epdgFqdn"    # Ljava/lang/String;

    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEpdgServerIpPoolFromFqdn() ePDG FQDN is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 369
    if-nez p1, :cond_0

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 371
    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 372
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 373
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "setEpdgServerIpPoolFromFqdn() FQDN is null, resetting cached server ip to null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return v2

    .line 376
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndAddRoute(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit p0

    return v2

    .line 367
    .end local p1    # "epdgFqdn":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setIpv6AddressUpdated(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 104
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIpv6AddressUpdated() value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized cacheEpdgServerIpAddress()V
    .locals 4

    monitor-enter p0

    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    .line 316
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->isIpPoolAndCounterValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheEpdgServerIpAddress: Current ip address is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Suppressed"

    goto :goto_0

    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v2, v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    goto :goto_1

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "Either Ip pool is null or ip counter is out of range"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "Ip address is already cached"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :goto_1
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkAndAddRouteForNextEpdgServerIp()Z
    .locals 4

    monitor-enter p0

    .line 759
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 760
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    .line 761
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->peekAndAddRouteForNextEpdgServerIp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "New epdg server ip address is available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    monitor-exit p0

    return v2

    .line 765
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    monitor-exit p0

    return v1

    .line 768
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 770
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isAnyPdnConnectedOverWifi()Z

    move-result v0

    if-nez v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v3, "First connection failed on IWLAN over last cached ip address, now checking from the first ip address from pool"

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 775
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->peekAndAddRouteForNextEpdgServerIp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "New epdg server ip address is available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 777
    monitor-exit p0

    return v2

    .line 779
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 780
    monitor-exit p0

    return v1

    .line 783
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "Either ip pool is not initialized or No new epdg server ip address is available, returning false"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 785
    monitor-exit p0

    return v1

    .line 788
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 789
    monitor-exit p0

    return v1

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkCachedEpdgServerIpForDnsQuery()Z
    .locals 3

    monitor-enter p0

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 823
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "ePDG IP Reamined"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 826
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "try Dns query - No more exist epdg ip"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    monitor-exit p0

    return v1

    .line 818
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "try Dns query - resetted"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 819
    monitor-exit p0

    return v1

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateEpdgFqdn(Z)Ljava/lang/String;
    .locals 8
    .param p1, "forceHome"    # Z

    .line 162
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, " generateEpdgFqdn(): "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "defaultFqdn":Ljava/lang/String;
    const-string v1, "NoEpdgServerIp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v3, "VoWIFI is not provisioning return null"

    invoke-static {v2, v1, v3}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x0

    return-object v1

    .line 169
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EPDG_SERVER_ID_FROM_SIM:Z

    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIdFromSim()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v3, "Saved epdg server fqdn from sim is null, try retrieving once again"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->setEpdgServerIdFromSim()V

    .line 177
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIdFromSim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;

    return-object v1

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v3, "generateEpdgFqdn: sim read still fails, fallback to default"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;

    return-object v1

    .line 183
    :cond_3
    :goto_0
    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v3, "Vodafone_DE"

    const-string v4, "Truemove_TH"

    const-string v5, "PCCW_HK"

    const-string v6, "Sky_GB"

    const-string v7, "Etisalat_AE"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v2, "FQDN format but operator uses fixed value"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object v0

    .line 187
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgServerSelection;->getOperatorNumeric(Z)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "operatorNumeric":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 192
    :cond_5
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgServerSelection;->prepareFqdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "fqdn":Ljava/lang/String;
    if-nez v3, :cond_6

    .line 194
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t generate dynamic FQDN, returning static home FQDN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object v0

    .line 197
    :cond_6
    return-object v3

    .line 189
    .end local v3    # "fqdn":Ljava/lang/String;
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t read sim MCC and MNC. use default : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 190
    return-object v0
.end method

.method public declared-synchronized getEpdgServerIdFromSim()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 285
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEpdgServerIdFromSim: returning epdg server fqdn as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 284
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEpdgServerIp()Ljava/net/InetAddress;
    .locals 5

    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextEpdgServerIp(): getIpv6AddressUpdated(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getIpv6AddressUpdated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " any pdn connected over wifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 619
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->isAnyPdnConnectedOverWifi()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cached ip is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Suppressed"

    goto :goto_0

    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getIpv6AddressUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 622
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isAnyPdnConnectedOverWifi()Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgServerSelection;->setIpv6AddressUpdated(Z)V

    .line 624
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 625
    .local v0, "address":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/net/Inet6Address;

    if-nez v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v3, "Cached ip is ipv4 but now the pool is updated with ipv6 address, so resetting the cached ipv4 address"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    goto :goto_1

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v3, "Cached ip is ipv6, no need to reset the cache ip"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_7

    .line 635
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 636
    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 637
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentEpdgIpCounter is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " It gets resetted with cached IP but as DNS is still valid, setting it to first IP address of pool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iput v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 642
    :cond_3
    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 644
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v0, v0, v1

    .line 645
    .local v0, "newEpdgIp":Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning ip address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Suppressed"

    goto :goto_2

    :cond_4
    move-object v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentEpdgIpCounter is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit p0

    return-object v0

    .line 650
    .end local v0    # "newEpdgIp":Ljava/net/InetAddress;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "No valid next epdg server ip address is present so, returning null ip address"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    monitor-exit p0

    return-object v2

    .line 655
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "getEpdgServerIp: Epdg server ip pool is not  yet initialized, returning null ip address"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    monitor-exit p0

    return-object v2

    .line 660
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cached epdg server ip address is available, returning cached ip address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Suppressed"

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEpdgServerDnsValid()Z
    .locals 4

    monitor-enter p0

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 802
    const/4 v0, 0x1

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEpdgServerDnsValid(): returning result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    monitor-exit p0

    return v0

    .line 799
    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z
    .locals 8
    .param p1, "reason"    # Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "dnsRetryCount":I
    sget-object v1, Lcom/sec/epdg/EpdgServerSelection$1;->$SwitchMap$com$sec$epdg$Constants$SubScriptionConstant$DnsRetryReason:[I

    invoke-virtual {p1}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 420
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DnsRetryReason received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid DnsRetryReason received"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :pswitch_0
    const/4 v0, 0x1

    .line 418
    goto :goto_3

    .line 411
    :pswitch_1
    const/4 v0, 0x3

    .line 412
    goto :goto_3

    .line 402
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getSubId()I

    move-result v1

    .line 403
    .local v1, "subId":I
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    .line 404
    invoke-direct {p0, v4, v1}, Lcom/sec/epdg/EpdgServerSelection;->checkNetworkRoaming(II)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 405
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roaming ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-eqz v6, :cond_2

    const-string v6, "No"

    goto :goto_2

    :cond_2
    const-string v6, "Yes"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x3

    .line 407
    nop

    .line 423
    .end local v1    # "subId":I
    :goto_3
    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    if-eq p1, v1, :cond_3

    .line 424
    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 427
    :cond_3
    const/4 v1, 0x0

    .line 428
    .local v1, "result":Z
    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    const-string v5, "RJIL_IN"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 429
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgServerSelection;->RjilPerformDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v1

    goto :goto_4

    .line 431
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v1

    .line 432
    if-nez v1, :cond_5

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-nez v4, :cond_5

    .line 433
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 434
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v1

    .line 436
    :cond_5
    if-nez v1, :cond_7

    iget v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 437
    const-string v2, "ims"

    .line 438
    .local v2, "apnType":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mDnsTimeout:Z

    if-eqz v4, :cond_6

    .line 439
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v4

    new-instance v5, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v6, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    sget-object v7, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 441
    invoke-virtual {v7}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;)V

    iget v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 439
    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecConnectionFail(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;ILjava/lang/String;)V

    .line 442
    iput-boolean v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mDnsTimeout:Z

    goto :goto_4

    .line 444
    :cond_6
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v4

    new-instance v5, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v6, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    sget-object v7, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 446
    invoke-virtual {v7}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;)V

    iget v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecConnectionFail(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;ILjava/lang/String;)V

    .line 450
    .end local v2    # "apnType":Ljava/lang/String;
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performDnsAndSetEpdgServerIpPool: result is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " DnsRetryReason is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz v1, :cond_8

    .line 453
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v4, "Reset DNS retry counter"

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    .line 455
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    const-string v5, "wifi_call_registration"

    invoke-static {v2, v5, v3, v4}, Lcom/sec/epdg/WfcController/EpdgState;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    sget-object v3, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DNS_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v3}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 456
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->ENABLING:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v3}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v3

    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUnifiedWfcSummaryBroadcast(Landroid/content/Context;II)V

    .line 459
    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized resetEpdgServerIdFromSim()V
    .locals 2

    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "resetEpdgServerIdFromSim: Resetting epdg server fqdn"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 279
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V
    .locals 4
    .param p1, "reason"    # Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetEpdgServerIpAddressAndPool: reason is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/sec/epdg/EpdgServerSelection$1;->$SwitchMap$com$sec$epdg$Constants$SubScriptionConstant$EpdgServerIpResetReason:[I

    invoke-virtual {p1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 360
    goto :goto_0

    .line 362
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid epdg server ip reset reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid epdg server ip reset reason:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isAnyPdnConnectedOverWifi()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    .line 350
    invoke-static {v0}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgEntitlement;->isProcessingEntitlement()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    iput-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 352
    iput v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    const-string v1, "Some PDN is still connected over wifi so, not resetting the address and counter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    goto :goto_0

    .line 341
    :cond_3
    iget v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgEntitlement;->isProcessingEntitlement()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    goto :goto_0

    .line 344
    :cond_4
    iput-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 345
    iput-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 346
    iput v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    nop

    .line 365
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    .end local p1    # "reason":Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEpdgServerIdFromSim()V
    .locals 4

    monitor-enter p0

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->retrieveAndSaveEpdgServerIdFromSim()V

    .line 276
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEpdgServerIdFromSim: Setting epdg server fqdn as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgFqdnFromSim:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 274
    .end local p0    # "this":Lcom/sec/epdg/EpdgServerSelection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
