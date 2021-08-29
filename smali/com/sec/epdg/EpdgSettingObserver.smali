.class public Lcom/sec/epdg/EpdgSettingObserver;
.super Landroid/database/ContentObserver;
.source "EpdgSettingObserver.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAirplaneModeOnUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private mPhoneId:I

.field private final mVideoCallOnUri:Landroid/net/Uri;

.field private mVolteOnUri:Landroid/net/Uri;

.field private final mWifiOnUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;Landroid/content/Context;I)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "phoneId"    # I

    .line 32
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 22
    const-string v0, "[EpdgSettingObserver]"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "wifi_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mWifiOnUri:Landroid/net/Uri;

    .line 28
    const-string v0, "videocall_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mVideoCallOnUri:Landroid/net/Uri;

    .line 29
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mAirplaneModeOnUri:Landroid/net/Uri;

    .line 33
    iput-object p2, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 34
    iput-object p3, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    .line 35
    iput p4, p0, Lcom/sec/epdg/EpdgSettingObserver;->mPhoneId:I

    .line 36
    iget-object v0, p2, Lcom/sec/epdg/EpdgSubScription;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mVolteOnUri:Landroid/net/Uri;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mWifiOnUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 38
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mVolteOnUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 39
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mVideoCallOnUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mAirplaneModeOnUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected handleAirplaneModeChanged(Z)V
    .locals 2
    .param p1, "isAirplaneModeEnabled"    # Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAirplaneModeEnabled is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgSettingObserver]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->setIsAirplaneMode(Z)V

    .line 96
    if-eqz p1, :cond_1

    .line 97
    iget v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "TMobile_DE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "apnType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->resetThrottleState(Ljava/lang/String;)V

    .line 101
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 103
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    .line 105
    :cond_1
    return-void
.end method

.method protected handleVoiceCallTypeKeyChanged(I)V
    .locals 3
    .param p1, "isVolte"    # I

    .line 79
    const-string v0, "[EpdgSettingObserver]"

    const-string v1, "EpdgSettingObserver - volte state changed."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    xor-int/lit8 v1, p1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 83
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Etisalat_AE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->updateMapconTableByNettype()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->updatePolicyTable()V

    .line 90
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->UpdateHandover()V

    .line 91
    return-void
.end method

.method protected handleWifiSettingChanged(I)V
    .locals 6
    .param p1, "wifion"    # I

    .line 50
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiSetting()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->setWifiSetting(I)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgSettingObserver - wifi on changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgSettingObserver]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/16 v0, 0x190

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/epdg/EpdgSettingObserver;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",wifi on changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_WIFI_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    .line 57
    if-nez p1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/EpdgSettingObserver;->mPhoneId:I

    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    invoke-virtual {v3}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->ordinal()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DISABLED:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v4}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v4

    const-string v5, "WIFI_STATE"

    invoke-static {v0, v2, v5, v3, v4}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEventAndDb(Landroid/content/Context;ILjava/lang/String;II)V

    .line 59
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 60
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    .line 61
    .local v0, "epdgHandler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    const-string v2, "EpdgSettingObserver - do not need de-register "

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 69
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-ne v2, v3, :cond_1

    .line 70
    const-string v2, "DE-registration is not required. start WIFI disconnection"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .end local v0    # "epdgHandler":Landroid/os/Handler;
    :cond_1
    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 109
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mWifiOnUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, "wifion":I
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSettingObserver;->handleWifiSettingChanged(I)V

    .line 115
    .end local v0    # "wifion":I
    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v2, v2, Lcom/sec/epdg/EpdgSubScription;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgSettingObserver;->mEpdgSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v2, v2, Lcom/sec/epdg/EpdgSubScription;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "isVolte":I
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSettingObserver;->handleVoiceCallTypeKeyChanged(I)V

    .end local v0    # "isVolte":I
    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mAirplaneModeOnUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v0, v1

    .line 125
    .local v0, "isAirplaneModeEnabled":Z
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSettingObserver;->handleAirplaneModeChanged(Z)V

    goto :goto_1

    .line 122
    .end local v0    # "isAirplaneModeEnabled":Z
    :cond_3
    :goto_0
    nop

    .line 127
    :goto_1
    return-void
.end method

.method public selfUpdate()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mAirplaneModeOnUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/epdg/EpdgSettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 46
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingObserver;->mVolteOnUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/sec/epdg/EpdgSettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 47
    return-void
.end method
