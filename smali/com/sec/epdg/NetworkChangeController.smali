.class public Lcom/sec/epdg/NetworkChangeController;
.super Ljava/lang/Object;
.source "NetworkChangeController.java"

# interfaces
.implements Lcom/sec/epdg/interfaces/INetworkChangeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;,
        Lcom/sec/epdg/NetworkChangeController$ServiceStatusChangedRunnable;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActiveRat:I

.field private mActiveVoiceRat:I

.field private mCallStateFromPsl:I

.field private mCellularAvailable:Z

.field private mCheckForRoamingVops:I

.field mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mEmergencyNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mEntitlementCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIndiaInternationalRoaming:Z

.field private mIsPsOnlyReg:Z

.field private mIsRoamingStatusChanged:Z

.field private mIsRssiDisabledForProfiling:Z

.field private mIsVoPSEnabled:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

.field private mMobileDataRat:I

.field private mMobileDataReg:I

.field private mMobileDataRoaming:Z

.field private mMobleDataState:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

.field private mPhoneId:I

.field private mPhoneStateListener:Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;

.field private mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

.field private mSsacVoiceEnabled:Z

.field private mSubId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mVoiceRoamingType:I

.field private mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;II)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobleDataState:I

    .line 53
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    iput-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 54
    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIsRoamingStatusChanged:Z

    .line 55
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    iput-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mIsVoPSEnabled:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/epdg/NetworkChangeController;->mCheckForRoamingVops:I

    .line 59
    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIsPsOnlyReg:Z

    .line 62
    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataRat:I

    .line 63
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataReg:I

    .line 64
    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mVoiceRoamingType:I

    .line 65
    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataRoaming:Z

    .line 67
    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    .line 68
    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveVoiceRat:I

    .line 69
    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mCellularAvailable:Z

    .line 72
    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIndiaInternationalRoaming:Z

    .line 74
    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIsRssiDisabledForProfiling:Z

    .line 76
    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mCallStateFromPsl:I

    .line 77
    iput-boolean v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSsacVoiceEnabled:Z

    .line 79
    new-instance v0, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;

    invoke-direct {v0, p0}, Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;-><init>(Lcom/sec/epdg/NetworkChangeController;)V

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneStateListener:Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;

    .line 780
    new-instance v0, Lcom/sec/epdg/NetworkChangeController$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/NetworkChangeController$1;-><init>(Lcom/sec/epdg/NetworkChangeController;)V

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    .line 980
    new-instance v0, Lcom/sec/epdg/NetworkChangeController$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/NetworkChangeController$2;-><init>(Lcom/sec/epdg/NetworkChangeController;)V

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1031
    new-instance v0, Lcom/sec/epdg/NetworkChangeController$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/NetworkChangeController$3;-><init>(Lcom/sec/epdg/NetworkChangeController;)V

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mEmergencyNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1045
    new-instance v0, Lcom/sec/epdg/NetworkChangeController$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/NetworkChangeController$4;-><init>(Lcom/sec/epdg/NetworkChangeController;)V

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1095
    new-instance v0, Lcom/sec/epdg/NetworkChangeController$5;

    invoke-direct {v0, p0}, Lcom/sec/epdg/NetworkChangeController$5;-><init>(Lcom/sec/epdg/NetworkChangeController;)V

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1127
    new-instance v0, Lcom/sec/epdg/NetworkChangeController$6;

    invoke-direct {v0, p0}, Lcom/sec/epdg/NetworkChangeController$6;-><init>(Lcom/sec/epdg/NetworkChangeController;)V

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mEntitlementCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [NetController]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p2, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 86
    iput p4, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    .line 87
    iput p5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    .line 88
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 89
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 90
    return-void
.end method

.method private IsWifiUnvalidated()Z
    .locals 8

    .line 361
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 362
    .local v4, "network":Landroid/net/Network;
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 363
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v5, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xc

    .line 364
    invoke-virtual {v5, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x10

    .line 365
    invoke-virtual {v5, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "Wifi is not validated"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return v6

    .line 361
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    :cond_1
    return v2
.end method

.method static synthetic access$000(Lcom/sec/epdg/NetworkChangeController;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/epdg/NetworkChangeController;->onServiceStatusChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/epdg/NetworkChangeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mCallStateFromPsl:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/epdg/NetworkChangeController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/sec/epdg/NetworkChangeController;->mCallStateFromPsl:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/NetworkChangeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/NetworkChangeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/NetworkChangeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobleDataState:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/epdg/NetworkChangeController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/sec/epdg/NetworkChangeController;->mMobleDataState:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/epdg/NetworkChangeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    invoke-direct {p0}, Lcom/sec/epdg/NetworkChangeController;->IsWifiUnvalidated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/NetworkChangeController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private compareRoaming(Z)Z
    .locals 3
    .param p1, "netRoaming"    # Z

    .line 270
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v1, v2, :cond_0

    return v0

    .line 271
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-eq v1, v2, :cond_1

    return v0

    .line 272
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleAttNoRanCase(IIZ)V
    .locals 4
    .param p1, "voiceNetType"    # I
    .param p2, "dataNetType"    # I
    .param p3, "cellularAvailable"    # Z

    .line 521
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 522
    .local v0, "ss":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-nez p2, :cond_2

    .line 526
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v3, "ATT IR94, no RAN, disable Wifi Call"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setIsNotRequiredTimer(Z)V

    .line 529
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServiceRunnable;->performOperation()V

    .line 530
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 533
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 534
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setDisabledByNoRan(Z)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 537
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getDisabledByNoRan()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-eqz p2, :cond_6

    :cond_4
    if-ne p3, v2, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 542
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v1

    if-nez v1, :cond_6

    .line 543
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v2, "ATT IR94,RAN is available, enable wifi profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->onWifiConnected()V

    .line 545
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setDisabledByNoRan(Z)V

    .line 547
    :cond_6
    :goto_0
    return-void
.end method

.method private handleVoiceRatChangeWhileInRoaming(I)V
    .locals 5
    .param p1, "voiceNetType"    # I

    .line 452
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveVoiceRat:I

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/16 v4, 0x10

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->startTepdgCsTimerIfNeeded()V

    .line 459
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->sendRoamingVoiceNetworkAvailability(Z)V

    goto :goto_0

    .line 460
    :cond_1
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveVoiceRat:I

    if-nez v0, :cond_4

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_4

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCS:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->sendRoamingVoiceNetworkAvailability(Z)V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "TEPDG CS timer is running, wait for expiry"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_4
    :goto_0
    return-void
.end method

.method private onServiceStatusChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 401
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->getVoPS(Landroid/telephony/ServiceState;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mCheckForRoamingVops:I

    .line 402
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIsPsOnlyReg:Z

    .line 403
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataRat:I

    .line 404
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMobileDataRegState()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataReg:I

    .line 405
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mVoiceRoamingType:I

    .line 406
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMobileDataRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataRoaming:Z

    .line 407
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStatusChanged: Voice roaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Data roaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nVoice regi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Data regi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nMobile Data Rat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataRat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Mobile Data Reg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataReg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Mobile roaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/NetworkChangeController;->onNetworkStatusChanged(Z)V

    .line 412
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0, p1}, Lcom/sec/epdg/NetworkChangeController;->checkVopsStatus(Landroid/telephony/ServiceState;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    .line 416
    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Etisalat_AE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->updateMapconTableByNettype()V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "BTOP_GB"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getHandoverEnableSetting()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isHandoverAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 421
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->UpdateHandover()V

    .line 425
    :cond_2
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataReg:I

    if-nez v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Block StartWifiProfiling Message in Mobile Data Reg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataReg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    :cond_3
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "AIRTEL_IN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMobileVoiceRegState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 434
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isIndiaNetworkOperator(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 435
    .local v0, "indiaInternationalRoaming":Z
    iget-boolean v1, p0, Lcom/sec/epdg/NetworkChangeController;->mIndiaInternationalRoaming:Z

    if-eq v1, v0, :cond_4

    .line 436
    iput-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIndiaInternationalRoaming:Z

    .line 437
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgConfiguration()Z

    .line 440
    .end local v0    # "indiaInternationalRoaming":Z
    :cond_4
    return-void
.end method

.method private preferredModeChangeByNetwork(I)V
    .locals 3
    .param p1, "defaultMode"    # I

    .line 553
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getProfileChangedByUser()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setProfileChangedByUser(I)V

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getProfileChangedByUser()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefer mode change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " roaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 560
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    const-string v2, "WFC_PREFER_MODE_CHANGED"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    .line 563
    :cond_1
    :goto_0
    return-void
.end method

.method private resetRoamingNotAllowedError(Z)V
    .locals 2
    .param p1, "cellularAvailable"    # Z

    .line 476
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getRoamingNotAllowedError()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 478
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->setRoamingNotAllowedError(Z)V

    .line 479
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->resetThrottleState(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "home nw. reset Roaming Not Allowed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method

.method private setRoaming(Z)V
    .locals 1
    .param p1, "netRoaming"    # Z

    .line 265
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    :goto_0
    iput-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 266
    return-void
.end method

.method private toggleEdgeCheck(II)V
    .locals 2
    .param p1, "voiceNetType"    # I
    .param p2, "dataNetType"    # I

    .line 502
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 504
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isEdgeCheckRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "stop Edge Check"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->enableEdgeCheck(Z)V

    goto :goto_0

    .line 509
    :cond_1
    if-eq p1, v0, :cond_2

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    .line 511
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isWfcCallDropNotiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 512
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isEdgeCheckRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "start Edge Check"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->enableEdgeCheck(Z)V

    .line 516
    :cond_2
    :goto_0
    return-void
.end method

.method private toggleWifiProfilingBycellularAvailable(Z)V
    .locals 2
    .param p1, "cellularAvailable"    # Z

    .line 487
    if-nez p1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsRssiDisabledForProfiling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "Celluler is not available, disable Wifi thresholds"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/NetworkChangeController;->setIsRssiDisabledForProfiling(Z)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsRssiDisabledForProfiling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "Celluler is available, enable Wifi thresholds"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/NetworkChangeController;->setIsRssiDisabledForProfiling(Z)V

    .line 498
    :cond_1
    :goto_0
    return-void
.end method

.method private updateWiFiThreshold()V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isNeedControlWiFiThreshold()Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getWifiThreshold()Lcom/sec/epdg/DataType/EpdgWifiThreshold;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(Lcom/sec/epdg/DataType/EpdgWifiThreshold;)V

    .line 763
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized MoveToBasedOnVopsOrSsac(IZ)V
    .locals 3
    .param p1, "networkSetting"    # I
    .param p2, "needToStartTimer"    # Z

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnVopsOrSsac :  VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v2, v2, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") VOPS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsVoPSEnabled()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") SSAC Voice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsSsacVoiceEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") needToStartTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 192
    .end local p0    # "this":Lcom/sec/epdg/NetworkChangeController;
    :cond_0
    if-eqz p2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    .end local p1    # "networkSetting":I
    .end local p2    # "needToStartTimer":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method WifiConnect()V
    .locals 10

    .line 896
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 897
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setWifiMgrState(I)V

    .line 899
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "newSsid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 901
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getLastSsid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getLastSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    .line 906
    invoke-virtual {v3}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->ordinal()I

    move-result v3

    .line 905
    const-string v4, "WIFI_STATE"

    invoke-static {v1, v2, v4, v3, v0}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 908
    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-eqz v1, :cond_3

    .line 909
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTemporaryBlocked()Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->BLOCKLIST_COUNTRY:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    if-ne v1, v2, :cond_1

    .line 910
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v2, "BLOCK LIST country. voWIFI is not allowed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    return-void

    .line 915
    :cond_1
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->getWfcComponent(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v7

    .line 916
    .local v7, "componentName":[Ljava/lang/String;
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgWfcProfileReader;->getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    aget-object v4, v7, v8

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/epdg/EpdgWfcProfileReader;->saveApProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 918
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v2, "check AP is allowed for EPDG service first"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance v9, Lcom/sec/epdg/WfcProfileTask;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v6, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    move-object v1, v9

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/WfcProfileTask;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Ljava/lang/String;I)V

    new-array v1, v8, [Ljava/lang/Void;

    .line 920
    invoke-virtual {v9, v1}, Lcom/sec/epdg/WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 922
    :cond_2
    return-void

    .line 926
    .end local v7    # "componentName":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 927
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->onWifiConnected()V

    .line 929
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 930
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 931
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 932
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v2, "Wifi gets connected and call status is video or video+voice, start call popup timer"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 935
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 940
    :cond_5
    return-void
.end method

.method WifiDisconnect()V
    .locals 5

    .line 943
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 944
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setWifiMgrState(I)V

    .line 946
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "wifi disconnected, do not reset throttle state"

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 948
    :cond_0
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->IsNeedToResetThrottle()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    .line 949
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getRoamingNotAllowedError()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->resetThrottleState(Ljava/lang/String;)V

    goto :goto_1

    .line 950
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->resetRtpHandoverCnt()V

    .line 956
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->updateThrottleStatusAsWifiConnection(Z)V

    .line 957
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setDisconnectRequired(Z)V

    .line 958
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->resetIsEpdgConnBlocked()V

    .line 960
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->startEpdgDisconnection(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 961
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->removePeriodicDnsPendingIntent()V

    .line 962
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 963
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 965
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 967
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 968
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setCurrentWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 969
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 971
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->DISCONNECTED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    invoke-virtual {v2}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->ordinal()I

    move-result v2

    sget-object v3, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->NOT_CONNECTED_TO_WIFI:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v3}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v3

    const-string v4, "WIFI_STATE"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEventAndDb(Landroid/content/Context;ILjava/lang/String;II)V

    .line 972
    return-void
.end method

.method protected checkVopsStatus(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 324
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 328
    :cond_0
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->getVoPS(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 329
    .local v0, "vops":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 330
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/NetworkChangeController;->setIsVoPSEnabled(Lcom/sec/epdg/Constants/EpdgConstants$TriState;)V

    .line 331
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v2, "checkVopsStatus: Inappropriate vops status, returning"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void

    .line 334
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 335
    .local v1, "vopsEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsVoPSEnabled()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_4

    .line 336
    :cond_3
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsVoPSEnabled()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    .line 340
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v3, "Vops status is unchanged"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 337
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: Vops status is changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, v1}, Lcom/sec/epdg/NetworkChangeController;->onVopsStatusChanged(Z)V

    .line 342
    :goto_2
    return-void

    .line 325
    .end local v0    # "vops":I
    .end local v1    # "vopsEnabled":Z
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "Either airplane mode is ON or no LTE, ignore vops setting change"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public getActiveRat()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    return v0
.end method

.method public getCallStateFromPsl()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mCallStateFromPsl:I

    return v0
.end method

.method public getCellularAvailable()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mCellularAvailable:Z

    return v0
.end method

.method public getCheckForRoamingVops()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mCheckForRoamingVops:I

    return v0
.end method

.method public getDataRat()I
    .locals 2

    .line 120
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    return v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getIsCellularAvailable()Z
    .locals 6

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, v1, Lcom/sec/epdg/EpdgSubScription;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 159
    .local v0, "callType":I
    const/4 v1, 0x0

    .line 161
    .local v1, "bIsCellularAvailable":Z
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getIsAirplaneMode()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 162
    monitor-exit p0

    return v2

    .line 164
    :cond_0
    :try_start_1
    iget v3, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 165
    monitor-exit p0

    return v2

    .line 167
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getWifiCallingPrefState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 168
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v4, "mWifiCallingPrefState is NEVER_USE_CS"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    monitor-exit p0

    return v2

    .line 172
    .end local p0    # "this":Lcom/sec/epdg/NetworkChangeController;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v3

    .line 174
    .local v3, "netType":I
    iget v4, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    const-string v5, "EEESN_GB"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isLtePsOnlyReg()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    const/4 v1, 0x1

    goto :goto_1

    .line 177
    :cond_3
    if-nez v3, :cond_4

    .line 178
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_5

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getServiceState()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    nop

    :goto_0
    move v1, v2

    .line 181
    :goto_1
    monitor-exit p0

    return v1

    .line 156
    .end local v0    # "callType":I
    .end local v1    # "bIsCellularAvailable":Z
    .end local v3    # "netType":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsLteAvailable()Z
    .locals 4

    monitor-enter p0

    .line 211
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsVoPSEnabled()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsSsacVoiceEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 213
    .end local p0    # "this":Lcom/sec/epdg/NetworkChangeController;
    :cond_0
    monitor-exit p0

    return v1

    .line 214
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 215
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsVopsSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_3

    .line 216
    :cond_2
    monitor-exit p0

    return v1

    .line 219
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    const/16 v2, 0x14

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    .line 220
    monitor-exit p0

    return v3

    .line 223
    :cond_4
    :try_start_3
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    const/16 v2, 0xd

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 225
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 227
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 228
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getIsLteInHysteresis()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    nop

    .line 226
    :goto_0
    monitor-exit p0

    return v1

    .line 231
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 232
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_8

    move v1, v3

    goto :goto_1

    :cond_8
    nop

    .line 231
    :goto_1
    monitor-exit p0

    return v1

    .line 236
    :cond_9
    :try_start_5
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 237
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_a

    .line 238
    monitor-exit p0

    return v1

    .line 240
    .restart local p0    # "this":Lcom/sec/epdg/NetworkChangeController;
    :cond_a
    :try_start_6
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getIsLteAvailable()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v0

    .line 242
    .end local p0    # "this":Lcom/sec/epdg/NetworkChangeController;
    :cond_b
    :try_start_7
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v0

    if-eq v0, v2, :cond_c

    .line 243
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    if-ne v0, v2, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 244
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_d

    move v1, v3

    goto :goto_2

    :cond_d
    nop

    .line 242
    :goto_2
    monitor-exit p0

    return v1

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getIsNetworkRoaming()Z
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    .line 250
    .local v0, "bRoaming":Z
    iget-boolean v1, p0, Lcom/sec/epdg/NetworkChangeController;->mIsPsOnlyReg:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataRoaming:Z

    if-eqz v1, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 253
    :cond_0
    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->isDifferentSimAndNWOperator(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const/4 v0, 0x1

    .line 256
    :cond_1
    return v0
.end method

.method getIsRssiDisabledForProfiling()Z
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsRssiDisabledForProfiling: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/NetworkChangeController;->mIsRssiDisabledForProfiling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIsRssiDisabledForProfiling:Z

    return v0
.end method

.method getIsSsacVoiceEnabled()Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsSsacVoiceEnabled: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/NetworkChangeController;->mSsacVoiceEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSsacVoiceEnabled:Z

    return v0
.end method

.method public declared-synchronized getIsVoPSEnabled()Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 3

    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsVoPSEnabled: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/NetworkChangeController;->mIsVoPSEnabled:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIsVoPSEnabled:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 295
    .end local p0    # "this":Lcom/sec/epdg/NetworkChangeController;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMobileDataRat()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataRat:I

    return v0
.end method

.method public getMobileDataReg()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobileDataReg:I

    return v0
.end method

.method public getMobleDataState()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mMobleDataState:I

    return v0
.end method

.method public getRoaming()Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    return-object v0
.end method

.method public getServiceState()Z
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 286
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 287
    iget v2, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 288
    .local v2, "ss":Landroid/telephony/ServiceState;
    if-eqz v2, :cond_2

    .line 289
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getMobileVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isLtePsOnlyReg()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 292
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    :cond_2
    return v1
.end method

.method public getVoiceRat()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    .line 104
    .local v0, "voiceRat":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isPsOnlyReg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    .line 107
    :cond_0
    return v0
.end method

.method public getVoiceRoamingType()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mVoiceRoamingType:I

    return v0
.end method

.method public isIndiaInternationalRoaming()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIndiaInternationalRoaming:Z

    return v0
.end method

.method public isLtePsOnlyReg()Z
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isPsOnlyReg()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0
.end method

.method isNetworkVpn()Z
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 356
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 357
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isPsOnlyReg()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/sec/epdg/NetworkChangeController;->mIsPsOnlyReg:Z

    return v0
.end method

.method protected isRoaming()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onNetworkStatusChanged(Z)V
    .locals 13
    .param p1, "needRefresh"    # Z

    .line 571
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->bootCompleted()V

    .line 573
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "Epdg service is not yet initialized, ignore onNetworkStatusChanged"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    .line 578
    .local v0, "voiceNetType":I
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v1

    .line 579
    .local v1, "dataNetType":I
    iget v2, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    .line 580
    .local v2, "mExistingActiveRat":I
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v3

    .line 583
    .local v3, "currentCellular":Z
    invoke-direct {p0, v3}, Lcom/sec/epdg/NetworkChangeController;->resetRoamingNotAllowedError(Z)V

    .line 585
    invoke-direct {p0, v3}, Lcom/sec/epdg/NetworkChangeController;->toggleWifiProfilingBycellularAvailable(Z)V

    .line 587
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/NetworkChangeController;->compareRoaming(Z)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_b

    .line 588
    const/4 v4, 0x1

    .line 589
    .local v4, "needToUpdate":Z
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNetworkStatusChanged: roaming voiceNetType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    if-nez v0, :cond_3

    iget-boolean v8, p0, Lcom/sec/epdg/NetworkChangeController;->mIsPsOnlyReg:Z

    if-eqz v8, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    iget v8, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgUtils;->isDifferentSimAndNWOperator(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/epdg/NetworkChangeController;->setRoaming(Z)V

    goto :goto_1

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 596
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v9, "onNetworkStatusChanged: Roaming to No svc"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v4, 0x0

    goto :goto_1

    .line 591
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/epdg/NetworkChangeController;->setRoaming(Z)V

    .line 600
    :cond_4
    :goto_1
    if-eqz v4, :cond_c

    .line 601
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->UpdateHandover()V

    .line 602
    iget v8, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 603
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v8

    if-nez v8, :cond_5

    .line 604
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v9, "Device recovers from roaming to home"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iput v7, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveVoiceRat:I

    .line 606
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v8

    sget-object v9, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCS:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 611
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8, v7}, Lcom/sec/epdg/EpdgSubScription;->sendRoamingVoiceNetworkAvailability(Z)V

    .line 613
    :cond_5
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->toggleLteProfiling()V

    .line 614
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->isLteIdleModeProfilingSupported()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgSubScription;->toggleLteIdleModeProfiling(Z)V

    .line 615
    iput-boolean v6, p0, Lcom/sec/epdg/NetworkChangeController;->mIsRoamingStatusChanged:Z

    goto :goto_2

    .line 616
    :cond_6
    iget v8, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    .line 617
    invoke-static {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorUscc()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 618
    :cond_7
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->toggleLteProfiling()V

    .line 619
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->isLteIdleModeProfilingSupported()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgSubScription;->toggleLteIdleModeProfiling(Z)V

    .line 622
    :cond_8
    :goto_2
    iget v8, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 626
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v6

    goto :goto_3

    :cond_9
    move v8, v5

    .line 627
    .local v8, "def_pref":I
    :goto_3
    invoke-direct {p0, v8}, Lcom/sec/epdg/NetworkChangeController;->preferredModeChangeByNetwork(I)V

    .line 628
    .end local v8    # "def_pref":I
    goto :goto_4

    .line 629
    :cond_a
    iget-object v8, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->updatePolicyTable()V

    goto :goto_4

    .line 632
    .end local v4    # "needToUpdate":Z
    :cond_b
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    sget-object v8, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v4, v8, :cond_c

    if-eqz v0, :cond_c

    .line 634
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Roaming unknown -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/NetworkChangeController;->setRoaming(Z)V

    .line 636
    iget v4, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 638
    invoke-direct {p0, v5}, Lcom/sec/epdg/NetworkChangeController;->preferredModeChangeByNetwork(I)V

    goto :goto_5

    .line 632
    :cond_c
    :goto_4
    nop

    .line 642
    :cond_d
    :goto_5
    iget-boolean v4, p0, Lcom/sec/epdg/NetworkChangeController;->mCellularAvailable:Z

    const/16 v8, 0xd

    if-ne v4, v3, :cond_e

    iget-boolean v4, p0, Lcom/sec/epdg/NetworkChangeController;->mIsRoamingStatusChanged:Z

    if-eqz v4, :cond_11

    .line 643
    :cond_e
    iput-boolean v7, p0, Lcom/sec/epdg/NetworkChangeController;->mIsRoamingStatusChanged:Z

    .line 645
    iget v4, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    const-string v9, "Vodafone_GB"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 646
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->isHandoverAvailable()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v9, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    .line 647
    invoke-virtual {v4, v9}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    if-eqz v4, :cond_f

    .line 648
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v9, "Celluler is available, But during Call in not Support Handover"

    invoke-static {v4, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4, v6}, Lcom/sec/epdg/EpdgSubScription;->setPendingProfilingDuringCall(Z)V

    .line 650
    invoke-virtual {p0, v6}, Lcom/sec/epdg/NetworkChangeController;->setIsRssiDisabledForProfiling(Z)V

    .line 653
    :cond_f
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 654
    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v4

    if-eq v4, v8, :cond_10

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v4

    const/16 v9, 0x14

    if-eq v4, v9, :cond_10

    .line 656
    invoke-direct {p0}, Lcom/sec/epdg/NetworkChangeController;->updateWiFiThreshold()V

    goto :goto_6

    .line 659
    :cond_10
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 660
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    .line 664
    :cond_11
    :goto_6
    iget v4, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 665
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNetworkStatusChanged: voiceNetType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mActiveVoiceRat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveVoiceRat:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget v4, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveVoiceRat:I

    if-eq v0, v4, :cond_12

    .line 667
    invoke-direct {p0, v0}, Lcom/sec/epdg/NetworkChangeController;->handleVoiceRatChangeWhileInRoaming(I)V

    .line 669
    :cond_12
    iput v0, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveVoiceRat:I

    .line 671
    :cond_13
    iget v4, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    if-ne v1, v4, :cond_14

    iget-boolean v4, p0, Lcom/sec/epdg/NetworkChangeController;->mCellularAvailable:Z

    if-ne v4, v3, :cond_14

    if-eqz p1, :cond_27

    .line 672
    :cond_14
    iput-boolean v3, p0, Lcom/sec/epdg/NetworkChangeController;->mCellularAvailable:Z

    .line 673
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    .line 674
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 673
    const-string v9, "airplane_mode_on"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_15

    move v4, v6

    goto :goto_7

    :cond_15
    move v4, v7

    .line 675
    .local v4, "isAirplaneModeEnabled":Z
    :goto_7
    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v9, v4}, Lcom/sec/epdg/EpdgSubScription;->setIsAirplaneMode(Z)V

    .line 679
    if-eqz v1, :cond_16

    if-nez v3, :cond_18

    .line 680
    :cond_16
    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v9

    sget-object v10, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v9, v10}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 681
    iget v9, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 682
    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v10, "Rat is unknown or Cellular is not available"

    invoke-static {v9, v10}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 683
    :cond_17
    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 684
    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v10, "Rat is unknown, enable wifi profiling"

    invoke-static {v9, v10}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->onWifiConnected()V

    .line 689
    :cond_18
    :goto_8
    iget v9, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 690
    invoke-direct {p0, v0, v1, v3}, Lcom/sec/epdg/NetworkChangeController;->handleAttNoRanCase(IIZ)V

    .line 693
    :cond_19
    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->is3gNetwork(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget v9, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    invoke-static {v9}, Lcom/sec/epdg/EpdgUtils;->is3gNetwork(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 694
    return-void

    .line 697
    :cond_1a
    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HO_OPTIMIZATION][NETCHANGE]Active Rat Changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    .line 699
    invoke-static {v12}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 697
    invoke-static {v9, v10}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iput v1, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    .line 704
    iget-object v9, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v10, v11, v1}, Lcom/sec/epdg/EpdgSubScription;->startTimerForPdnXfer(JI)V

    .line 706
    iget v9, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    if-ne v9, v8, :cond_1b

    .line 707
    sget-object v9, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v9, v6}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    goto :goto_9

    .line 708
    :cond_1b
    if-ne v2, v8, :cond_1c

    .line 709
    sget-object v9, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v9, v7}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 711
    :cond_1c
    :goto_9
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/NetworkChangeController;->toggleEdgeCheck(II)V

    .line 713
    iget v9, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v9

    iget-boolean v9, v9, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v9, :cond_1f

    iget v9, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    .line 714
    invoke-static {v9}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v9

    if-eqz v9, :cond_1d

    goto :goto_a

    .line 745
    :cond_1d
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 746
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->setIsLteAvailableDuringConnecting(Z)V

    goto/16 :goto_c

    .line 748
    :cond_1e
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v7}, Lcom/sec/epdg/EpdgSubScription;->setIsLteAvailableDuringConnecting(Z)V

    goto/16 :goto_c

    .line 715
    :cond_1f
    :goto_a
    iget v6, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    if-ne v6, v8, :cond_21

    .line 716
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v5

    if-nez v5, :cond_20

    .line 717
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/epdg/EpdgRunnable;->mLteOn:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgServiceRunnable;->performOperation()V

    goto/16 :goto_c

    .line 719
    :cond_20
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v6, "When LTE becomes available, smart lte is running, so in connected mode, smart lte decides the lte availability based upon signal strength"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 723
    :cond_21
    if-ne v2, v8, :cond_26

    .line 724
    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v7, "RAT change from LTE to other RAT, calling LTE off"

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget v6, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 726
    sget-object v6, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-virtual {p0, v6}, Lcom/sec/epdg/NetworkChangeController;->setIsVoPSEnabled(Lcom/sec/epdg/Constants/EpdgConstants$TriState;)V

    .line 728
    :cond_22
    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v6

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 729
    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 733
    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->onSystemSelectTimerFinish()V

    .line 735
    :cond_23
    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getWifiCallingPrefState()I

    move-result v6

    if-eq v6, v5, :cond_25

    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 736
    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getWifiCallingPrefState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_24

    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsLteAvailable()Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_b

    .line 739
    :cond_24
    iget v5, p0, Lcom/sec/epdg/NetworkChangeController;->mActiveRat:I

    const/16 v6, 0x12

    if-eq v5, v6, :cond_26

    .line 740
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/epdg/EpdgRunnable;->mLteOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgServiceRunnable;->performOperation()V

    goto :goto_c

    .line 737
    :cond_25
    :goto_b
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/epdg/EpdgRunnable;->mLteOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgServiceRunnable;->performOperation()V

    .line 751
    :cond_26
    :goto_c
    iget v5, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgUtils;->isWiFiScanStart()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 752
    iget v5, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicWiFiScan()V

    .line 755
    .end local v4    # "isAirplaneModeEnabled":Z
    :cond_27
    iput-boolean v3, p0, Lcom/sec/epdg/NetworkChangeController;->mCellularAvailable:Z

    .line 756
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCellularAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/epdg/NetworkChangeController;->mCellularAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method protected onVopsStatusChanged(Z)V
    .locals 7
    .param p1, "vops_enabled"    # Z

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "needToStartTimer":Z
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getIsVoPSEnabled()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-eq v1, v2, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 309
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/epdg/EpdgSubScription;->isRegistrationRequired(ZZZZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 314
    :cond_0
    if-eqz p1, :cond_1

    .line 315
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/NetworkChangeController;->setIsVoPSEnabled(Lcom/sec/epdg/Constants/EpdgConstants$TriState;)V

    .line 316
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/epdg/NetworkChangeController;->MoveToBasedOnVopsOrSsac(IZ)V

    goto :goto_0

    .line 318
    :cond_1
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/NetworkChangeController;->setIsVoPSEnabled(Lcom/sec/epdg/Constants/EpdgConstants$TriState;)V

    .line 319
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/epdg/NetworkChangeController;->MoveToBasedOnVopsOrSsac(IZ)V

    .line 321
    :goto_0
    return-void
.end method

.method public registerPhoneStateListener(I)V
    .locals 3
    .param p1, "subId"    # I

    .line 789
    iput p1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    .line 790
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneStateListener:Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;

    const/16 v2, 0x10e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 796
    return-void
.end method

.method registerReceivers(I)V
    .locals 7
    .param p1, "subId"    # I

    .line 856
    new-instance v0, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v0

    .line 857
    .local v0, "networkSpecifier":Landroid/net/NetworkSpecifier;
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 858
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 859
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 860
    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 862
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v1, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 863
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 864
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 865
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 866
    invoke-virtual {v3, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 867
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 868
    .local v3, "requestForEpdn":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mEmergencyNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v4, v3, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 869
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 870
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 871
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 872
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 873
    .local v4, "requestForWifi":Landroid/net/NetworkRequest;
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v5, v4, v6}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 874
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 876
    iget v5, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    if-eqz v5, :cond_0

    .line 877
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/sec/epdg/NetworkChangeController;->mEntitlementCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 879
    :cond_0
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 880
    iget-object v5, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v2}, Lcom/sec/epdg/EpdgSubScription;->setWifiMgrState(I)V

    .line 882
    :cond_1
    return-void
.end method

.method setIsRssiDisabledForProfiling(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 350
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRssiDisabledForProfiling: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iput-boolean p1, p0, Lcom/sec/epdg/NetworkChangeController;->mIsRssiDisabledForProfiling:Z

    .line 352
    return-void
.end method

.method setIsSsacVoiceEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 206
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSsacVoiceEnabled: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-boolean p1, p0, Lcom/sec/epdg/NetworkChangeController;->mSsacVoiceEnabled:Z

    .line 208
    return-void
.end method

.method declared-synchronized setIsVoPSEnabled(Lcom/sec/epdg/Constants/EpdgConstants$TriState;)V
    .locals 3
    .param p1, "value"    # Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsVoPSEnabled: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController;->mIsVoPSEnabled:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 300
    .end local p0    # "this":Lcom/sec/epdg/NetworkChangeController;
    .end local p1    # "value":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRoaming(Lcom/sec/epdg/Constants/EpdgConstants$TriState;)V
    .locals 0
    .param p1, "mRoaming"    # Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 97
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController;->mRoaming:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 98
    return-void
.end method

.method startTepdgCsTimerIfNeeded()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 444
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 445
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->TAG:Ljava/lang/String;

    const-string v1, "startTepdgCsTimerIfNeeded: Starting tepdg cs timer"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCS:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 449
    :cond_0
    return-void
.end method

.method public unregisterPhoneStateListener()V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneStateListener:Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneStateListener:Lcom/sec/epdg/NetworkChangeController$EpdgPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 978
    :cond_0
    return-void
.end method

.method unregisterReceivers()V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 886
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mEmergencyNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 887
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 888
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 890
    iget v0, p0, Lcom/sec/epdg/NetworkChangeController;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mEntitlementCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 893
    :cond_0
    return-void
.end method

.method updateMapconTableByNettype()V
    .locals 4

    .line 379
    invoke-virtual {p0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    .line 381
    .local v0, "voiceNetType":I
    if-nez v0, :cond_0

    .line 383
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v1

    .line 387
    .local v1, "currPref":I
    const/4 v2, 0x2

    .line 389
    .local v2, "setPref":I
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->isVolteEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    const/4 v2, 0x2

    goto :goto_0

    .line 392
    :cond_1
    const/4 v2, 0x1

    .line 395
    :goto_0
    if-eq v1, v2, :cond_2

    .line 396
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3, v2}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 398
    :cond_2
    return-void
.end method
