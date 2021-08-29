.class public Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
.super Ljava/lang/Object;
.source "SmartCellularProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;,
        Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelRunnable;,
        Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;,
        Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;
    }
.end annotation


# static fields
.field public static final INVALID_CDMA_ECIO:I = -0x10

.field public static final INVALID_GSM_RSSI:I = -0x71

.field public static final INVALID_LTE_RSRP:I = -0x8c

.field public static final INVALID_LTE_RSRQ:I = -0x14

.field public static final INVALID_TDSCDMA_RSSI:I = -0x71

.field public static final INVALID_WCDMA_RSSI:I = -0x71

.field private static SUB_TAG:Ljava/lang/String;

.field private static mSmartCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

.field private static mSmartCellularProfiler2:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private m2gThRoveIn:I

.field private m2gThRoveOut:I

.field private m3gThRoveIn:I

.field private m3gThRoveOut:I

.field private mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

.field private mCellularProfilingStarted:Z

.field private mContext:Landroid/content/Context;

.field private mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

.field private mHandler:Landroid/os/Handler;

.field private mIsLteAvailable:Z

.field private mIsLteInHysteresis:Z

.field private final mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

.field private mLogLteRsrp:I

.field private mLogLteRsrq:I

.field private mLteThRoveInRsrp:I

.field private mLteThRoveInRsrq:I

.field private mLteThRoveOutRsrp:I

.field private mLteThRoveOutRsrq:I

.field private mNeedControlWiFiThreshold:Z

.field private mPhoneId:I

.field private mRunnableLteOff:Ljava/lang/Runnable;

.field private mRunnableLteOn:Ljava/lang/Runnable;

.field private mRunnableWifiMeasurement:Ljava/lang/Runnable;

.field private mSmartCellularHandler:Landroid/os/Handler;

.field private mSmartCellularTelListener:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;

.field private mSmartCellularThread:Landroid/os/HandlerThread;

.field private mSubId:I

.field private mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "[SMARTCELLULAR]"

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularTelListener:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;

    .line 39
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-direct {v0, p0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;-><init>(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    .line 79
    const/16 v0, -0x8c

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrp:I

    .line 80
    const/16 v0, -0x14

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrq:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    .line 83
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteInHysteresis:Z

    .line 84
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    .line 87
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mNeedControlWiFiThreshold:Z

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I
    .param p4, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularTelListener:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;

    .line 39
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-direct {v0, p0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;-><init>(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    .line 79
    const/16 v0, -0x8c

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrp:I

    .line 80
    const/16 v0, -0x14

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrq:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    .line 83
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteInHysteresis:Z

    .line 84
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    .line 87
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mNeedControlWiFiThreshold:Z

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mContext:Landroid/content/Context;

    .line 104
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SmartCellularThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularThread:Landroid/os/HandlerThread;

    .line 105
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 106
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 107
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularHandler:Landroid/os/Handler;

    .line 108
    iput p3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    .line 109
    iput-object p4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 110
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mHandler:Landroid/os/Handler;

    .line 111
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    .line 113
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 114
    .local v2, "subIdList":[I
    if-eqz v2, :cond_0

    .line 115
    aget v0, v2, v0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    .line 117
    :cond_0
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;

    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    invoke-direct {v0, p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;-><init>(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;I)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularTelListener:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;

    .line 118
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 32
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 32
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 32
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->processCellularSignalStrengths(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private deInit()V
    .locals 0

    .line 926
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->stopProfiling()V

    .line 927
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I
    .param p3, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 124
    const-class v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    if-nez p2, :cond_2

    .line 125
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    if-nez v1, :cond_1

    .line 126
    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 131
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 133
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    return-object v0

    .line 135
    :cond_2
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler2:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    if-nez v1, :cond_4

    .line 136
    monitor-enter v0

    .line 137
    :try_start_1
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler2:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    if-nez v1, :cond_3

    .line 138
    new-instance v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler2:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 141
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 143
    :cond_4
    :goto_1
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler2:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    return-object v0
.end method

.method private isLteProfilingRequired(Z)Z
    .locals 4
    .param p1, "isCsPrefMode"    # Z

    .line 661
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-eqz v0, :cond_1

    .line 662
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v2, "LTE_IDLE_PROFILING is true"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return v1

    .line 666
    :cond_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 667
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLteProfilingRequired : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return v1

    .line 671
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private post3gOr2gRunnable(ILcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;)V
    .locals 3
    .param p1, "sigStr"    # I
    .param p2, "ratType"    # Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    .line 830
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post3gOr2gRunnable, sigStr is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ratType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    if-eqz p1, :cond_4

    .line 832
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$1;->$SwitchMap$com$sec$epdg$smartwifi$SmartCellularProfiler$RatType:[I

    invoke-virtual {p2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveOut:I

    if-lt p1, v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 847
    goto :goto_0

    .line 834
    :cond_2
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveOut:I

    if-lt p1, v0, :cond_3

    .line 835
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 853
    :cond_4
    :goto_0
    return-void
.end method

.method private post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 856
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 857
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 860
    return-void
.end method

.method private postLteRunnable(II)V
    .locals 4
    .param p1, "lteRsrp"    # I
    .param p2, "lteRsrq"    # I

    .line 729
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSRP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RSRQ is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    if-eqz p1, :cond_4

    .line 732
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    const-string v1, "EPDI (WEAK_LTE_SIGNAL)"

    const-string v2, "EPDI (STRONG_LTE_SIGNAL)"

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    if-eqz v3, :cond_2

    .line 733
    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-lt p1, v3, :cond_0

    if-lt p2, v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 737
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 739
    :cond_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    if-ge p2, v0, :cond_4

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 743
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 748
    :cond_2
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-lt p1, v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 752
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 754
    :cond_3
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-ge p1, v0, :cond_4

    .line 755
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 758
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    .line 763
    :cond_4
    :goto_0
    return-void
.end method

.method private postLteRunnableFinal(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 804
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 805
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 808
    iput-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    .line 809
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v1, "postLteRunnableFinal: runnable lte on is null mIsLteAvailable is false"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void

    .line 813
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, " "

    const/16 v3, 0x1f4

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 814
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    if-nez v0, :cond_2

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRunnableLteOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v1, "postLteRunnableFinal: mIsLteAvailable is true"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iput-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    goto :goto_0

    .line 820
    :cond_3
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    if-ne v0, v4, :cond_4

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mRunnableLteOff "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrp:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 823
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v2, "postLteRunnableFinal: mIsLteAvailable is false"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iput-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    .line 826
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 827
    return-void
.end method

.method private postRunnableToEpdg(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 863
    if-nez p1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v1, "postRunnableToEpdg: Runnable is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 868
    return-void
.end method

.method private postStartLteRunnable(II)V
    .locals 4
    .param p1, "lteRsrp"    # I
    .param p2, "lteRsrq"    # I

    .line 766
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSRP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RSRQ is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    if-eqz p1, :cond_3

    .line 768
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->FIRST_LTE_CHECK:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 770
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    const-string v1, "EPDI (STRONG_LTE_SIGNAL)"

    const-string v2, "EPDI (WEAK_LTE_SIGNAL)"

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    if-eqz v0, :cond_1

    .line 771
    iget v3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-lt p1, v3, :cond_0

    if-lt p2, v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 775
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 781
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 786
    :cond_1
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-lt p1, v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 790
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 796
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    .line 801
    :cond_3
    :goto_0
    return-void
.end method

.method private processCdmaSignalStrength(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 5
    .param p1, "cssCdma"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 466
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveIn:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveOut:I

    if-eqz v0, :cond_4

    .line 468
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastCdmaEcio()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    .line 469
    .local v0, "lastCdmaDb":I
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    .line 471
    .local v1, "currentCdmaDb":I
    if-lez v1, :cond_0

    .line 472
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v3, "Wrong ECIO is reported for Cdma"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/16 v1, -0x10

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastCdmaDb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentCdmaDb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    if-nez v0, :cond_1

    .line 478
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_2G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    invoke-direct {p0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnable(ILcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;)V

    .line 480
    :cond_1
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveIn:I

    if-lt v1, v2, :cond_2

    if-ge v0, v2, :cond_2

    .line 481
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 483
    :cond_2
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveOut:I

    if-ge v1, v2, :cond_3

    if-lt v0, v2, :cond_3

    .line 484
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 486
    .end local v0    # "lastCdmaDb":I
    .end local v1    # "currentCdmaDb":I
    :cond_3
    goto :goto_0

    .line 487
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v1, "processCdmaSignalStrength: Cellular profiling is not started or profiling is disabled considering thresholds are 0"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void
.end method

.method private processCellularSignalStrengths(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "mSignalStrength"    # Landroid/telephony/SignalStrength;

    .line 294
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "signalStrengthList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v0, :cond_5

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellSignalStrength;

    .line 298
    .local v2, "css":Landroid/telephony/CellSignalStrength;
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v3, :cond_0

    .line 299
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->processLteSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    .line 300
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->saveLteSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    goto :goto_1

    .line 301
    :cond_0
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v3, :cond_1

    .line 302
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->processWcdmaSignalStrength(Landroid/telephony/CellSignalStrengthWcdma;)V

    .line 303
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->saveWcdmaSignalStrength(Landroid/telephony/CellSignalStrengthWcdma;)V

    goto :goto_1

    .line 304
    :cond_1
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v3, :cond_2

    .line 305
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->processTdscdmaSignalStrength(Landroid/telephony/CellSignalStrengthTdscdma;)V

    .line 306
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->saveTdscdmaSignalStrength(Landroid/telephony/CellSignalStrengthTdscdma;)V

    goto :goto_1

    .line 307
    :cond_2
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v3, :cond_3

    .line 308
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->processCdmaSignalStrength(Landroid/telephony/CellSignalStrengthCdma;)V

    .line 309
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->saveCdmaSignalStrength(Landroid/telephony/CellSignalStrengthCdma;)V

    goto :goto_1

    .line 310
    :cond_3
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v3, :cond_4

    .line 311
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->processGsmSignalStrength(Landroid/telephony/CellSignalStrengthGsm;)V

    .line 312
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->saveGsmSignalStrength(Landroid/telephony/CellSignalStrengthGsm;)V

    goto :goto_1

    .line 314
    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v4, "Not valid cellular signal strength"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v2    # "css":Landroid/telephony/CellSignalStrength;
    :goto_1
    goto :goto_0

    .line 318
    :cond_5
    return-void
.end method

.method private processGsmSignalStrength(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 5
    .param p1, "cssGsm"    # Landroid/telephony/CellSignalStrengthGsm;

    .line 493
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveIn:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveOut:I

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastGsmRssi()I

    move-result v0

    .line 495
    .local v0, "lastGsmRssi":I
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result v1

    .line 497
    .local v1, "currentGsmRssi":I
    if-lez v1, :cond_0

    .line 498
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v3, "Wrong RSSI is reported for Gsm"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/16 v1, -0x71

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastGsmRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentGsmRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-nez v0, :cond_1

    .line 504
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_2G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    invoke-direct {p0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnable(ILcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;)V

    .line 506
    :cond_1
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveIn:I

    if-lt v1, v2, :cond_2

    if-ge v1, v2, :cond_2

    .line 507
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 509
    :cond_2
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveOut:I

    if-ge v1, v2, :cond_3

    if-lt v0, v2, :cond_3

    .line 510
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 512
    .end local v0    # "lastGsmRssi":I
    .end local v1    # "currentGsmRssi":I
    :cond_3
    goto :goto_0

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v1, "processGsmSignalStrength: Cellular profiling is not started or profiling is disabled considering thresholds are 0"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return-void
.end method

.method private processLteSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 9
    .param p1, "cssLte"    # Landroid/telephony/CellSignalStrengthLte;

    .line 321
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastLteRsrp()I

    move-result v0

    .line 322
    .local v0, "lastLteRSRP":I
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastLteRsrq()I

    move-result v1

    .line 323
    .local v1, "lastLteRSRQ":I
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v2

    .line 324
    .local v2, "currentLteRSRP":I
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v3

    .line 326
    .local v3, "currentLteRSRQ":I
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastLteRSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentLteRSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " lastLteRSRQ is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentLteRSRQ is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v4, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v4, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 329
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    if-eqz v4, :cond_0

    .line 330
    sget-object v4, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v4, v3}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 332
    :cond_0
    const v4, 0x7fffffff

    if-ne v2, v4, :cond_1

    const/16 v5, -0x8c

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    iput v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrp:I

    .line 333
    if-ne v3, v4, :cond_2

    const/16 v5, -0x14

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    iput v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrq:I

    .line 336
    iget-boolean v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    if-eqz v5, :cond_19

    .line 337
    if-ne v0, v4, :cond_3

    .line 338
    const/16 v0, -0x8c

    .line 340
    :cond_3
    if-ne v2, v4, :cond_4

    .line 341
    const/16 v2, -0x8c

    .line 343
    :cond_4
    if-ne v3, v4, :cond_5

    .line 344
    const/16 v3, -0x14

    .line 346
    :cond_5
    if-ne v1, v4, :cond_6

    .line 347
    const/16 v1, -0x14

    .line 349
    :cond_6
    if-nez v0, :cond_b

    .line 350
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 351
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    const-string v5, "ims"

    invoke-interface {v4, v5}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 352
    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnable(II)V

    goto :goto_2

    .line 354
    :cond_7
    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postStartLteRunnable(II)V

    goto :goto_2

    .line 356
    :cond_8
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v4}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get4gRsrpRoveIn()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_a

    .line 357
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_9

    .line 358
    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnable(II)V

    goto :goto_2

    .line 360
    :cond_9
    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postStartLteRunnable(II)V

    goto :goto_2

    .line 362
    :cond_a
    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postStartLteRunnable(II)V

    .line 366
    :cond_b
    :goto_2
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    if-eqz v4, :cond_12

    iget v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    if-eqz v5, :cond_12

    .line 367
    iget v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-lt v2, v5, :cond_c

    if-ge v0, v5, :cond_c

    if-ge v3, v4, :cond_d

    :cond_c
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    if-lt v3, v4, :cond_e

    if-ge v1, v4, :cond_e

    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-lt v2, v4, :cond_e

    .line 369
    :cond_d
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 371
    :cond_e
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-ge v2, v4, :cond_f

    if-ge v0, v4, :cond_10

    :cond_f
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    if-ge v3, v4, :cond_11

    if-lt v1, v4, :cond_11

    .line 373
    :cond_10
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 375
    :cond_11
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-ge v2, v4, :cond_19

    .line 376
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v4, :cond_19

    .line 377
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableWifiMeasurement:Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 382
    :cond_12
    iget-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mNeedControlWiFiThreshold:Z

    if-eqz v4, :cond_14

    .line 384
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    iget v7, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    iget-object v8, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getInstance(Landroid/content/Context;Landroid/os/Handler;IILcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v4

    .line 385
    .local v4, "wifiProfiler":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    iget v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-le v2, v5, :cond_13

    .line 386
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v5}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/interfaces/IEpdgSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/epdg/interfaces/IEpdgSettings;->getWifiRssiB()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiRoveOutDuringCall(I)V

    .line 387
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v6, "lte not bad. set wifi bad threshold as default."

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 389
    :cond_13
    const/16 v5, -0x64

    invoke-virtual {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiRoveOutDuringCall(I)V

    .line 390
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v6, "lte bad. keep the call on wifi. set wifi bad threshold as min."

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .end local v4    # "wifiProfiler":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :cond_14
    :goto_3
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-lt v2, v4, :cond_15

    if-ge v0, v4, :cond_15

    .line 394
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 396
    :cond_15
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-ge v2, v4, :cond_17

    .line 397
    if-lt v0, v4, :cond_16

    .line 398
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 400
    :cond_16
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v4, :cond_17

    .line 401
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableWifiMeasurement:Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    .line 404
    :cond_17
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-ge v2, v4, :cond_18

    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-le v2, v4, :cond_18

    .line 405
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteInHysteresis:Z

    goto :goto_4

    .line 407
    :cond_18
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteInHysteresis:Z

    .line 411
    :cond_19
    :goto_4
    return-void
.end method

.method private processTdscdmaSignalStrength(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .locals 5
    .param p1, "cssTdscdma"    # Landroid/telephony/CellSignalStrengthTdscdma;

    .line 440
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveIn:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveOut:I

    if-eqz v0, :cond_4

    .line 441
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastTdscdmaRssi()I

    move-result v0

    .line 442
    .local v0, "lastTdscdmaRssi":I
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result v1

    .line 444
    .local v1, "currentTdscdmaRssi":I
    if-ltz v1, :cond_0

    .line 445
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v3, "Wrong RSSI is reported for Tdscdma"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/16 v1, -0x71

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastTdscdmaRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentTdscdmaRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    if-nez v0, :cond_1

    .line 451
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_3G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    invoke-direct {p0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnable(ILcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;)V

    .line 453
    :cond_1
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveIn:I

    if-lt v1, v2, :cond_2

    if-ge v0, v2, :cond_2

    .line 454
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 456
    :cond_2
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveOut:I

    if-ge v1, v2, :cond_3

    if-lt v0, v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 459
    .end local v0    # "lastTdscdmaRssi":I
    .end local v1    # "currentTdscdmaRssi":I
    :cond_3
    goto :goto_0

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v1, "processTdscdmaSignalStrength: Cellular profiling is not started or 3g profiling is disabled considering thresholds are 0"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void
.end method

.method private processWcdmaSignalStrength(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 5
    .param p1, "cssWcdma"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 414
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveIn:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveOut:I

    if-eqz v0, :cond_4

    .line 415
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastWcdmaRssi()I

    move-result v0

    .line 416
    .local v0, "lastWcdmaRssi":I
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result v1

    .line 418
    .local v1, "currentWcdmaRssi":I
    if-ltz v1, :cond_0

    .line 419
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v3, "Wrong RSSI is reported for Wcdma"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/16 v1, -0x71

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastWcdmaRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentWcdmaRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-nez v0, :cond_1

    .line 425
    sget-object v2, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_3G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    invoke-direct {p0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnable(ILcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;)V

    .line 427
    :cond_1
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveIn:I

    if-lt v1, v2, :cond_2

    if-ge v0, v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 430
    :cond_2
    iget v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveOut:I

    if-ge v1, v2, :cond_3

    if-lt v0, v2, :cond_3

    .line 431
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->post3gOr2gRunnableFinal(Ljava/lang/Runnable;)V

    .line 433
    .end local v0    # "lastWcdmaRssi":I
    .end local v1    # "currentWcdmaRssi":I
    :cond_3
    goto :goto_0

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v1, "processWcdmaSignalStrength: Cellular profiling is not started or 3g profiling is disabled considering thresholds are 0"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void
.end method

.method private saveCdmaSignalStrength(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 2
    .param p1, "cssCdma"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 542
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveIn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveOut:I

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastCdmaEcio(I)V

    .line 544
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastEvdoEcio(I)V

    .line 546
    :cond_0
    return-void
.end method

.method private saveGsmSignalStrength(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 2
    .param p1, "cssGsm"    # Landroid/telephony/CellSignalStrengthGsm;

    .line 549
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveIn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveOut:I

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastGsmRssi(I)V

    .line 552
    :cond_0
    return-void
.end method

.method private saveLteSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 2
    .param p1, "cssLte"    # Landroid/telephony/CellSignalStrengthLte;

    .line 519
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastLteRsrp(I)V

    .line 521
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastLteRsrq(I)V

    .line 522
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastLteRssnr(I)V

    .line 524
    :cond_0
    return-void
.end method

.method private saveTdscdmaSignalStrength(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .locals 2
    .param p1, "cssTdscdma"    # Landroid/telephony/CellSignalStrengthTdscdma;

    .line 535
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveIn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveOut:I

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastTdscdmaRssi(I)V

    .line 537
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastTdscdmaRscp(I)V

    .line 539
    :cond_0
    return-void
.end method

.method private saveWcdmaSignalStrength(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 2
    .param p1, "cssWcdma"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 527
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveIn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveOut:I

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastWcdmaRssi(I)V

    .line 529
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastWcdmaRscp(I)V

    .line 530
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getEcNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->setLastWcdmaEcNo(I)V

    .line 532
    :cond_0
    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 930
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    if-eqz v0, :cond_0

    .line 931
    invoke-direct {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->deInit()V

    .line 932
    sput-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    goto :goto_0

    .line 933
    :cond_0
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler2:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    if-eqz v0, :cond_1

    .line 934
    invoke-direct {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->deInit()V

    .line 935
    sput-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularProfiler2:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 937
    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentLteRsrp()I
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastLteRsrp()I

    move-result v0

    .line 901
    .local v0, "mCurrentLteRsrp":I
    return v0
.end method

.method public getCurrentLteRsrq()I
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastLteRsrq()I

    move-result v0

    .line 906
    .local v0, "mCurrentLteRsrq":I
    return v0
.end method

.method public declared-synchronized getIsLteAvailable()Z
    .locals 3

    monitor-enter p0

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 681
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsLteInHysteresis()Z
    .locals 3

    monitor-enter p0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE in Hysteresis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteInHysteresis:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteInHysteresis:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 686
    .end local p0    # "this":Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLteRsrpForLogging()I
    .locals 3

    .line 871
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrp:I

    const/16 v1, -0x8c

    if-ne v0, v1, :cond_1

    .line 872
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 873
    .local v0, "sigstr":Landroid/telephony/SignalStrength;
    if-eqz v0, :cond_1

    .line 874
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    .line 875
    .local v1, "rsrp":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 876
    const/16 v1, -0x8c

    .line 878
    :cond_0
    return v1

    .line 881
    .end local v0    # "sigstr":Landroid/telephony/SignalStrength;
    .end local v1    # "rsrp":I
    :cond_1
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrp:I

    return v0
.end method

.method public getLteRsrqForLogging()I
    .locals 3

    .line 885
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrq:I

    const/16 v1, -0x14

    if-ne v0, v1, :cond_1

    .line 886
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 887
    .local v0, "sigstr":Landroid/telephony/SignalStrength;
    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v1

    .line 889
    .local v1, "rsrq":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 890
    const/16 v1, -0x14

    .line 892
    :cond_0
    return v1

    .line 895
    .end local v0    # "sigstr":Landroid/telephony/SignalStrength;
    .end local v1    # "rsrq":I
    :cond_1
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLogLteRsrq:I

    return v0
.end method

.method public getRoveInLteRsrp()I
    .locals 1

    .line 910
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    return v0
.end method

.method public getRoveOutLteRsrp()I
    .locals 1

    .line 914
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    return v0
.end method

.method public isNeedControlWiFiThreshold()Z
    .locals 1

    .line 918
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mNeedControlWiFiThreshold:Z

    return v0
.end method

.method public isSmartLteRunning()Z
    .locals 1

    .line 675
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 676
    const/4 v0, 0x0

    return v0

    .line 678
    :cond_0
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    return v0
.end method

.method public setLteThreshold(IIII)V
    .locals 5
    .param p1, "lteThGoodRsrp"    # I
    .param p2, "lteThLowRsrp"    # I
    .param p3, "lteThGoodRsrq"    # I
    .param p4, "lteThLowRsrq"    # I

    .line 693
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 694
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLteThreshold: Good Rsrp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Low Rsrp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Good Rsrq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Low Rsrq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    if-eq v0, p4, :cond_5

    .line 700
    :cond_1
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    .line 701
    iput p2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    .line 702
    iput p3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    .line 703
    iput p4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    .line 705
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, p1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 706
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, p2}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 707
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    if-eqz v0, :cond_2

    .line 708
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, p3}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 709
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, p4}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 712
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 713
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastLteRsrp()I

    move-result v0

    .line 714
    .local v0, "lastKnownRSRP":I
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastLteRsrq()I

    move-result v1

    .line 715
    .local v1, "lastKnownRSRQ":I
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastKnownRSRP is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "lastKnownRSRQ is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_3

    .line 718
    const/16 v0, -0x8c

    .line 720
    :cond_3
    if-ne v1, v2, :cond_4

    .line 721
    const/16 v1, -0x14

    .line 723
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnable(II)V

    .line 726
    .end local v0    # "lastKnownRSRP":I
    .end local v1    # "lastKnownRSRQ":I
    :cond_5
    return-void
.end method

.method public setNeedControlWiFiThreshold(Z)V
    .locals 0
    .param p1, "needControlWiFiThreshold"    # Z

    .line 922
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mNeedControlWiFiThreshold:Z

    .line 923
    return-void
.end method

.method public startLteProfiling()V
    .locals 6

    .line 600
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 601
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLteProfiling called, is profiling running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    if-eqz v0, :cond_8

    .line 606
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastLteRsrp()I

    move-result v0

    .line 607
    .local v0, "lastKnownRSRP":I
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->getLastLteRsrq()I

    move-result v1

    .line 608
    .local v1, "lastKnownRSRQ":I
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lte profiling started and lastKnownRSRP is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lastKnownRSRQ is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 611
    const/16 v0, -0x8c

    .line 613
    :cond_1
    if-ne v1, v2, :cond_2

    .line 614
    const/16 v1, -0x14

    .line 625
    :cond_2
    const-string v2, "ims"

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 626
    invoke-interface {v4}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/interfaces/INetworkChangeController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/epdg/interfaces/INetworkChangeController;->getMobileDataRat()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 627
    invoke-interface {v4, v2, v3}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 628
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v5, "Data rat is LTE, IMS is not on wifi and last RSRP is 0, setting LTE availability"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iput-boolean v3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    .line 631
    :cond_3
    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 632
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v4, v2}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 633
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnable(II)V

    goto :goto_0

    .line 635
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postStartLteRunnable(II)V

    goto :goto_0

    .line 637
    :cond_5
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get4gRsrpRoveIn()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    if-eqz v2, :cond_7

    .line 638
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget v4, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    const/16 v4, 0x12

    if-ne v2, v4, :cond_6

    .line 639
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postLteRunnable(II)V

    goto :goto_0

    .line 641
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postStartLteRunnable(II)V

    goto :goto_0

    .line 643
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->postStartLteRunnable(II)V

    .line 645
    :goto_0
    iput-boolean v3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    .line 647
    .end local v0    # "lastKnownRSRP":I
    .end local v1    # "lastKnownRSRQ":I
    :cond_8
    return-void
.end method

.method public startProfiling(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZLcom/sec/epdg/DataType/EpdgCsThreshold;)V
    .locals 3
    .param p1, "lteOn"    # Ljava/lang/Runnable;
    .param p2, "lteOff"    # Ljava/lang/Runnable;
    .param p3, "wifiMeasurement"    # Ljava/lang/Runnable;
    .param p4, "isCsPrefMode"    # Z
    .param p5, "epdgCsThreshold"    # Lcom/sec/epdg/DataType/EpdgCsThreshold;

    .line 556
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 557
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start cellular profiling called: Is profiling running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOn:Ljava/lang/Runnable;

    .line 562
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableLteOff:Ljava/lang/Runnable;

    .line 563
    iput-object p3, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mRunnableWifiMeasurement:Ljava/lang/Runnable;

    .line 565
    iput-object p5, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    .line 566
    invoke-virtual {p5}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp3()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrp:I

    .line 567
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp1()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrp:I

    .line 569
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveIn()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    .line 570
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveIn()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveInRsrq:I

    .line 571
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveOut()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 572
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveOut()I

    move-result v0

    mul-int/lit8 v1, v0, -0x1

    :goto_1
    iput v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLteThRoveOutRsrq:I

    .line 573
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get3gRoveIn()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveIn:I

    .line 574
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get3gRoveOut()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m3gThRoveOut:I

    .line 575
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get2gRoveIn()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveIn:I

    .line 576
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get2gRoveOut()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->m2gThRoveOut:I

    .line 578
    invoke-direct {p0, p4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isLteProfilingRequired(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->startLteProfiling()V

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularTelListener:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;

    const/16 v2, 0x161

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 586
    return-void
.end method

.method public stopLteProfiling()V
    .locals 3

    .line 650
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 651
    return-void

    .line 653
    :cond_0
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    const-string v2, "Lte Profiling stopped"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iput-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    .line 657
    :cond_1
    iput-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mIsLteAvailable:Z

    .line 658
    return-void
.end method

.method public stopProfiling()V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop cellular profiling called, is profiling running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mCellularProfilingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularTelListener:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 592
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mSmartCellularHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mLastCellularSignalStrengths:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$CellularSignalStrengths;->clearSignalStrengths()V

    .line 594
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->stopLteProfiling()V

    .line 597
    :cond_0
    return-void
.end method
