.class public Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
.super Ljava/lang/Object;
.source "SmartWifiProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;,
        Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;,
        Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;
    }
.end annotation


# static fields
.field private static final DEFAULT_WIFI_READING:I = 0x0

.field public static final MAX_RSSI:I = -0x37

.field public static final MIN_RSSI:I = -0x64

.field private static SUB_TAG:Ljava/lang/String; = null

.field private static final WIFI_DISCONNECTED_RSSI:I = -0xc8

.field private static final WIFI_DISCONNECTED_RSSI_2:I = -0x7f

.field private static mSmartWifiProfiler:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

.field private static mSmartWifiProfiler2:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

.field public mCaptiveAuthenticated:Z

.field private mCaptivePortalNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultWifiLevel:I

.field private mDefaultWifiRoveIn:I

.field private mDefaultWifiRoveOut:I

.field private mEdgeNotiCnt:I

.field private mEdgeNotiStartTime:J

.field private mEdgeNotiSwitch:Z

.field private mEnableEdgeNoti:Z

.field private mEpdgUtils:Lcom/sec/epdg/EpdgUtils;

.field private mHandler:Landroid/os/Handler;

.field private mHandoverThresholdMet:Z

.field private mIsPollingZone:Z

.field private mIsScreenOn:Z

.field private mL2WHandoverProfilingStarted:Z

.field private mL2WHandoverRssi:I

.field private mLastKnownWifiRSSI:I

.field private mMetHoThreshold:Z

.field private mNetworkChangeController:Lcom/sec/epdg/interfaces/INetworkChangeController;

.field private mNotAuthCaptiveState:Z

.field private mPhoneId:I

.field private mPollCaptive:Z

.field private mProfilingStarted:Z

.field private mResultOfRunnableForCannotSwitchToWifi:Z

.field private final mRssiChecker:Ljava/lang/Object;

.field private mRunnableL2WHandoverOn:Ljava/lang/Runnable;

.field private mRunnableLteMeasurement:Ljava/lang/Runnable;

.field private mRunnableWifiOff:Ljava/lang/Runnable;

.field private mRunnableWifiOn:Ljava/lang/Runnable;

.field private mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;

.field private mSmartWifiTelListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;

.field private mSubId:I

.field private mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mW2LHandoverForWeakWifiSignal:Z

.field private mWeakWifiDb:I

.field private mWeakWifiLevel:I

.field private mWiFiValidateNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiEdgeRoveIn:I

.field private mWifiEdgeRoveOut:I

.field private mWifiHandoverTh:I

.field private mWifiHysterisis:I

.field private mWifiRoveIn:I

.field private mWifiRoveInInWifiOnly:I

.field private mWifiRoveOut:I

.field private mWifiRoveOutInWifiOnly:I

.field private pollRssiListener:Lcom/sec/epdg/WifiInterface/PollRssiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "[SMARTWIFI]"

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILcom/sec/epdg/interfaces/IEpdgSubScription;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I
    .param p5, "epdgSubScription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverRssi:I

    .line 66
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I

    .line 68
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHysterisis:I

    .line 69
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiLevel:I

    .line 70
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiRoveIn:I

    .line 71
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiRoveOut:I

    .line 74
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverProfilingStarted:Z

    .line 75
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mMetHoThreshold:Z

    .line 77
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mW2LHandoverForWeakWifiSignal:Z

    .line 79
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mResultOfRunnableForCannotSwitchToWifi:Z

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRssiChecker:Ljava/lang/Object;

    .line 84
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mIsPollingZone:Z

    .line 89
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mNotAuthCaptiveState:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptiveAuthenticated:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEnableEdgeNoti:Z

    .line 92
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiSwitch:Z

    .line 93
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiStartTime:J

    .line 1012
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$1;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptivePortalNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1048
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$2;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWiFiValidateNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1084
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$3;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->pollRssiListener:Lcom/sec/epdg/WifiInterface/PollRssiListener;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mHandler:Landroid/os/Handler;

    .line 162
    iput p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    .line 163
    iput p4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSubId:I

    .line 165
    invoke-static {p3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEpdgUtils:Lcom/sec/epdg/EpdgUtils;

    .line 166
    iput-object p5, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 167
    invoke-interface {p5}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    .line 168
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/interfaces/INetworkChangeController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mNetworkChangeController:Lcom/sec/epdg/interfaces/INetworkChangeController;

    .line 169
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler$1;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;

    .line 170
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler$1;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiTelListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;

    .line 171
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 172
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 173
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 175
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 176
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 178
    .local v0, "requestForCaptivePortal":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptivePortalNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v0, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 179
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 180
    invoke-virtual {v3, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 182
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 184
    .local v1, "requestForWiFiValidate":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWiFiValidateNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 186
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 40
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isNetworkVpn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->handleWifiRssiIntent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 40
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 40
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mMetHoThreshold:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mMetHoThreshold:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 40
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isVoLTEHandoverReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 40
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->calculateWeakWifiLevelAndRssiDb()V

    return-void
.end method

.method private addInitialReadingForWifi()V
    .locals 4

    .line 567
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isConnectedOnWifi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v0

    .line 569
    .local v0, "rssi":I
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New rssi is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mWifiHandoverTh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 571
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isWifiRssiLessOrEqualsHandoverThreshold(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isRssiInHystersisZone(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    goto :goto_0

    .line 577
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isRssiInHystersisZone(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    add-int/lit8 v0, v1, -0x1

    .line 581
    :cond_2
    :goto_0
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    .line 582
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->selectRunnableWifi()V

    .line 583
    .end local v0    # "rssi":I
    goto :goto_1

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v1, "!! Wifi not connected and startprofiling called !!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    .line 587
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->stopProfiling()V

    .line 589
    :goto_1
    return-void
.end method

.method private calculateWeakWifiLevelAndRssiDb()V
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mNetworkChangeController:Lcom/sec/epdg/interfaces/INetworkChangeController;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/INetworkChangeController;->getServiceState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getDefaultWeakWifiLevel()I

    move-result v0

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I

    if-eq v0, v2, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getDefaultWeakWifiLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWeakWifiLevel(I)V

    .line 680
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiRoveIn:I

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiRoveOut:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(III)V

    goto :goto_0

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getDefaultWeakWifiLevel()I

    move-result v0

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I

    if-ne v0, v2, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getDefaultWeakWifiLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWeakWifiLevel(I)V

    .line 685
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveInInWifiOnly:I

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOutInWifiOnly:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(III)V

    .line 688
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateWeakWifiLevelAndRssiDb mWeakWifiLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getWeakWifiLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / mWifiRoveIn  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / mWifiRoveOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / mWifiRoveInInWifiOnly  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveInInWifiOnly:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / mWifiRoveOutInWifiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOutInWifiOnly:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method private checkAndRunPollRssi()V
    .locals 2

    .line 881
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    if-eqz v0, :cond_3

    .line 882
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mIsScreenOn:Z

    if-nez v0, :cond_0

    .line 883
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->startRssiStrengthChecker()V

    .line 884
    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v0

    .line 887
    .local v0, "currentRssi":I
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isRssiInHystersisZone(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->startRssiStrengthChecker()V

    .line 889
    return-void

    .line 891
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->checkAndSendEdgeNoti(I)Z

    .line 892
    iget-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEnableEdgeNoti:Z

    if-eqz v1, :cond_2

    .line 893
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->startRssiStrengthChecker()V

    .line 894
    return-void

    .line 898
    .end local v0    # "currentRssi":I
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->stopRssiStrengthChecker()V

    .line 900
    :cond_3
    return-void
.end method

.method private checkAndSendEdgeNoti(I)Z
    .locals 11
    .param p1, "currentRssi"    # I

    .line 931
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiSwitch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 933
    :cond_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiEdgeRoveIn:I

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEnableEdgeNoti:Z

    if-nez v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v3, "re-start Edge of WIFI coverage notification"

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEnableEdgeNoti:Z

    .line 937
    return v1

    .line 938
    :cond_1
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEnableEdgeNoti:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiEdgeRoveOut:I

    if-gt p1, v0, :cond_6

    .line 939
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEpdgUtils:Lcom/sec/epdg/EpdgUtils;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isWfcCallDropNotiEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 940
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v3, "Send Edge of WIFI coverage noti & stop noti until RSSI > ROVEIN TH"

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_3

    .line 942
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    if-nez v0, :cond_5

    .line 944
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateEdgeNoti(Landroid/content/Context;)V

    .line 945
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    goto :goto_1

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateEdgeNoti(Landroid/content/Context;)V

    .line 950
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    goto :goto_1

    .line 953
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 954
    .local v3, "curMili":J
    iget-wide v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiStartTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x708

    cmp-long v0, v5, v7

    if-ltz v0, :cond_5

    .line 955
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateEdgeNoti(Landroid/content/Context;)V

    .line 956
    iput v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    .line 957
    :goto_0
    iget-wide v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiStartTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    .line 958
    const-wide/32 v7, 0x1b7740

    add-long v9, v5, v7

    cmp-long v0, v3, v9

    if-lez v0, :cond_4

    .line 959
    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiStartTime:J

    goto :goto_0

    .line 961
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEdgeNotiStartTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiStartTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .end local v3    # "curMili":J
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEnableEdgeNoti:Z

    .line 968
    return v2

    .line 971
    :cond_6
    return v1
.end method

.method private deInit()V
    .locals 3

    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->unregisterForCaptiveChange()V

    .line 1115
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiTelListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1116
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptivePortalNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1117
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWiFiValidateNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1118
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;IILcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .param p4, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 134
    if-nez p2, :cond_2

    .line 135
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    if-nez v0, :cond_1

    .line 136
    const-class v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;-><init>(Landroid/content/Context;Landroid/os/Handler;IILcom/sec/epdg/interfaces/IEpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 141
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 143
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    return-object v0

    .line 145
    :cond_2
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler2:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    if-nez v0, :cond_4

    .line 146
    const-class v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    monitor-enter v0

    .line 147
    :try_start_1
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler2:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    if-nez v1, :cond_3

    .line 148
    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;-><init>(Landroid/content/Context;Landroid/os/Handler;IILcom/sec/epdg/interfaces/IEpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler2:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 151
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 153
    :cond_4
    :goto_1
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler2:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    return-object v0
.end method

.method private getWeakWifiRssiDb(II)I
    .locals 2
    .param p1, "wifiGoodDb"    # I
    .param p2, "wifiBadDb"    # I

    .line 285
    sub-int v0, p2, p1

    .line 286
    .local v0, "dbDifference":I
    div-int/lit8 v1, v0, 0x2

    neg-int v1, v1

    iput v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHysterisis:I

    .line 288
    sub-int v1, p1, v1

    return v1
.end method

.method private handleWifiRssiIntent(I)V
    .locals 7
    .param p1, "rssi"    # I

    .line 323
    move v0, p1

    .line 324
    .local v0, "newRssi":I
    const/4 v1, 0x0

    .line 325
    .local v1, "captiveSuccess":Z
    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    if-nez v2, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 329
    .local v2, "wifiMenu":I
    if-nez v2, :cond_1

    .line 330
    return-void

    .line 332
    :cond_1
    sget-object v3, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v3, p1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 333
    iget-boolean v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPollCaptive:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 334
    invoke-direct {p0, v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isCaptivePortalAuthenticated(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 335
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v6, "Captive portal is now authenticated"

    invoke-static {v3, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x1

    .line 340
    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    if-eqz v3, :cond_4

    .line 341
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isWifiRssiLessOrEqualsHandoverThreshold(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    invoke-virtual {p0, v5}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isRssiInHystersisZone(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 344
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    goto :goto_0

    .line 348
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unauthenticated captive portal -- drop RSSI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 353
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 354
    iput v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    goto :goto_3

    .line 356
    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isFunnyRssi(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 357
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi RSSI dropped (out of range) -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void

    .line 360
    :cond_6
    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    if-eqz v3, :cond_9

    .line 361
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isWifiRssiLessOrEqualsHandoverThreshold(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 362
    invoke-virtual {p0, v5}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V

    .line 363
    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    if-ge v0, v3, :cond_7

    move v3, v0

    goto :goto_1

    .line 364
    :cond_7
    sub-int/2addr v3, v5

    :goto_1
    move v0, v3

    goto :goto_2

    .line 370
    :cond_8
    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    if-gt v3, v4, :cond_9

    if-le v0, v4, :cond_9

    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    if-ge v0, v3, :cond_9

    .line 373
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    .line 377
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->checkAndRunPollRssi()V

    .line 379
    :goto_3
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isRssiInHystersisZone(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->addReading(Ljava/lang/Integer;)V

    .line 382
    :cond_a
    return-void
.end method

.method private isCaptivePortalAuthenticated(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    .line 784
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isWifiGoodLink()Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    move-result-object v0

    .line 785
    .local v0, "wifiLinkStatus":Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    .line 788
    invoke-virtual {p0, v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setResultOfRunnableForCannotSwitchToWifi(Z)V

    .line 789
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->unregisterForCaptiveChange()V

    .line 790
    return v2

    .line 791
    :cond_0
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    if-ne v1, v0, :cond_1

    .line 794
    invoke-virtual {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setResultOfRunnableForCannotSwitchToWifi(Z)V

    .line 795
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->registerForCaptiveChange(Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;)V

    .line 796
    return v3

    .line 800
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setResultOfRunnableForCannotSwitchToWifi(Z)V

    .line 801
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCaptivePortalAuthenticated: defaultValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " wifiLinkStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->registerForCaptiveChange(Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;)V

    .line 804
    return p1
.end method

.method private isConnectedOnWifi()Z
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEpdgUtils:Lcom/sec/epdg/EpdgUtils;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isConnectedOnWifi()Z

    move-result v0

    return v0
.end method

.method private isFunnyRssi(I)Z
    .locals 1
    .param p1, "rssi"    # I

    .line 292
    const/16 v0, -0xc8

    if-eq v0, p1, :cond_1

    const/16 v0, -0x7f

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNetworkVpn()Z
    .locals 3

    .line 868
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 869
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 870
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

.method private isRssiInHystersisZone(I)Z
    .locals 6
    .param p1, "rssi"    # I

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "mIsRssiInHystersis":Z
    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 535
    .local v1, "highrange":I
    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    .line 537
    .local v3, "lowrange":I
    const/16 v4, -0x64

    if-ge v3, v4, :cond_0

    .line 538
    const/16 v3, -0x64

    .line 540
    :cond_0
    const/16 v4, -0x37

    if-le v1, v4, :cond_1

    .line 541
    const/16 v1, -0x37

    .line 544
    :cond_1
    if-gt p1, v1, :cond_2

    if-lt p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 546
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rssi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " highrange : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lowrange : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mIsRssiInHystersis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return v0
.end method

.method private declared-synchronized isRssiStrengthCheckerRunning()Z
    .locals 1

    monitor-enter p0

    .line 258
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mIsPollingZone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 258
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isVoLTEHandoverReady()Z
    .locals 8

    .line 497
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    .line 498
    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v4, "TMobile_DE"

    const-string v5, "TMobile_CZ"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    .line 499
    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorOrangeGlobal()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mNetworkChangeController:Lcom/sec/epdg/interfaces/INetworkChangeController;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/INetworkChangeController;->getMobileDataRat()I

    move-result v0

    .line 516
    .local v0, "dataNetworkType":I
    if-eq v0, v2, :cond_2

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1

    .line 500
    .end local v0    # "dataNetworkType":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mNetworkChangeController:Lcom/sec/epdg/interfaces/INetworkChangeController;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/INetworkChangeController;->getVoiceRat()I

    move-result v0

    .line 501
    .local v0, "networkType":I
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mNetworkChangeController:Lcom/sec/epdg/interfaces/INetworkChangeController;

    invoke-interface {v4}, Lcom/sec/epdg/interfaces/INetworkChangeController;->getServiceState()Z

    move-result v4

    .line 504
    .local v4, "serviceState":Z
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEpdgUtils:Lcom/sec/epdg/EpdgUtils;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Z

    move-result v5

    .line 505
    .local v5, "isVolteEnabled":Z
    iget-object v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v6}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getIsVopsSupport()Z

    move-result v6

    .line 506
    .local v6, "isVoPSSupported":Z
    if-eqz v4, :cond_4

    if-ne v0, v2, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    .line 508
    .local v1, "isVoLTEHandoverReady":Z
    :goto_2
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVoLTEHandoverReady() : isVoLTEHandoverReady="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", serviceState="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", networkType="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isVolteEnabled="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isVoPSSupported="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return v1
.end method

.method private isWifiGoodLink()Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;
    .locals 11

    .line 808
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isConnectedOnWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v1, "Wifi not connected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    .line 814
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 815
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 816
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 817
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v4, "no connected wifi. wifi info is null"

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 818
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v2

    .line 821
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, "currentSSID":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 823
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to get SSID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 824
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v2

    .line 827
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 828
    .local v4, "conns":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_3

    .line 829
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v5, "unable to get wifi network configuration"

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v2

    .line 832
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 833
    .local v6, "conn":Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    .line 834
    .local v7, "ssid":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 835
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 836
    iget-object v8, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing conn with ssid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 837
    if-eqz v7, :cond_5

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 838
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getCaptiveNotAuthStatus()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 839
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptiveAuthenticated:Z

    .line 840
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v2

    .line 842
    :cond_4
    iget-object v8, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCaptiveAuthenticated : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptiveAuthenticated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-boolean v8, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptiveAuthenticated:Z

    if-eqz v8, :cond_5

    .line 844
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v2

    .line 848
    .end local v6    # "conn":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 849
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v5, "unable to find status about connected wifi"

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v2
.end method

.method private isWifiRssiLessOrEqualsHandoverThreshold(I)Z
    .locals 3
    .param p1, "rssi"    # I

    .line 527
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiRssiLessOrEqualsHandoverThreshold: received rssi is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " handover threshold is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWifiSignalDegraded(II)Z
    .locals 3
    .param p1, "lastStrength"    # I
    .param p2, "currentStrength"    # I

    .line 406
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 408
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    if-lt p1, v0, :cond_0

    .line 410
    return v2

    .line 411
    :cond_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    if-gt p2, v0, :cond_1

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    if-ge p1, v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v1, "isWifiSignalDegraded: Wifi rssi further dropped till handover DB value"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return v2

    .line 418
    :cond_1
    return v1

    .line 421
    :cond_2
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    if-ge p2, v0, :cond_3

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    if-lt p1, v0, :cond_3

    .line 423
    return v2

    .line 425
    :cond_3
    return v1
.end method

.method private isWifiSignalUpgraded(II)Z
    .locals 1
    .param p1, "lastStrength"    # I
    .param p2, "currentStrength"    # I

    .line 386
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    if-lt p2, v0, :cond_1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    if-lt p1, v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 387
    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isEpdgAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0
.end method

.method private isWifiSignalUpgradedToL2WHandoverThreshold(I)Z
    .locals 4
    .param p1, "currentStrength"    # I

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "result":Z
    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isL2WHandoverProfilingRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverRssi:I

    if-lt p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L2WHandoverProfiling is running and wifi is now better then handover RSSI currentStrength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mL2WHandoverRssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v2, "No need to send L2WHandoverProfiling runnable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_1
    :goto_0
    return v0
.end method

.method private postRunnableToEpdg(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 612
    if-nez p1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v1, "postRunnableToEpdg: Runnable is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void
.end method

.method private declared-synchronized registerForCaptiveChange(Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;)V
    .locals 1
    .param p1, "wifiLinkStatus"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    monitor-enter p0

    .line 699
    :try_start_0
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    if-ne p1, v0, :cond_0

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPollCaptive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :cond_0
    monitor-exit p0

    return-void

    .line 698
    .end local p1    # "wifiLinkStatus":Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private registerPollRssi()V
    .locals 2

    .line 1092
    invoke-static {}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->getInstance()Lcom/sec/epdg/WifiInterface/RssiNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->pollRssiListener:Lcom/sec/epdg/WifiInterface/PollRssiListener;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->registerPollRssiListener(Lcom/sec/epdg/WifiInterface/PollRssiListener;)V

    .line 1093
    return-void
.end method

.method private selectRunnableWifi()V
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->algoForStartProfiling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    .line 608
    :goto_0
    return-void
.end method

.method private declared-synchronized setRssiStrengthCheckerRunning(Z)V
    .locals 0
    .param p1, "result"    # Z

    monitor-enter p0

    .line 262
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mIsPollingZone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 261
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .end local p1    # "result":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startRssiStrengthChecker()V
    .locals 1

    .line 874
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isRssiStrengthCheckerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->registerPollRssi()V

    .line 876
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setRssiStrengthCheckerRunning(Z)V

    .line 878
    :cond_0
    return-void
.end method

.method private stopRssiStrengthChecker()V
    .locals 1

    .line 903
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isRssiStrengthCheckerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setRssiStrengthCheckerRunning(Z)V

    .line 905
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->unRegisterPollRssi()V

    .line 907
    :cond_0
    return-void
.end method

.method private unRegisterPollRssi()V
    .locals 2

    .line 1096
    invoke-static {}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->getInstance()Lcom/sec/epdg/WifiInterface/RssiNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->pollRssiListener:Lcom/sec/epdg/WifiInterface/PollRssiListener;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->unregisterPollRssiListener(Lcom/sec/epdg/WifiInterface/PollRssiListener;)V

    .line 1097
    return-void
.end method

.method private declared-synchronized unregisterForCaptiveChange()V
    .locals 1

    monitor-enter p0

    .line 695
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPollCaptive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 694
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addReading(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "sigstr"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 431
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    .line 432
    .local v0, "lastStrength":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    .line 433
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 434
    .local v1, "currentStrength":I
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isWifiSignalUpgraded(II)Z

    move-result v2

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi signal is Upgraded : (lastStrength"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : mWeakWifiLevel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : mWifiRoveIn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : mWifiRoveOut"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : currentStrength)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iput-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mMetHoThreshold:Z

    .line 439
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->selectRunnableWifi()V

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",Wifi signal upgraded "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->algoForStartProfiling()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 443
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v3, "EPDI (STRONG_WIFI_SIGNAL)"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto/16 :goto_0

    .line 447
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isWifiSignalUpgradedToL2WHandoverThreshold(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableL2WHandoverOn:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 450
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isWifiSignalDegraded(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 451
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi signal is Degraded : (lastStrength"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : mWeakWifiLevel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : mWifiRoveIn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : mWifiRoveOut"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : currentStrength)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->POOR_WIFI:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 455
    invoke-virtual {v5}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v5

    iget v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    .line 454
    invoke-static {v2, v5, v6}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUnifiedWfcSummaryBroadcast(Landroid/content/Context;II)V

    .line 456
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v5, "Wifi entered into weak zone again"

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",Wifi signal degraded "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 458
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isVoLTEHandoverReady()Z

    move-result v2

    if-nez v2, :cond_3

    .line 460
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v5, "But ignore W2L HO in non-LTE NW"

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V

    .line 462
    iput-boolean v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mMetHoThreshold:Z

    goto/16 :goto_0

    .line 463
    :cond_3
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    const-string v5, "TMobile_DE"

    const-string v6, "TMobile_CZ"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    .line 464
    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorOrangeGlobal()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 465
    :cond_4
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isVoLTEHandoverReady()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isCallInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 466
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v5, "But ignore W2L HO in non-LTE NW during Call"

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0, v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V

    .line 468
    iput-boolean v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mMetHoThreshold:Z

    goto :goto_0

    .line 470
    :cond_5
    iput-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mMetHoThreshold:Z

    .line 472
    invoke-virtual {p0, v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setW2LHandoverForWeakWifiSignal(Z)V

    .line 473
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v2}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->resetRtpHandoverCnt()V

    .line 474
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOff:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    .line 475
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v2, :cond_6

    .line 476
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableLteMeasurement:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    .line 479
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v3, "EPDI (WEAK_WIFI_SIGNAL)"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 483
    :cond_7
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    if-ge v1, v2, :cond_8

    .line 484
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v2, :cond_8

    .line 485
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableLteMeasurement:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    .line 488
    :cond_8
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getHandoverThresholdMet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 489
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v3, "Need to clear handover threshold"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_9
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    .end local v0    # "lastStrength":I
    .end local v1    # "currentStrength":I
    .end local p1    # "sigstr":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public algoForStartProfiling()Ljava/lang/Boolean;
    .locals 2

    .line 598
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isWifiSignalGoodEnough()Z

    move-result v0

    .line 599
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isCaptivePortalAuthenticated(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public captivePortalChanged(Z)V
    .locals 2
    .param p1, "authenticated"    # Z

    .line 855
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptiveAuthenticated:Z

    .line 856
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPollCaptive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    if-eqz v0, :cond_0

    .line 857
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    .line 858
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v0

    .line 859
    .local v0, "newRssi":I
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->handleWifiRssiIntent(I)V

    .end local v0    # "newRssi":I
    goto :goto_0

    .line 860
    :cond_0
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPollCaptive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mCaptiveAuthenticated:Z

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v1, "AP is now a captive portal, posting mWifi Off"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPollCaptive:Z

    .line 863
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 860
    :cond_1
    :goto_0
    nop

    .line 865
    :goto_1
    return-void
.end method

.method public deinitialize()V
    .locals 2

    .line 1121
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    if-eqz v0, :cond_0

    .line 1122
    invoke-direct {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->deInit()V

    .line 1123
    sput-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    goto :goto_0

    .line 1124
    :cond_0
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler2:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    if-eqz v0, :cond_1

    .line 1125
    invoke-direct {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->deInit()V

    .line 1126
    sput-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiProfiler2:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 1128
    :cond_1
    :goto_0
    return-void
.end method

.method public enableEdgeCheck(Z)V
    .locals 0
    .param p1, "turnon"    # Z

    .line 924
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEnableEdgeNoti:Z

    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiSwitch:Z

    .line 925
    if-eqz p1, :cond_0

    .line 926
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->checkAndRunPollRssi()V

    .line 928
    :cond_0
    return-void
.end method

.method public getCaptiveNotAuthStatus()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mNotAuthCaptiveState:Z

    return v0
.end method

.method public declared-synchronized getDefaultWeakWifiLevel()I
    .locals 1

    monitor-enter p0

    .line 254
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 254
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEdgeNotiStartTime()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiStartTime:J

    return-wide v0
.end method

.method public declared-synchronized getHandoverThresholdMet()Z
    .locals 3

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandoverThresholdMet: value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mHandoverThresholdMet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mHandoverThresholdMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 205
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResultOfRunnableForCannotSwitchToWifi()Z
    .locals 3

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResultOfRunnableForCannotSwitchToWifi: value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mResultOfRunnableForCannotSwitchToWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mResultOfRunnableForCannotSwitchToWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 227
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoveInWifiRssi()I
    .locals 1

    .line 1080
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    return v0
.end method

.method public getRoveOutWifiRssi()I
    .locals 1

    .line 1076
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    return v0
.end method

.method public declared-synchronized getW2LHandoverForWeakWifiSignal()Z
    .locals 3

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getW2LHandoverForWeakWiFiSignal: value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mW2LHandoverForWeakWifiSignal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mW2LHandoverForWeakWifiSignal:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 216
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWeakWifiLevel()I
    .locals 1

    monitor-enter p0

    .line 241
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 241
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleScreenStateChanged(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 1100
    if-eqz p1, :cond_0

    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mIsScreenOn:Z

    goto :goto_0

    .line 1103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mIsScreenOn:Z

    .line 1105
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->checkAndRunPollRssi()V

    .line 1106
    return-void
.end method

.method public isCallInProgress()Z
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentWeakWifiSignal()Z
    .locals 3

    .line 643
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isConnectedOnWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    if-ge v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrentWeakWiFiState : Lastest Wi-Fi RSSI value ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is lower than mWifiBadDbValue ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v0, 0x1

    return v0

    .line 649
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEdgeCheckRunning()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiSwitch:Z

    return v0
.end method

.method public isL2WHandoverProfilingRunning()Z
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isL2WHandoverProfilingRunning: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverProfilingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverProfilingStarted:Z

    return v0
.end method

.method public isSmartWifiRunning()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    return v0
.end method

.method public declared-synchronized isWifiSignalGoodEnough()Z
    .locals 7

    monitor-enter p0

    .line 620
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v2, "not enough wifi history"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return v1

    .line 624
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    .line 625
    .local v0, "wifiSignal":I
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    sub-int/2addr v2, v1

    .line 626
    .local v2, "badWifiValue":I
    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    .line 628
    .local v3, "goodWifiValue":I
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 629
    if-gt v0, v2, :cond_2

    .line 630
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi too weak to handover"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    monitor-exit p0

    return v5

    .line 634
    :cond_1
    if-ge v0, v3, :cond_2

    .line 635
    :try_start_2
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi too weak to handover"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 636
    monitor-exit p0

    return v5

    .line 639
    :cond_2
    monitor-exit p0

    return v1

    .line 619
    .end local v0    # "wifiSignal":I
    .end local v2    # "badWifiValue":I
    .end local v3    # "goodWifiValue":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public islteToWifiHORecommended()V
    .locals 1

    .line 592
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    if-eqz v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->selectRunnableWifi()V

    .line 595
    :cond_0
    return-void
.end method

.method public pollAndGetWifiRssi()V
    .locals 5

    .line 910
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isConnectedOnWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    .line 912
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 913
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 916
    .local v1, "rssi":I
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollAndGetWifiRssi: rssi is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->handleWifiRssiIntent(I)V

    .line 921
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v1    # "rssi":I
    :cond_0
    return-void
.end method

.method public resetEdgeNotiCnt()V
    .locals 2

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiCnt:I

    .line 267
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v1, "resetEdgeNotiCnt"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method setCaptiveNotAuthStatus(Z)V
    .locals 0
    .param p1, "notAuthCaptiveState"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mNotAuthCaptiveState:Z

    .line 198
    return-void
.end method

.method public declared-synchronized setDefaultWeakWifiLevel(I)V
    .locals 0
    .param p1, "wifiLevel"    # I

    monitor-enter p0

    .line 245
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .end local p1    # "wifiLevel":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDefaultWifiDbValue(II)V
    .locals 0
    .param p1, "goodValue"    # I
    .param p2, "badValue"    # I

    monitor-enter p0

    .line 249
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiRoveIn:I

    .line 250
    iput p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mDefaultWifiRoveOut:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 248
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .end local p1    # "goodValue":I
    .end local p2    # "badValue":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEdgeNotiStartTime(J)V
    .locals 4
    .param p1, "currentMillis"    # J

    .line 275
    iput-wide p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiStartTime:J

    .line 276
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEdgeNotiStartTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mEdgeNotiStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public declared-synchronized setHandoverThresholdMet(Z)V
    .locals 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandoverThresholdMet: set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mHandoverThresholdMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 200
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .end local p1    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setResultOfRunnableForCannotSwitchToWifi(Z)V
    .locals 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResultOfRunnableForCannotSwitchToWifi: set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mResultOfRunnableForCannotSwitchToWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 222
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .end local p1    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setW2LHandoverForWeakWifiSignal(Z)V
    .locals 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setW2LHandoverForWeakWiFiSignal: set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mW2LHandoverForWeakWifiSignal:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 211
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .end local p1    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWeakWifiLevel(I)V
    .locals 0
    .param p1, "wifiLevel"    # I

    monitor-enter p0

    .line 237
    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 236
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .end local p1    # "wifiLevel":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setWifiRoveOutDuringCall(I)V
    .locals 0
    .param p1, "wifiRoveOut"    # I

    .line 233
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    .line 234
    return-void
.end method

.method public setWifiThreshold(III)V
    .locals 1
    .param p1, "goodWifiThreshold"    # I
    .param p2, "badWifiThreshold"    # I
    .param p3, "handoverWifiThreshold"    # I

    .line 668
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    .line 669
    iput p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    .line 670
    iput p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    .line 671
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, p1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 672
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, p2}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 674
    return-void
.end method

.method public setWifiThreshold(Lcom/sec/epdg/DataType/EpdgWifiThreshold;)V
    .locals 2
    .param p1, "wifiThreshold"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold;

    .line 653
    invoke-virtual {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->getWifiRoveIn()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    .line 654
    invoke-virtual {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->getWifiRoveOut()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    .line 655
    invoke-virtual {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->getWifiHandoverTh()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiHandoverTh:I

    .line 656
    invoke-virtual {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->getWifiRoveInInWifiOnly()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveInInWifiOnly:I

    .line 657
    invoke-virtual {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->getWifiRoveOutInWifiOnly()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOutInWifiOnly:I

    .line 658
    invoke-virtual {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->getWifiEdgeRoveIn()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiEdgeRoveIn:I

    .line 659
    invoke-virtual {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->getWifiEdgeRoveOut()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiEdgeRoveOut:I

    .line 661
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 662
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 664
    return-void
.end method

.method public startL2WHandoverProfiling(I)V
    .locals 3
    .param p1, "l2wHandoverRssi"    # I

    .line 306
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverProfilingStarted:Z

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L2W handover profiling started, l2wHandoverRssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverProfilingStarted:Z

    .line 309
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverRssi:I

    .line 311
    :cond_0
    return-void
.end method

.method public startWifiProfiling(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/epdg/DataType/EpdgWifiThreshold;)V
    .locals 5
    .param p1, "wifiOn"    # Ljava/lang/Runnable;
    .param p2, "wifiOff"    # Ljava/lang/Runnable;
    .param p3, "l2wHandoverOn"    # Ljava/lang/Runnable;
    .param p4, "lteMeasurement"    # Ljava/lang/Runnable;
    .param p5, "wifiThreshold"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold;

    .line 707
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    if-nez v0, :cond_1

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    .line 709
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOn:Ljava/lang/Runnable;

    .line 710
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOff:Ljava/lang/Runnable;

    .line 711
    iput-object p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableL2WHandoverOn:Ljava/lang/Runnable;

    .line 712
    iput-object p4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableLteMeasurement:Ljava/lang/Runnable;

    .line 715
    invoke-virtual {p0, p5}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(Lcom/sec/epdg/DataType/EpdgWifiThreshold;)V

    .line 717
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getWeakWifiRssiDb(II)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiDb:I

    .line 718
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCalculateSignalLevel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I

    .line 719
    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWeakWifiLevel(I)V

    .line 720
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I

    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setDefaultWeakWifiLevel(I)V

    .line 721
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveOut:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setDefaultWifiDbValue(II)V

    .line 724
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling started, Threshold is set at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiDb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Db and level is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWeakWifiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPollCaptive:Z

    .line 727
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isCaptivePortalAuthenticated(Z)Z

    .line 731
    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isNeededToSendDeregOnWifiOnly()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->calculateWeakWifiLevelAndRssiDb()V

    .line 735
    :cond_0
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    .line 736
    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V

    .line 737
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->addInitialReadingForWifi()V

    .line 739
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiTelListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;

    const/16 v3, 0x41

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 742
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setW2LHandoverForWeakWifiSignal(Z)V

    .line 747
    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setResultOfRunnableForCannotSwitchToWifi(Z)V

    .line 749
    :cond_1
    return-void
.end method

.method public stopL2WHandoverProfiling()V
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverProfilingStarted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v1, "L2W handover profiling stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverProfilingStarted:Z

    .line 317
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mL2WHandoverRssi:I

    .line 319
    :cond_0
    return-void
.end method

.method public stopProfiling()V
    .locals 4

    .line 755
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v1, "Profiling stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mProfilingStarted:Z

    .line 758
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOn:Ljava/lang/Runnable;

    .line 759
    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableWifiOff:Ljava/lang/Runnable;

    .line 760
    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mRunnableL2WHandoverOn:Ljava/lang/Runnable;

    .line 761
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mPollCaptive:Z

    .line 762
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mMetHoThreshold:Z

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiRSSIListener;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    goto :goto_0

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    const-string v3, "IllegalArgumentException"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->unregisterForCaptiveChange()V

    .line 771
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->stopRssiStrengthChecker()V

    .line 772
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I

    .line 773
    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V

    .line 774
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->stopL2WHandoverProfiling()V

    .line 776
    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setW2LHandoverForWeakWifiSignal(Z)V

    .line 777
    invoke-virtual {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setResultOfRunnableForCannotSwitchToWifi(Z)V

    .line 781
    :cond_0
    return-void
.end method

.method public declared-synchronized updateWifiRssiToMaintainIWlan()V
    .locals 4

    monitor-enter p0

    .line 554
    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isConnectedOnWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v0

    .line 556
    .local v0, "rssi":I
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addReadingMaintainIWlan current Wi-Fi RSSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    if-ge v0, v1, :cond_0

    .line 558
    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mWifiRoveIn:I

    move v0, v1

    .line 560
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :cond_0
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->mLastKnownWifiRSSI:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    .end local v0    # "rssi":I
    :cond_1
    monitor-exit p0

    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
