.class Lcom/sec/epdg/EpdgNetworkManagementObserver;
.super Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.source "EpdgNetworkManagementObserver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p3, "hdr"    # Landroid/os/Handler;
    .param p4, "phoneId"    # I

    .line 28
    invoke-direct {p0, p3}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;-><init>(Landroid/os/Handler;)V

    .line 29
    iput-object p1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 31
    iput p4, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mPhoneId:I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgNetworkMgmtObserver]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private handleWifiIpConfigChanged()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setCurrentWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 84
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v1, "Current ip type was ipv4 and now ipv6 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 88
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 90
    iget v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "RJIL_IN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    .line 92
    .local v0, "epdgHandler":Landroid/os/Handler;
    const/16 v1, 0x4d

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    .end local v0    # "epdgHandler":Landroid/os/Handler;
    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->checkAndUpdateWifiAvailability()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v1, "Wifi ip config timer is already expired when ipv6 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/sec/epdg/EpdgNetworkManagementObserver;->performDnsIfPossible()V

    .line 101
    :goto_0
    return-void
.end method

.method private isIPv6AddressScopeGlobal(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    .line 38
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIPv6AddressScopeGlobal: Received address is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Suppressed"

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 42
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCGlobal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCNodeLocal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCOrgLocal()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCSiteLocal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIPv6AddressScopeGlobal(): returning result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return v0

    .line 51
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v2, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v3, "Address is not proper ip address"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x0

    return v2
.end method

.method private performDnsIfPossible()V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/sec/epdg/WfcProfileTask;

    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 62
    invoke-static {v4}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mPhoneId:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/WfcProfileTask;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 64
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getCurrentWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 65
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getCurrentWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 67
    iget v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 68
    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v1, "DNS is successful, start profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v1, "DNS fail in all attempts"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v1, "Configured ip type is already ipv4v6, no need to perform DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    :goto_0
    return-void
.end method

.method private startTimerOrPerformDns(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 104
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getCurrentWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    if-ne v1, v2, :cond_2

    .line 106
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v2, "Current ip type is none and ipv4 address is now configured, wait for ipv6 address configuration"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setCurrentWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 111
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto/16 :goto_0

    .line 112
    :cond_0
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_1

    .line 113
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgNetworkManagementObserver;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v2, "Current ip type is none and ipv6 address is now configured, wait for ipv4 address configuration"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setCurrentWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 118
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v2, "Link local ipv6 address is configured, ignore it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getCurrentWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    if-ne v1, v2, :cond_5

    .line 123
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3

    .line 124
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgNetworkManagementObserver;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    invoke-direct {p0}, Lcom/sec/epdg/EpdgNetworkManagementObserver;->handleWifiIpConfigChanged()V

    goto :goto_0

    .line 126
    :cond_3
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v2, "Current ip type is v4, again v4 address is received, ignore it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v2, "Current ip type is v4, link local ipv6 address is configured, ignore it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getCurrentWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    if-ne v1, v2, :cond_8

    .line 134
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_6

    .line 135
    invoke-direct {p0}, Lcom/sec/epdg/EpdgNetworkManagementObserver;->handleWifiIpConfigChanged()V

    goto :goto_0

    .line 136
    :cond_6
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_7

    .line 137
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgNetworkManagementObserver;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v2, "Current ip type is v6, again v6 address is received, ignore it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v2, "Current ip type is v6, link local ipv6 address is configured, ignore it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public EpdgAddressUpdated(Landroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 5
    .param p1, "linkAddress"    # Landroid/net/LinkAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .line 189
    if-nez p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v1, "Link address is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 193
    .local v0, "inetAddr":Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    .line 194
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgAddressUpdated: address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v3

    const-string v4, "Suppressed"

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " iface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, p2

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mFqdnRetryCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getFqdnRetryCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    iget v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 199
    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->isValidAddress(Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    if-eq v1, v2, :cond_4

    .line 201
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfiguredWifiIntfIpType() is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 202
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " so check for DNS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgNetworkManagementObserver;->startTimerOrPerformDns(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 210
    :cond_3
    iget v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 212
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getFqdnRetryCount()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    .line 213
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->resetFqdnRetryCount()V

    .line 214
    iget-object v1, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 215
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x37

    iput v2, v1, Landroid/os/Message;->what:I

    .line 216
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 221
    .end local v0    # "inetAddr":Ljava/net/InetAddress;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    :goto_2
    return-void
.end method

.method public EpdgInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 149
    iget v0, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "mobileIntfPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 151
    .local v1, "alphabeticSubString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 152
    .local v2, "numericSubString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 154
    .local v3, "cid":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 155
    iget-object v4, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v5, "Not Mobile Interface. Ignoring Interface State Change Event"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 159
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v4

    .line 164
    nop

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 167
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    .line 171
    nop

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    iget-object v4, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 176
    .local v4, "msgToHandoverSM":Landroid/os/Message;
    if-nez p2, :cond_2

    .line 177
    const/16 v5, 0xe

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_0

    .line 179
    :cond_2
    const/16 v5, 0x9

    iput v5, v4, Landroid/os/Message;->what:I

    .line 181
    :goto_0
    add-int/lit8 v5, v3, 0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 182
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 173
    .end local v4    # "msgToHandoverSM":Landroid/os/Message;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v5, "Ignoring the interface change event as it is not related to bringing up/down the mobile interface."

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_2
    return-void

    .line 168
    :catch_0
    move-exception v4

    .line 169
    .local v4, "e":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v6, "Error!!!, cid is not converted into number, returning"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 160
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 161
    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v5, p0, Lcom/sec/epdg/EpdgNetworkManagementObserver;->TAG:Ljava/lang/String;

    const-string v6, "Array indexes are out of bounds"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 163
    return-void
.end method
