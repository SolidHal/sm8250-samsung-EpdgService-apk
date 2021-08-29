.class Lcom/sec/epdg/WifiCallEnabler;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "WifiCallEnabler.java"


# instance fields
.field TAG:Ljava/lang/String;

.field forced:Z

.field mEpdgHandler:Landroid/os/Handler;

.field mPhoneId:I

.field mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field wificallenable:I

.field wificallpreferred:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;IIIZ)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p3, "phoneId"    # I
    .param p4, "enable"    # I
    .param p5, "preferred"    # I
    .param p6, "isForced"    # Z

    .line 22
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallenable:I

    .line 19
    iput v0, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallpreferred:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/WifiCallEnabler;->forced:Z

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [WifiCallEnabler]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->TAG:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/sec/epdg/WifiCallEnabler;->mEpdgHandler:Landroid/os/Handler;

    .line 25
    iput-object p2, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 26
    iput p3, p0, Lcom/sec/epdg/WifiCallEnabler;->mPhoneId:I

    .line 27
    iput p4, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallenable:I

    .line 28
    iput p5, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallpreferred:I

    .line 29
    iput-boolean p6, p0, Lcom/sec/epdg/WifiCallEnabler;->forced:Z

    .line 30
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 10

    .line 34
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiCallEnable value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallenable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    iget-object v4, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallenable:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/sec/epdg/EpdgSubScription;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 41
    :cond_1
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallenable:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallpreferred:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    goto/16 :goto_3

    .line 86
    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 87
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 89
    :cond_3
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallpreferred:I

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 92
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    goto :goto_2

    .line 88
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 95
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setVoWifiStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;)V

    .line 96
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 98
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Wifi calling gets enabled, start idle mode LTE profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isLteIdleModeProfilingSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->toggleLteIdleModeProfiling(Z)V

    .line 101
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_10

    .line 102
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_WIFICALLING_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto/16 :goto_5

    .line 105
    :cond_8
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->wificallpreferred:I

    if-lez v0, :cond_10

    .line 106
    iget-object v1, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->setWifiCallingPrefState(I)V

    goto/16 :goto_5

    .line 42
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgSubScription;->setVoWifiStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;)V

    .line 44
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 45
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCS:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 47
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsRoamingVoiceNetworkAvailable()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgSubScription;->sendRoamingVoiceNetworkAvailability(Z)V

    .line 50
    :cond_a
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isLteIdleModeProfilingSupported()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgSubScription;->toggleLteIdleModeProfiling(Z)V

    .line 52
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 54
    return-void

    .line 56
    :cond_b
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 57
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 58
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 59
    return-void

    .line 62
    :cond_c
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->TAG:Ljava/lang/String;

    const-string v3, "WifiCallEnabler - do not need de-register "

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->setIsNotRequiredTimer(Z)V

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 68
    :cond_d
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isSupportCpThresholdFuncion()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->TAG:Ljava/lang/String;

    const-string v2, "WifiCallEnabler - send de-register and disable CP Threshold"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->updateCpEpdgHoThreshold(Z)V

    goto :goto_4

    .line 73
    :cond_e
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->setIsNotRequiredTimer(Z)V

    .line 74
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 80
    iget v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 81
    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 83
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setIsOnDemandApnConnectionFailed(Z)V

    .line 84
    iget-object v0, p0, Lcom/sec/epdg/WifiCallEnabler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setWifiCallingPrefState(I)V

    .line 109
    :cond_10
    :goto_5
    return-void
.end method
