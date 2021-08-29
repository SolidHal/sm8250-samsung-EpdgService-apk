.class public interface abstract Lcom/sec/epdg/interfaces/IEpdgSubScription;
.super Ljava/lang/Object;
.source "IEpdgSubScription.java"


# virtual methods
.method public abstract IsVoLteAvailableNetwork()Z
.end method

.method public abstract deInitialize()V
.end method

.method public abstract getCaptiveNotAuthStatus()Z
.end method

.method public abstract getCpThresholdConditionForHandover()Z
.end method

.method public abstract getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;
.end method

.method public abstract getEpdgSettings()Lcom/sec/epdg/interfaces/IEpdgSettings;
.end method

.method public abstract getImsCallCount()I
.end method

.method public abstract getIpmeStatus()Z
.end method

.method public abstract getIsAirplaneMode()Z
.end method

.method public abstract getIsImsVideoCallConnected()Z
.end method

.method public abstract getIsLteAvailable()Z
.end method

.method public abstract getIsVopsSupport()Z
.end method

.method public abstract getNetworkChangeController()Lcom/sec/epdg/interfaces/INetworkChangeController;
.end method

.method public abstract getRtpHandoverCnt()I
.end method

.method public abstract isEpdgAvailable()Z
.end method

.method public abstract isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z
.end method

.method public abstract isPdnConnectedOverWifi(Ljava/lang/String;)Z
.end method

.method public abstract isPdnIdleStateOverWifi()Z
.end method

.method public abstract isVoWifiEnabled()Z
.end method

.method public abstract isVolteEnabled()Z
.end method

.method public abstract isWifiCallingEnabled()Z
.end method

.method public abstract notifyTermination()V
.end method

.method public abstract onEpdgReadinessConditionUpdate()V
.end method

.method public abstract resetRtpHandoverCnt()V
.end method

.method public abstract setCallStartTimeForEdgeWarning()V
.end method

.method public abstract syncSettingsDBwithEpdgDB(Landroid/os/Message;)V
.end method
