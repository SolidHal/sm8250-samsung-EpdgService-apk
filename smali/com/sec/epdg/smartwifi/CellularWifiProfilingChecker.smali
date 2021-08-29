.class public Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;
.super Ljava/lang/Object;
.source "CellularWifiProfilingChecker.java"


# static fields
.field private static final DEF_MAX_AVAILABLE_HANDOVER:I = 0x3

.field private static SUB_TAG:Ljava/lang/String;

.field private static mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

.field private static mCellularWifiProfilingChecker2:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "[CellularWifiProfilingChecker]"

    sput-object v0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/epdg/smartwifi/SmartCellularProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "cellularProfiler"    # Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
    .param p4, "wifiProfiler"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 15
    iput-object v0, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mPhoneId:I

    .line 27
    iput-object p3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 28
    iput-object p4, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;ILcom/sec/epdg/smartwifi/SmartCellularProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "cellularProfiler"    # Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
    .param p3, "wifiProfiler"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 33
    const-class v0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    if-nez p1, :cond_1

    .line 34
    sget-object v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    if-nez v1, :cond_0

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    new-instance v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;-><init>(Landroid/content/Context;ILcom/sec/epdg/smartwifi/SmartCellularProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V

    sput-object v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    .line 38
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    return-object v0

    .line 42
    :cond_1
    sget-object v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker2:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    if-nez v1, :cond_2

    .line 43
    monitor-enter v0

    .line 44
    :try_start_1
    new-instance v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;-><init>(Landroid/content/Context;ILcom/sec/epdg/smartwifi/SmartCellularProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V

    sput-object v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker2:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    .line 46
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 48
    :cond_2
    :goto_1
    sget-object v0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker2:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    return-object v0
.end method


# virtual methods
.method public CheckBearerStateBeforeHandover(Z)Z
    .locals 6
    .param p1, "isL2W"    # Z

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .line 95
    .local v1, "mCurrentWifiRssi":I
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrp()I

    move-result v2

    .line 96
    .local v2, "mCurrentLteRsrp":I
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckBearerStateBeforeHandover Wi-Fi RSSI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/  LTE RSRP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getRoveOutLteRsrp()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 101
    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getRoveOutWifiRssi()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-ge v1, v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckBearerStateBeforeHandover (L2W) : Wi-Fi RSSI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getRoveOutWifiRssi()I

    move-result v3

    if-lt v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 109
    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getRoveOutLteRsrp()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckBearerStateBeforeHandover (W2L) : LTE RSRP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    .line 115
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckBearerStateBeforeHandover ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v5, "L2W"

    goto :goto_1

    :cond_2
    const-string v5, "W2L"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return v0
.end method

.method public deinitialize()V
    .locals 2

    .line 120
    iget v0, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    if-eqz v0, :cond_0

    .line 121
    sput-object v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker2:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    if-eqz v0, :cond_1

    .line 123
    sput-object v1, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularWifiProfilingChecker2:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    .line 125
    :cond_1
    :goto_0
    return-void
.end method

.method public isLteMeasurementRequired()Z
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrp()I

    move-result v0

    .line 54
    .local v0, "mCurrentLteRsrp":I
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .line 56
    .local v1, "mCurrentWifiRssi":I
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteMeasurementRequired : (mCurrentLteRsrp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentWifiRssi :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v2, 0x0

    if-gez v0, :cond_2

    if-ltz v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getRoveInLteRsrp()I

    move-result v3

    if-lt v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 65
    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getRoveOutWifiRssi()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 66
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    const-string v3, "isLteMeasurementRequired : true"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x1

    return v2

    .line 69
    :cond_1
    return v2

    .line 60
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    const-string v4, "isLteMeasurementRequired : false (Wrong data)"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v2
.end method

.method public isWifiMeasurementRequired()Z
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrp()I

    move-result v0

    .line 74
    .local v0, "mCurrentLteRsrp":I
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .line 76
    .local v1, "mCurrentWifiRssi":I
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiMeasurementRequired : (mCurrentLteRsrp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentWifiRssi :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x0

    if-gez v0, :cond_2

    if-ltz v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getRoveOutLteRsrp()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 85
    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getRoveInWifiRssi()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 86
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    const-string v3, "isWifiMeasurementRequired : true"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x1

    return v2

    .line 89
    :cond_1
    return v2

    .line 80
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->TAG:Ljava/lang/String;

    const-string v4, "isWifiMeasurementRequired : false (Wrong data)"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v2
.end method
