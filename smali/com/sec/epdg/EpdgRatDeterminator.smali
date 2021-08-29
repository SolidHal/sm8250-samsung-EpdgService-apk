.class public Lcom/sec/epdg/EpdgRatDeterminator;
.super Ljava/lang/Object;
.source "EpdgRatDeterminator.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/EpdgRatDeterminator;

.field private static mInstance2:Lcom/sec/epdg/EpdgRatDeterminator;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

.field private mPhoneId:I

.field private mSubId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "[EpdgRatDeterminator]"

    sput-object v0, Lcom/sec/epdg/EpdgRatDeterminator;->SUB_TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgRatDeterminator;->mInstance:Lcom/sec/epdg/EpdgRatDeterminator;

    .line 21
    sput-object v0, Lcom/sec/epdg/EpdgRatDeterminator;->mInstance2:Lcom/sec/epdg/EpdgRatDeterminator;

    return-void
.end method

.method private constructor <init>(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/EpdgRatDeterminator;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    .line 48
    iput p1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    .line 49
    iput p2, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubId:I

    .line 50
    iput-object p3, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mContext:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 52
    invoke-virtual {p4}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 53
    return-void
.end method

.method public static declared-synchronized createInstance(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgRatDeterminator;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "subId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    const-class v0, Lcom/sec/epdg/EpdgRatDeterminator;

    monitor-enter v0

    .line 29
    if-nez p0, :cond_0

    .line 30
    :try_start_0
    new-instance v1, Lcom/sec/epdg/EpdgRatDeterminator;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/EpdgRatDeterminator;-><init>(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/EpdgRatDeterminator;->mInstance:Lcom/sec/epdg/EpdgRatDeterminator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-object v1

    .line 33
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/EpdgRatDeterminator;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/EpdgRatDeterminator;-><init>(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/EpdgRatDeterminator;->mInstance2:Lcom/sec/epdg/EpdgRatDeterminator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    monitor-exit v0

    return-object v1

    .line 28
    .end local p0    # "phoneId":I
    .end local p1    # "subId":I
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "subscription":Lcom/sec/epdg/EpdgSubScription;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/EpdgRatDeterminator;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/EpdgRatDeterminator;

    monitor-enter v0

    .line 39
    if-nez p0, :cond_0

    .line 40
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgRatDeterminator;->mInstance:Lcom/sec/epdg/EpdgRatDeterminator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgRatDeterminator;->mInstance2:Lcom/sec/epdg/EpdgRatDeterminator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 38
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private is3gNotAvailable()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    .line 187
    .local v0, "rat":I
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->is3gNetwork(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->is2gNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 189
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private isLteNotAvailable()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 179
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMobileNoSvc()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataReg()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public isL2WRecommended(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)Z
    .locals 9
    .param p1, "ApnType"    # Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 57
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "Wifi weak, LTE good"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v1

    .line 62
    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_a

    .line 63
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    return v1

    .line 67
    :cond_1
    iget v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getE911CallCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isEpdnConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "active e911 call or dialing e911 call"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return v1

    .line 74
    :cond_2
    iget v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getRtpHandoverCnt()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 76
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "RTP Handover occured over 3 times in same call. block L2W handover and keep LTE"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v1

    .line 81
    :cond_3
    iget v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->IsVoLteAvailableNetwork()Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "Block handover from not LTE to Wifi"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v1

    .line 105
    :cond_4
    iget v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_c

    .line 106
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    .line 107
    .local v0, "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    iget-object v4, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call status is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " check for LTE availability"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->checkLteBasedOnNetworkSettings()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 109
    iget-object v4, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v5, "LTE is available, now check for wifi strength"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v4

    .line 111
    .local v4, "rssi":I
    iget-object v5, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    .line 112
    .local v5, "mWiFiRoveInValue":I
    new-array v6, v3, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v7, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v7, v6, v1

    sget-object v7, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v7, v6, v2

    sget-object v7, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v0, v6}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v6

    const-string v7, " handover rssi: "

    if-eqz v6, :cond_5

    .line 113
    iget v3, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 114
    if-ge v4, v5, :cond_8

    .line 115
    iget-object v2, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice call/Idle and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->startL2WHandoverProfiling(I)V

    .line 118
    return v1

    .line 121
    :cond_5
    new-array v6, v8, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v8, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v8, v6, v1

    sget-object v8, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v8, v6, v2

    invoke-virtual {v0, v6}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 122
    if-ge v4, v5, :cond_6

    .line 123
    iget-object v2, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video call and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->startL2WHandoverProfiling(I)V

    .line 127
    iget-object v2, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    .line 128
    return v1

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/epdg/EpdgSubScription;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 131
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/epdg/EpdgSubScription;->getThrottleCount(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v3, :cond_8

    .line 132
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL_STAUTS is VIDEO or VIDEO_VOICE, but it is rurring ThrottleTimer("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 133
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") now. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    goto :goto_0

    .line 137
    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifi rssi is good for handover. rssi: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " wifi rssi A: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 138
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v4    # "rssi":I
    .end local v5    # "mWiFiRoveInValue":I
    :cond_8
    :goto_0
    goto :goto_1

    .line 141
    :cond_9
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v3, "LTE is unavailable based upon settings, perform L2W handover"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v0    # "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    :goto_1
    goto :goto_2

    .line 144
    :cond_a
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_EMERGENCY:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    if-ne p1, v0, :cond_b

    .line 145
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v1, "APN_TYPE_EMERGENCY"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 148
    :cond_b
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APN_TYPE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_c
    :goto_2
    return v2
.end method

.method public isW2LRecommended(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)Z
    .locals 9
    .param p1, "ApnType"    # Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 197
    iget-object v0, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 198
    .local v0, "mTelManager":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/sec/epdg/EpdgRatDeterminator;->isMobileNoSvc()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 199
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    return v2

    .line 204
    :cond_0
    return v3

    .line 207
    :cond_1
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    if-ne p1, v1, :cond_d

    .line 208
    invoke-direct {p0}, Lcom/sec/epdg/EpdgRatDeterminator;->isLteNotAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    return v3

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    return v3

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getVoWifiSessionConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "VoWIFI session is connected. So skip W2L Handover."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v3

    .line 223
    :cond_4
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getE911CallCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isEpdnConnected()Z

    move-result v1

    if-nez v1, :cond_5

    .line 225
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "active e911 call or dialing e911 call."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return v3

    .line 230
    :cond_5
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 231
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 232
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "Roaming network and VoWifi on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return v3

    .line 236
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v3, "Roaming network and VoWifi off"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return v2

    .line 242
    :cond_7
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 243
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 244
    :cond_8
    return v3

    .line 248
    :cond_9
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v4, "Hutchison_GB"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v4, "VoPS not supported. Skip W2L Handover"

    const/4 v5, 0x2

    const/16 v6, 0xd

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 249
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v1

    if-ne v1, v6, :cond_b

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 250
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getCheckForRoamingVops()I

    move-result v1

    if-eq v1, v5, :cond_b

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 251
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v7, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v7, :cond_b

    .line 252
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 253
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "VoPS not supported. Send De-register"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_a
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return v3

    .line 261
    :cond_b
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v7, "Vodafone_GB"

    const-string v8, "Claro_BR"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 262
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v1

    if-ne v1, v6, :cond_10

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 263
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getCheckForRoamingVops()I

    move-result v1

    if-eq v1, v5, :cond_10

    .line 264
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_c

    .line 265
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "VoPS not supported. Send De-register in call idle status"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_c
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return v3

    .line 273
    :cond_d
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_EMERGENCY:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    if-ne p1, v1, :cond_f

    .line 274
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getCallStateFromPsl()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->isImsEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 275
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "skip W2L for EMERGENCY PDN during call"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v3

    .line 278
    :cond_e
    iget v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 279
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    const-string v2, "skip W2L for EMERGENCY PDN once Wi-Fi is connected "

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return v3

    .line 284
    :cond_f
    iget-object v1, p0, Lcom/sec/epdg/EpdgRatDeterminator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APN_TYPE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_10
    return v2
.end method
