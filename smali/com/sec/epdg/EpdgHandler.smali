.class public Lcom/sec/epdg/EpdgHandler;
.super Landroid/os/Handler;
.source "EpdgHandler.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field mTelephonyMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p4, "phoneId"    # I

    .line 57
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 58
    iput-object p2, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 60
    iput p4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 61
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgHandler]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private buildDeviceConfigUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "xPathSelection"    # Ljava/lang/String;

    .line 1995
    const-string v0, "content://com.samsung.ims.entitlementconfig.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "xpath"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1996
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "tag_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1997
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private checkDeregReason()I
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTemporaryBlocked()Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    if-eq v0, v1, :cond_0

    .line 797
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->BLOCKLIST_BLOCKING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->getValue()I

    move-result v0

    return v0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getHandoverEnableSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->HANDOVER_DISABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->getValue()I

    move-result v0

    return v0

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 802
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->CS_NOT_AVAILABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->getValue()I

    move-result v0

    return v0

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->IsVoLteAvailableNetwork()Z

    move-result v0

    if-nez v0, :cond_3

    .line 804
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->VOLTE_AVAILABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->getValue()I

    move-result v0

    return v0

    .line 807
    :cond_3
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->getValue()I

    move-result v0

    return v0
.end method

.method private getDeviceConfigValue(Ljava/lang/String;)I
    .locals 12
    .param p1, "xpathExpr"    # Ljava/lang/String;

    .line 2016
    const-string v0, "getDeviceConfigValue: "

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 2017
    .local v1, "ceContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 2018
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 2020
    .local v3, "returnVal":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgHandler;->buildDeviceConfigUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2022
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgHandler;->buildDeviceConfigUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2021
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 2023
    if-eqz v2, :cond_1

    .line 2024
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2025
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 2027
    :cond_0
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v5, "getDeviceConfigValue: moveToFirst is false"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2030
    :cond_1
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v5, "getDeviceConfigValue: cursor is null"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    :goto_0
    if-eqz v2, :cond_2

    .line 2033
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2038
    :cond_2
    if-eqz v2, :cond_3

    .line 2039
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2038
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2035
    :catch_0
    move-exception v4

    .line 2036
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2038
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 2039
    goto :goto_1

    .line 2042
    :cond_3
    :goto_2
    return v3

    .line 2038
    :goto_3
    if-eqz v2, :cond_4

    .line 2039
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2041
    :cond_4
    throw v0
.end method

.method private getE911CallCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getE911CallCount()I

    move-result v0

    return v0
.end method

.method private getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method private getNonE911CallCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNonE911CallCount()I

    move-result v0

    return v0
.end method

.method private getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    return-object v0
.end method

.method private getVoWifiSessionConnected()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getVoWifiSessionConnected()Z

    move-result v0

    return v0
.end method

.method private handleCallStatusChange(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1002
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 1003
    .local v0, "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1005
    .local v1, "mErrorCode":I
    if-nez v0, :cond_0

    .line 1006
    return-void

    .line 1011
    :cond_0
    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v0, v2, :cond_1

    .line 1013
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getHandoverSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->updateHandoverEnableSetting(Z)V

    .line 1014
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1015
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    .line 1019
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1020
    return-void

    .line 1024
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgHandler;->reportBigdataCallStatus(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;I)V

    .line 1027
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getLteMeasurementMaxCnt()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getWifiMeasurementMaxCnt()I

    move-result v2

    if-nez v2, :cond_4

    .line 1029
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgImsManagerHelper;->getRtpTimeOutValueFromImsProfile(Ljava/lang/String;)I

    move-result v2

    .line 1030
    .local v2, "mMeasurementCount":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3, v2}, Lcom/sec/epdg/EpdgSubScription;->setLteAndWifiMeasurementMaxCnt(I)V

    .line 1033
    .end local v2    # "mMeasurementCount":I
    :cond_4
    iput-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 1034
    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->CALL_STATUS:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Ljava/lang/String;)V

    .line 1036
    const/4 v2, 0x2

    new-array v3, v2, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1037
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1038
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1039
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1040
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 1044
    :cond_5
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1046
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setW2LHandoverForWeakWifiSignal(Z)V

    .line 1048
    :cond_6
    :goto_0
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1049
    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v3, :cond_7

    .line 1050
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v4

    iget-object v7, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1051
    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1052
    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRovein()I

    move-result v8

    iget-object v9, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1053
    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v9

    .line 1050
    invoke-virtual {v3, v4, v7, v8, v9}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    goto/16 :goto_1

    .line 1054
    :cond_7
    new-array v3, v2, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1055
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1056
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    iget-object v7, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1057
    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1058
    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v8

    iget-object v9, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1059
    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v9

    .line 1056
    invoke-virtual {v3, v4, v7, v8, v9}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    goto :goto_1

    .line 1061
    :cond_8
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v4

    iget-object v7, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1062
    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1063
    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRovein()I

    move-result v8

    iget-object v9, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1064
    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v9

    .line 1061
    invoke-virtual {v3, v4, v7, v8, v9}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    goto :goto_1

    .line 1066
    :cond_9
    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v3, :cond_b

    .line 1067
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->handleCallStatusChangeE911()V

    goto :goto_1

    .line 1069
    :cond_a
    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v3, :cond_b

    .line 1070
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1073
    :cond_b
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1076
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->handleCallStatusChangeActive()V

    goto :goto_2

    .line 1077
    :cond_c
    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v2, :cond_d

    .line 1078
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->handleCallStatusChangeIdle()V

    goto :goto_2

    .line 1080
    :cond_d
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unhandled case"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :goto_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1084
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 1086
    :cond_e
    return-void
.end method

.method private handleCallStatusChangeActive()V
    .locals 3

    .line 958
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->startLteProfiling()V

    .line 959
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Telkom_ZA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 963
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->onSystemSelectTimerFinish()V

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 967
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 970
    :cond_2
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Vodafone_NL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 971
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 972
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 973
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->onSystemSelectTimerFinish()V

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 977
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgHandler;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 981
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    .line 983
    :cond_5
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 984
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgHandler;->sendCallStateChangeEventToDpdHandler(Z)V

    .line 986
    :cond_6
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isWfcCallDropNotiEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isEdgeCheckRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 987
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "start Edge Check - call state"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->enableEdgeCheck(Z)V

    .line 990
    :cond_7
    return-void
.end method

.method private handleCallStatusChangeE911()V
    .locals 4

    .line 993
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    .line 996
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v2

    const/16 v3, -0x64

    if-nez v2, :cond_0

    .line 997
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 994
    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(III)V

    .line 999
    :cond_1
    return-void
.end method

.method private handleCallStatusChangeForDualIms(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 731
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 733
    .local v0, "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_STARTING:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 734
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getCallStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "call started and bCallStarted is ture. ignore."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    return-void

    .line 738
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_DI()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->is2simInserted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 740
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->isHandoverBlockForDSDS_DI()Z

    move-result v1

    if-nez v1, :cond_2

    .line 741
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverBlockForDSDS_DI(ZI)V

    .line 742
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    move-result-object v1

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    if-nez v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverPropForDSDS_DI(ZI)V

    goto :goto_0

    .line 744
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "call established. ho not blocked or call not over wifi"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setCallStarted(Z)V

    goto/16 :goto_6

    .line 749
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getCallStarted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 750
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "call idle and bCallStarted is false. ignore."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void

    .line 753
    :cond_5
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_DI()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->is2simInserted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 754
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->isHandoverBlockForDSDS_DI()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 756
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getHandoverBlockTriggerIdForDSDS_DI()I

    move-result v1

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    if-eq v1, v4, :cond_7

    .line 757
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    move-result-object v1

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    if-nez v4, :cond_6

    move v4, v2

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgUtilExt;->isCallStartedOrConnected(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 758
    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "call ended and ho blocked for another sim on DSDS_DI model. Release blocking ho for another sim"

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3, v1}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverBlockForDSDS_DI(ZI)V

    .line 760
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    move-result-object v1

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    if-nez v4, :cond_8

    move v4, v2

    goto :goto_2

    :cond_8
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgUtilExt;->isCallStartedOrConnected(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 761
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverPropForDSDS_DI(ZI)V

    .line 762
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverPropForDSDS_DI(ZI)V

    goto :goto_5

    .line 764
    :cond_9
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_3

    :cond_a
    move v1, v3

    :goto_3
    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverBlockForDSDS_DI(ZI)V

    .line 765
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    move-result-object v1

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v1, v2, v4}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverPropForDSDS_DI(ZI)V

    .line 766
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    move-result-object v1

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/EpdgUtilExt;->setHandoverPropForDSDS_DI(ZI)V

    goto :goto_5

    .line 770
    :cond_c
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "call idle. HO not blocked"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_d
    :goto_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgSubScription;->setCallStarted(Z)V

    .line 775
    :goto_6
    return-void
.end method

.method private handleCallStatusChangeIdle()V
    .locals 6

    .line 868
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->stopL2WHandoverProfiling()V

    .line 869
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->resetEdgeNotiCnt()V

    .line 870
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setEdgeNotiStartTime(J)V

    .line 871
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->enableEdgeCheck(Z)V

    .line 872
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->getVoWifiSessionConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "IPME is connected skip stop LTE profiling"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 875
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    if-nez v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->stopLteProfiling()V

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 879
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 880
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 881
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRovein()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 882
    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v5

    .line 878
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    .line 885
    :goto_0
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->resetThrottleState(Ljava/lang/String;)V

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 891
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 892
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->onSystemSelectTimerFinish()V

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->resetRtpHandoverCnt()V

    .line 897
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setCurrentRtpLossRate(I)V

    .line 898
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsPendingVoiceAvailability()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 899
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setIsPendingVoiceAvailability(Z)V

    .line 900
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsRoamingVoiceNetworkAvailable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->sendRoamingVoiceNetworkAvailability(Z)V

    .line 902
    :cond_4
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v0, :cond_5

    .line 903
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setHasEspLoss(Z)V

    .line 904
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgHandler;->sendCallStateChangeEventToDpdHandler(Z)V

    .line 906
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 907
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-boolean v0, v0, Lcom/sec/epdg/EpdgSubScription;->waitingForCallend:Z

    if-nez v0, :cond_7

    .line 908
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_1

    .line 911
    :cond_6
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgHandler;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    .line 914
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->isPdnExistedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 915
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 916
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 917
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 918
    :cond_8
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    .line 919
    .local v0, "wificallpreferred":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getWifiRoamPrefSetting()I

    move-result v1

    .line 920
    .local v1, "Roamingpreferred":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_a

    const/4 v3, -0x1

    if-le v1, v3, :cond_a

    .line 921
    if-ne v1, v2, :cond_9

    goto :goto_2

    :cond_9
    move v2, v4

    :goto_2
    move v0, v2

    .line 922
    if-ne v1, v4, :cond_a

    .line 923
    const/4 v0, 0x5

    .line 925
    :cond_a
    if-eq v0, v4, :cond_b

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getHandoverEnableSetting()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    if-ne v0, v2, :cond_c

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 926
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 927
    :cond_b
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRilInterface()Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 931
    .end local v0    # "wificallpreferred":I
    .end local v1    # "Roamingpreferred":I
    :cond_c
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 932
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->removeMessages(I)V

    .line 934
    :cond_d
    return-void
.end method

.method private handleDeviceConfigUpdate()V
    .locals 11

    .line 2002
    const-string v0, "//WFCConfig/LTE_Low_Threshold_Value"

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->getDeviceConfigValue(Ljava/lang/String;)I

    move-result v0

    .line 2003
    .local v0, "lterovein":I
    const-string v1, "//WFCConfig/LTE_High_Threshold_Value"

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgHandler;->getDeviceConfigValue(Ljava/lang/String;)I

    move-result v7

    .line 2004
    .local v7, "lteroveout":I
    const-string v1, "//WFCConfig/WiFi_Low_Threshold_Value"

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgHandler;->getDeviceConfigValue(Ljava/lang/String;)I

    move-result v8

    .line 2005
    .local v8, "wifirovein":I
    const-string v1, "//WFCConfig/WiFi_High_Threshold_Value"

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgHandler;->getDeviceConfigValue(Ljava/lang/String;)I

    move-result v9

    .line 2006
    .local v9, "wifiroveout":I
    const-string v1, "//WFCConfig/PingPongtimer_Value"

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgHandler;->getDeviceConfigValue(Ljava/lang/String;)I

    move-result v10

    .line 2007
    .local v10, "pingpong":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDeviceConfigUpdate : LteRoveIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " LteRoveOut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " WiFiRoveIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " WiFiRoveOut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pingpong timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    if-nez v0, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    if-eqz v10, :cond_1

    .line 2011
    :cond_0
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/EpdgHandler;->updateCarrierConfigurableDB(IIIII)V

    .line 2013
    :cond_1
    return-void
.end method

.method private handleDnsQueryRequest(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 694
    move-object v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v1, v10, Landroid/os/Message;->arg1:I

    .line 695
    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v11

    .line 696
    .local v11, "reportDnsStatus":Landroid/os/Message;
    const/16 v0, 0xc

    iput v0, v11, Landroid/os/Message;->what:I

    .line 698
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isAnyPdnConnectedOverWifi()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "No DNS packets need to be sent to EPDG. DNS already resolved!"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iput v1, v11, Landroid/os/Message;->arg1:I

    .line 701
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 704
    :cond_0
    iget-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/Boolean;

    .line 705
    .local v12, "needFlush":Ljava/lang/Boolean;
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v12, v0, :cond_1

    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    goto :goto_0

    .line 706
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->DNS_TTL_CHECK:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    :goto_0
    move-object v13, v0

    .line 707
    .local v13, "reason":Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;
    iget v0, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    .line 708
    invoke-virtual {v0, v13}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    move-result v14

    .line 709
    .local v14, "result":Z
    if-ne v1, v14, :cond_3

    .line 710
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "DNS Resolution was succesful."

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget v0, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    .line 714
    :cond_2
    iput v1, v11, Landroid/os/Message;->arg1:I

    .line 715
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 718
    :cond_3
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "DNS resolution failed."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x0

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 720
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 721
    const/16 v0, 0x64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DNS_QUERY_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 723
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "EPDI (DNS_QUERY_FAIL)"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    .line 725
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->getValue()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 724
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/epdg/EpdgHandler;->sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V

    .line 728
    .end local v12    # "needFlush":Ljava/lang/Boolean;
    .end local v13    # "reason":Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;
    .end local v14    # "result":Z
    :goto_1
    return-void
.end method

.method private handleHandoverStart(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 462
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 463
    .local v0, "apnType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    .line 464
    .local v1, "curSM":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v1, :cond_0

    .line 465
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send handover start msg for  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 467
    .local v2, "msgToSM":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 468
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 470
    .end local v2    # "msgToSM":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private handleImsDeRegDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1112
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getDisconnectRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1114
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "DE-registration finished. start WIFI disconnection"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "start EPDG disconnection "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 1119
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 1120
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1121
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getRegistedNetworkStateChangeReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 1125
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsWifiDisconnectDelayed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "need recovery case. WiFiCalling on, WiFi connected and WiFi Setting on"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1128
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getDeregiForHOFail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1133
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    .line 1134
    .local v0, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v0, :cond_2

    .line 1135
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1136
    .local v1, "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1137
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1138
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1139
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "disconnect ims pdn after de-registered "

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    .end local v1    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setDeregiForHOFail(Z)V

    .line 1143
    .end local v0    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3
    const/16 v0, 0x54

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/epdg/EpdgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1145
    :cond_4
    return-void
.end method

.method private handleImsRegDone(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1089
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "IMS_REG_STATUS_CHANGE case 1"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->sendWifiDelayRequest(Z)V

    .line 1093
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getHoDelay()Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    if-ne v1, v2, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 1098
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1100
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isWfcCallDropNotiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isEdgeCheckRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1101
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "start Edge Check"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->enableEdgeCheck(Z)V

    goto :goto_1

    .line 1104
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1105
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "IMS_REG_STATUS_CHANGE: IMS registered over LTE"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgHandler;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    .line 1107
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->enableEdgeCheck(Z)V

    .line 1109
    :cond_3
    :goto_1
    return-void
.end method

.method private handleImsRegStatusChange(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1149
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-ne v0, v1, :cond_0

    .line 1150
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgHandler;->handleImsRegDone(Landroid/os/Message;)V

    goto :goto_0

    .line 1151
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-ne v0, v1, :cond_1

    .line 1152
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgHandler;->handleImsDeRegDone(Landroid/os/Message;)V

    goto :goto_0

    .line 1153
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_BLOCKED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-ne v0, v1, :cond_2

    .line 1154
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->BLOCKLIST_COUNTRY:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setEpdgTemporaryBlocked(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;)V

    .line 1155
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "start EPDG disconnection "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 1157
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 1158
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1160
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getHoDelay()Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    if-ne v0, v1, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 1163
    :cond_3
    return-void
.end method

.method private handleIpmeStatusChange(Z)V
    .locals 1
    .param p1, "ipmeStatus"    # Z

    .line 1447
    if-nez p1, :cond_1

    .line 1448
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->getVoWifiSessionConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    if-nez v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->stopLteProfiling()V

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 1455
    :cond_1
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    if-nez v0, :cond_2

    .line 1456
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->startLteProfiling()V

    .line 1459
    :cond_2
    :goto_0
    return-void
.end method

.method private handleIpsecConnected(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 256
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 257
    .local v0, "cid":I
    const/4 v1, 0x0

    .line 258
    .local v1, "apnType":Ljava/lang/String;
    const/4 v2, -0x1

    .line 260
    .local v2, "networkType":I
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 261
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgEntitlement;->isProcessingEntitlement()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v5, "Success to check Entitlement state"

    invoke-static {v3, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgEntitlement;->getEntitlementStatus()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 264
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v3

    const-string v4, "ENTITLEMENT"

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecConnectionSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_0
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgEntitlement;->getEntitlementStatus()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->setMDN()V

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgHandler;->stopCheckEntitlement()I

    .line 268
    return-void

    .line 271
    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    .line 272
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 271
    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 273
    .local v3, "msgToHandoverSM":Landroid/os/Message;
    const/4 v5, 0x5

    iput v5, v3, Landroid/os/Message;->what:I

    .line 274
    invoke-direct {p0, p1, v3}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    .line 275
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v5}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToTestApp(II)V

    .line 278
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->setIsNotRequiredTimer(Z)V

    .line 280
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnType after getIwlanApnNameFromCid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-eqz v1, :cond_4

    .line 283
    iget v5, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    .line 284
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 286
    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgHandler;->sendWifiDelayRequest(Z)V

    .line 287
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailableDuringConnecting()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    iget v5, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v5

    sub-int/2addr v5, v4

    .line 289
    .local v5, "checkCid":I
    if-lez v5, :cond_3

    .line 290
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4, v6}, Lcom/sec/epdg/EpdgSubScription;->setIsLteAvailableDuringConnecting(Z)V

    .line 291
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v7, "During Connecting LTE was available, retryW2LHandoverIfRequired"

    invoke-static {v4, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 297
    .end local v5    # "checkCid":I
    :cond_3
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setW2LHandoverForWeakWifiSignal(Z)V

    .line 298
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 301
    :cond_4
    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorFET()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 302
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {p0, v4}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 303
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_5
    return-void
.end method

.method private handleIpsecConnectionFailure(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .line 378
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v11, v10, Landroid/os/Message;->arg1:I

    .line 379
    .local v11, "cid":I
    const/4 v0, 0x0

    .line 380
    .local v0, "apnType":Ljava/lang/String;
    const/4 v1, -0x1

    .line 382
    .local v1, "networkType":I
    iget-object v2, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Lcom/sec/epdg/IWlanConnectResult;

    .line 383
    .local v12, "result":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual {v12}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v13

    .line 385
    .local v13, "resultError":Lcom/sec/epdg/ErrorCode/IWlanError;
    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    const/4 v3, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    if-ne v11, v2, :cond_2

    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 386
    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgEntitlement;->isProcessingEntitlement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgEntitlement;->getEntitlementStatus()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v14, :cond_0

    .line 388
    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "Finish to check Entitlement state"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgEntitlement;->setEntitlementStatus(I)V

    .line 393
    return-void

    .line 396
    :cond_0
    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgEntitlement;->startCheckEntitlement()I

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v5, "Fail to check Entitlement state"

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v5

    iget v6, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 399
    invoke-static {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 398
    const-string v7, "ENTITLEMENT"

    invoke-virtual {v2, v7, v5, v3, v6}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecConnectionFail(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;ILjava/lang/String;)V

    .line 400
    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgEntitlement;->setEntitlementStatus(I)V

    .line 402
    :cond_1
    return-void

    .line 404
    :cond_2
    iget-object v2, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v11}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v15

    .line 405
    .local v15, "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v15, Landroid/os/Message;->what:I

    .line 406
    invoke-direct {v9, v10, v15}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    .line 407
    iget v2, v10, Landroid/os/Message;->what:I

    invoke-virtual {v9, v11, v2}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToTestApp(II)V

    .line 408
    iget-object v2, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v11}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v8

    .line 409
    .end local v0    # "apnType":Ljava/lang/String;
    .local v8, "apnType":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 410
    iget v0, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 411
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkType returned:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailableDuringConnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgSubScription;->setIsLteAvailableDuringConnecting(Z)V

    .line 418
    :cond_3
    move v7, v1

    goto :goto_0

    .line 409
    :cond_4
    move v7, v1

    .line 418
    .end local v1    # "networkType":I
    .local v7, "networkType":I
    :goto_0
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v11}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v6

    .line 419
    .local v6, "apnState":I
    if-eqz v8, :cond_6

    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne v6, v0, :cond_5

    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 421
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->L2W_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->getValue()I

    move-result v1

    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 422
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getHandoverTriggerReasonForEPDI()I

    move-result v2

    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->RECEIVED_IKE_ERROR:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 423
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->getValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->L2W_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 421
    move-object/from16 v0, p0

    move/from16 v19, v6

    .end local v6    # "apnState":I
    .local v19, "apnState":I
    move/from16 v6, v16

    move/from16 v20, v7

    .end local v7    # "networkType":I
    .local v20, "networkType":I
    move/from16 v7, v17

    move-object/from16 v21, v8

    .end local v8    # "apnType":Ljava/lang/String;
    .local v21, "apnType":Ljava/lang/String;
    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/sec/epdg/EpdgHandler;->sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V

    .line 425
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    const-string v1, "L2W_HANDOVER_FAIL_COUNT"

    invoke-virtual {v0, v1, v14, v14}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 426
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setLastestIkeError(I)V

    goto :goto_1

    .line 420
    .end local v19    # "apnState":I
    .end local v20    # "networkType":I
    .end local v21    # "apnType":Ljava/lang/String;
    .restart local v6    # "apnState":I
    .restart local v7    # "networkType":I
    .restart local v8    # "apnType":Ljava/lang/String;
    :cond_5
    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    .end local v6    # "apnState":I
    .end local v7    # "networkType":I
    .end local v8    # "apnType":Ljava/lang/String;
    .restart local v19    # "apnState":I
    .restart local v20    # "networkType":I
    .restart local v21    # "apnType":Ljava/lang/String;
    goto :goto_1

    .line 419
    .end local v19    # "apnState":I
    .end local v20    # "networkType":I
    .end local v21    # "apnType":Ljava/lang/String;
    .restart local v6    # "apnState":I
    .restart local v7    # "networkType":I
    .restart local v8    # "apnType":Ljava/lang/String;
    :cond_6
    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    .line 430
    .end local v6    # "apnState":I
    .end local v7    # "networkType":I
    .end local v8    # "apnType":Ljava/lang/String;
    .restart local v19    # "apnState":I
    .restart local v20    # "networkType":I
    .restart local v21    # "apnType":Ljava/lang/String;
    :goto_1
    const/16 v0, 0xb

    move/from16 v1, v20

    .end local v20    # "networkType":I
    .restart local v1    # "networkType":I
    if-eq v1, v0, :cond_8

    const/16 v2, 0xf

    if-ne v1, v2, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v4, v21

    goto/16 :goto_4

    :cond_8
    :goto_2
    iget v2, v10, Landroid/os/Message;->what:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_c

    .line 432
    iget-object v2, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HO_OPTIMIZATION][IPSEC_EVT] IPSEC_CONNECTION_SETUP_FAILURE for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    .end local v21    # "apnType":Ljava/lang/String;
    .local v4, "apnType":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_9
    const-string v5, ""

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->delayNotifyAuthFailureTillPermanentThrottle()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 435
    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_a

    .line 436
    iget-object v2, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "AUTHENTICATION_FAILED. Do not send fail intent here for Rogers and VideoTron"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 438
    :cond_a
    iget-object v2, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgSubScription;->getThrottleCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v14

    .line 439
    .local v2, "count":I
    iget-object v3, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IPSEC_CONNECTION_SETUP_FAILURE apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v3, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v3

    invoke-virtual {v12}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v5

    iget v6, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 441
    invoke-static {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 440
    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecConnectionFail(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;ILjava/lang/String;)V

    .line 443
    if-eqz v4, :cond_d

    iget-object v3, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 444
    const/4 v3, 0x3

    if-ge v2, v3, :cond_b

    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 445
    invoke-virtual {v13}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v3

    const/16 v5, 0x2000

    if-ne v3, v5, :cond_d

    .line 446
    :cond_b
    iget-object v3, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v5, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v3, v5}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    goto :goto_4

    .line 430
    .end local v2    # "count":I
    .end local v4    # "apnType":Ljava/lang/String;
    .restart local v21    # "apnType":Ljava/lang/String;
    :cond_c
    move-object/from16 v4, v21

    .line 453
    .end local v21    # "apnType":Ljava/lang/String;
    .restart local v4    # "apnType":Ljava/lang/String;
    :cond_d
    :goto_4
    if-ne v1, v0, :cond_e

    .line 454
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "IPsec Error/failure,  stop TEPDGLTE and allow mobile attach"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 458
    :cond_e
    invoke-virtual {v9, v4, v1, v13}, Lcom/sec/epdg/EpdgHandler;->handleIkeError(Ljava/lang/String;ILcom/sec/epdg/ErrorCode/IWlanError;)V

    .line 459
    return-void
.end method

.method private handleIpsecDisconnectRequest(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1423
    .local v0, "asyncRes":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    .line 1424
    .local v1, "connReq":Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;->getCid()I

    move-result v2

    .line 1425
    .local v2, "cid":I
    if-lez v2, :cond_3

    .line 1426
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1427
    invoke-virtual {v3, v2}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1426
    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1428
    .local v3, "msgtoHandoverSM":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 1429
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_0

    .line 1430
    const/16 v4, 0xf

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1431
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;->getIsHandover()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1432
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1433
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x29

    if-ne v4, v5, :cond_1

    .line 1434
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1435
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1436
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_2

    .line 1437
    iput v5, v3, Landroid/os/Message;->what:I

    .line 1438
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1440
    .end local v3    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_2
    :goto_0
    goto :goto_1

    .line 1441
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "[RIL->EpdgSubScription]Event received for invalid cid neglect it"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :goto_1
    return-void
.end method

.method private handleIpsecDisconnected(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 308
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v11, v10, Landroid/os/Message;->arg1:I

    .line 309
    .local v11, "cid":I
    const/4 v0, -0x1

    .line 311
    .local v0, "networkType":I
    iget-object v1, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v11}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, "apnType":Ljava/lang/String;
    iget v1, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 313
    const/16 v1, 0x8

    if-ne v11, v1, :cond_0

    iget v1, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgEntitlement;->isProcessingEntitlement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget v1, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgEntitlement;->setEntitlementStatus(I)V

    .line 315
    return-void

    .line 318
    :cond_0
    if-eqz v12, :cond_2

    .line 319
    iget v1, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v0

    .line 320
    iget-object v1, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/sec/epdg/EpdgHandler;->sendWifiDelayRequest(Z)V

    .line 324
    :cond_1
    move v13, v0

    goto :goto_0

    .line 318
    :cond_2
    move v13, v0

    .line 324
    .end local v0    # "networkType":I
    .local v13, "networkType":I
    :goto_0
    const/16 v0, 0xb

    if-ne v13, v0, :cond_3

    .line 331
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 336
    :cond_3
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HO_OPTIMIZATION][IPSEC_EVT] IPSEC_CONN_DISCONNECTED for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v11}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v14

    .line 339
    .local v14, "msgToHandoverSM":Landroid/os/Message;
    const/4 v0, 0x7

    iput v0, v14, Landroid/os/Message;->what:I

    .line 340
    invoke-direct {v9, v10, v14}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    .line 341
    iget v0, v10, Landroid/os/Message;->what:I

    invoke-virtual {v9, v11, v0}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToTestApp(II)V

    .line 344
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecDisconnection(Ljava/lang/String;)V

    .line 347
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v11}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v15

    .line 348
    .local v15, "mApnState":I
    if-eqz v12, :cond_4

    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne v15, v2, :cond_4

    iget v0, v10, Landroid/os/Message;->what:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_4

    .line 350
    const/16 v0, 0xc8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v9, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",IPSEC_PEER_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 351
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->PEER_DISCONNECT:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    .line 352
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->getValue()I

    move-result v6

    const/4 v7, 0x0

    sget-object v8, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->PEER_DISCONNECT:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 351
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/epdg/EpdgHandler;->sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V

    .line 353
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, v9, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateTimeMaintaingIWLAN()V

    .line 360
    :cond_4
    return-void
.end method

.method private handlePeriodicDnsTimerExpired()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 645
    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->DNS_RETRY_TIMER_EXPIRY:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->performDnsAndGetResult(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->startTimerForPeriodicDns()V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "No need to restart DNS retry timer"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    goto :goto_0

    .line 653
    :cond_1
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    .line 655
    :goto_0
    return-void
.end method

.method private handleRilHandoverResult(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "apnType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 505
    .local v1, "connReq":Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;
    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v2

    const/16 v3, 0x21

    const/16 v4, 0x30

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 507
    .local v2, "asyncRes":Landroid/os/AsyncResult;
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;

    .line 508
    .end local v2    # "asyncRes":Landroid/os/AsyncResult;
    goto :goto_1

    .line 509
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 511
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v0}, Lcom/sec/epdg/EpdgSubScription;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    .line 512
    .local v2, "curSM":Lcom/sec/epdg/IPSecDataConnSM;
    if-nez v2, :cond_1

    .line 513
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore handover result for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void

    .line 516
    :cond_1
    new-instance v5, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move v7, v3

    goto :goto_0

    :cond_2
    move v7, v4

    :goto_0
    invoke-direct {v5, v6, v7}, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;-><init>(II)V

    move-object v1, v5

    .line 519
    .end local v2    # "curSM":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->getCid()I

    move-result v2

    .line 520
    .local v2, "cid":I
    if-lez v2, :cond_8

    .line 521
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v2}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->getRat()I

    move-result v5

    .line 523
    .local v5, "rat":I
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->isWifiOrMobile()Z

    move-result v6

    .line 524
    .local v6, "wifiOrMobile":Z
    iget-object v7, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RIL->EpdgSubScription]Current Cid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / Rat : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v7, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 526
    invoke-virtual {v7, v2}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 525
    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 527
    .local v7, "msgtoHandoverSM":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v7, Landroid/os/Message;->what:I

    .line 528
    iput v2, v7, Landroid/os/Message;->arg1:I

    .line 529
    const/16 v8, 0xff

    if-ne v5, v8, :cond_3

    .line 530
    move v3, v8

    goto :goto_2

    .line 531
    :cond_3
    if-eqz v6, :cond_4

    move v3, v4

    goto :goto_2

    .line 532
    :cond_4
    nop

    :goto_2
    iput v3, v7, Landroid/os/Message;->arg2:I

    .line 533
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 534
    invoke-direct {p0, v0, v5}, Lcom/sec/epdg/EpdgHandler;->reportHandoverResultToBigdata(Ljava/lang/String;I)V

    .line 538
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 539
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkShowPopupToNotifyCurrentEpdgStatus apnType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    if-eq v5, v8, :cond_6

    if-eq v5, v4, :cond_6

    .line 541
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 542
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getW2LHandoverForWeakWifiSignal()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 543
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v8, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->LOW_WIFI_SIGNAL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v4, v8}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 544
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 545
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v8, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->TURN_OFF_MOBILE_DATA:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v4, v8}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    goto :goto_3

    .line 548
    :cond_5
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 549
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v8, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->TURN_OFF_MOBILE_DATA:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v4, v8}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    .line 553
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setW2LHandoverForWeakWifiSignal(Z)V

    .line 555
    .end local v5    # "rat":I
    .end local v6    # "wifiOrMobile":Z
    .end local v7    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_7
    goto :goto_4

    .line 556
    :cond_8
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "[RIL->EpdgSubScription]Event received for invalid cid neglect it"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_4
    return-void
.end method

.method private handleScreenOff()V
    .locals 2

    .line 678
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isWiFiScanStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicWiFiScan()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 682
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_1

    .line 684
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "mScreenOffIntentReceiver: Removing periodic DNS pending intent"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->removePeriodicDnsPendingIntent()V

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->handleScreenStateChanged(Z)V

    .line 689
    return-void
.end method

.method private handleScreenOn()V
    .locals 3

    .line 658
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 659
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsScreenOn()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 660
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->SCREEN_ON_INTENT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->performDnsAndGetResult(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->removePeriodicDnsPendingIntent()V

    goto :goto_0

    .line 665
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 666
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 667
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "Screen on. Check Wifi availability"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->onSystemSelectTimerFinish()V

    .line 674
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->handleScreenStateChanged(Z)V

    .line 675
    return-void
.end method

.method private handleSendEpdgNotAvailable(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1495
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "Wifi is disconnected. EPDG is already UNAVAILABLE"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    return-void

    .line 1499
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x51

    if-ne v0, v1, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "Posting Epdg NOT Available as DNS fails"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 1502
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 1503
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1504
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 1505
    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 1506
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->startTimerForPeriodicDns()V

    goto/16 :goto_2

    .line 1507
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 1508
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1509
    .local v0, "apnType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Posting Epdg NOT Available to Framework and RIL. Triggered by failure of:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " APN ipsec connection over ePDG."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setIsOnDemandApnConnectionFailed(Z)V

    .end local v0    # "apnType":Ljava/lang/String;
    goto :goto_1

    .line 1514
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_6

    .line 1515
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1516
    .restart local v0    # "apnType":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 1517
    .local v1, "isPermanent":Z
    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1518
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND_EPDG_NOTAVAILABLE_FOR_IKE_ERROR apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isPermanent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1520
    if-eqz v1, :cond_4

    .line 1521
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->startEpdgDisconnection(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    goto :goto_2

    .line 1523
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_IKE_ERROR:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->startEpdgDisconnection(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    goto :goto_2

    .line 1527
    :cond_5
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "keep epdg available during throttle in AP Assist mode."

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1514
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "isPermanent":Z
    :cond_6
    :goto_1
    nop

    .line 1530
    :cond_7
    :goto_2
    return-void
.end method

.method private handleSmEnableEpdgFailure(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 562
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 563
    .local v0, "pdnType":I
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 564
    invoke-virtual {v2, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 566
    .local v1, "networkType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 568
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "[HANDOFF]Fallback W2L handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sec/epdg/EpdgSubScription;->startHandOverWifiToLte(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v2

    .line 571
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HANDOFF]W2L handover failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid network type for W2L handover, networkType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :goto_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->L2W_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->getValue()I

    move-result v4

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 582
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getHandoverTriggerReasonForEPDI()I

    move-result v5

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->TC_ENABLE_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 583
    invoke-virtual {v2}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->getValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->L2W_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 581
    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/sec/epdg/EpdgHandler;->sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V

    .line 585
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    const-string v3, "L2W_HANDOVER_FAIL_COUNT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 588
    :cond_1
    return-void
.end method

.method private handleSmUpdateConnStatus(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 591
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    .line 592
    .local v0, "data":Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getCid()I

    move-result v8

    .line 593
    .local v8, "apnConnCid":I
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getApnType()Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, "apnType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 595
    .local v1, "isPermanentFail":Z
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update apn connection status for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v3

    invoke-virtual {v2, v9, v3}, Lcom/sec/epdg/EpdgUtils;->checkAvailableOverLTE(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 600
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->setIsOnDemandApnConnectionFailed(Z)V

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "No CS area, Retry MMS, XCAP over Epdg"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v1, 0x0

    move v10, v1

    goto :goto_0

    .line 602
    :cond_1
    move v10, v1

    goto :goto_0

    .line 597
    :cond_2
    move v10, v1

    .line 607
    .end local v1    # "isPermanentFail":Z
    .local v10, "isPermanentFail":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPermanentFail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sec/epdg/EpdgUtils;->isAttachApn(I)Z

    move-result v1

    .line 609
    .local v1, "isAttachApn":Z
    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "AlwaysOn Apn should be set as attachApn"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v1, 0x1

    move v11, v1

    goto :goto_1

    .line 613
    :cond_3
    move v11, v1

    .end local v1    # "isAttachApn":Z
    .local v11, "isAttachApn":Z
    :goto_1
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 614
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRilInterface()Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v3

    .line 615
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isHandover()Z

    move-result v5

    .line 614
    move v2, v8

    move v6, v11

    move v7, v10

    invoke-interface/range {v1 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateApnConnStatus(IZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;ZZZ)V

    goto :goto_2

    .line 618
    :cond_4
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 619
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v9}, Lcom/sec/epdg/EpdgSubScription;->getThrottleLeftTime(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->setSuggestedRetryTime(I)I

    .line 621
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgInterfaceController()Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->updateConnectionStatus(ILcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V

    .line 629
    :goto_2
    return-void
.end method

.method private handleStateMachineTriggerHo(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1462
    const/4 v0, 0x0

    .line 1463
    .local v0, "apnType":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1464
    .local v1, "cid":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 1465
    .local v2, "handoverToWifi":Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 1466
    .local v3, "isAlwaysOnApn":Z
    if-lez v1, :cond_0

    .line 1467
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4, v1}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 1468
    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v3

    .line 1470
    :cond_0
    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 1471
    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(ILjava/lang/String;)Z

    move-result v4

    .line 1472
    .local v4, "supressW2L":Z
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HO_OPTIMIZATION]Trigger HO. Cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " handovertoWifi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " supressW2L: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    iget v5, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getHandoverEnableSetting()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1475
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1477
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1478
    invoke-virtual {v5, v1}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1477
    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 1479
    .local v5, "msgtoHandoverSM":Landroid/os/Message;
    const/16 v6, 0xf

    iput v6, v5, Landroid/os/Message;->what:I

    .line 1480
    iput v1, v5, Landroid/os/Message;->arg1:I

    .line 1482
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1483
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1484
    .end local v5    # "msgtoHandoverSM":Landroid/os/Message;
    goto :goto_1

    .line 1485
    :cond_2
    iget v5, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1486
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1487
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x12

    goto :goto_0

    :cond_3
    const/16 v6, 0xd

    .line 1486
    :goto_0
    invoke-virtual {v5, v0, v6}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange(Ljava/lang/String;I)V

    goto :goto_1

    .line 1489
    :cond_4
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRilInterface()Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/sec/epdg/EpdgRilInterface;->triggerHandover(IZ)V

    .line 1492
    :goto_1
    return-void
.end method

.method private handleVolteProvisioningChanged(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1212
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/EpdgSubScription;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->onVolteProvisioningStateChanged(I)V

    .line 1216
    return-void
.end method

.method private handleVowifiProvisioningChanged(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1219
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/EpdgSubScription;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->onVoWifiProvisioningStateChanged(I)V

    .line 1223
    return-void
.end method

.method private onSystemSelectTimerFinish()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->onSystemSelectTimerFinish()V

    .line 75
    return-void
.end method

.method private performDnsAndGetResult(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z
    .locals 3
    .param p1, "reason"    # Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "result":Z
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    .line 634
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    const/4 v0, 0x1

    .line 636
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    goto :goto_0

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "DNS failed in all tries"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :goto_0
    return v0
.end method

.method private reportBigdataCallStatus(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;I)V
    .locals 19
    .param p1, "callStatus"    # Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .param p2, "errorCode"    # I

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, p2

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_4

    .line 816
    const/16 v2, 0x45b

    if-ne v15, v2, :cond_1

    .line 817
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getVoWifiCallDropType()Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;->EPDG_MODULE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    if-ne v2, v3, :cond_0

    .line 818
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/epdg/EpdgHandler;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->getStatus()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->RELEASED:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->getValue()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;->EPDG_MODULE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    .line 819
    invoke-virtual {v5}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;->getValue()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgHandler;->checkDeregReason()I

    move-result v7

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    .line 820
    invoke-static {v6}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v8

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 821
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrp()I

    move-result v9

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 822
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrq()I

    move-result v10

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 823
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v11

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getCurrentRtpLossRate()I

    move-result v12

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 824
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v13

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v14

    .line 825
    invoke-static {}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getBatteryStatus()I

    move-result v16

    invoke-static {}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getBatteryChargeType()I

    move-result v17

    invoke-static {}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getBatteryVoltage()I

    move-result v18

    .line 818
    move/from16 v6, p2

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v2 .. v17}, Lcom/sec/epdg/BigData/EpdgBigDataController;->sendVowifiCallDropEvent(IIIIIIIIZIIIIII)V

    goto :goto_0

    .line 817
    :cond_0
    move v1, v15

    .line 827
    :goto_0
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->isPdnExistedOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 829
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateTimeMaintaingIWLAN()V

    goto/16 :goto_1

    .line 832
    :cond_1
    move v1, v15

    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->isPdnExistedOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 833
    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgHandler;->isCallDropReason(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 837
    const/16 v2, 0x1f4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",Abnormal call end. sip error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 838
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/epdg/EpdgHandler;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->getStatus()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->RELEASED:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->getValue()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;->NOT_EPDG_MODULE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    .line 839
    invoke-virtual {v5}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;->getValue()I

    move-result v5

    sget-object v6, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    invoke-virtual {v6}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->getValue()I

    move-result v7

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    .line 840
    invoke-static {v6}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v8

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 841
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrp()I

    move-result v9

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 842
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrq()I

    move-result v10

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 843
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v11

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getCurrentRtpLossRate()I

    move-result v12

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 844
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v13

    iget-object v6, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v14

    .line 845
    invoke-static {}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getBatteryStatus()I

    move-result v15

    invoke-static {}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getBatteryChargeType()I

    move-result v16

    invoke-static {}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getBatteryVoltage()I

    move-result v17

    .line 838
    move/from16 v6, p2

    invoke-virtual/range {v2 .. v17}, Lcom/sec/epdg/BigData/EpdgBigDataController;->sendVowifiCallDropEvent(IIIIIIIIZIIIIII)V

    .line 848
    :cond_2
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateTimeMaintaingIWLAN()V

    .line 852
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateCallEndTime(J)V

    .line 853
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateAllCallInfoSharedPreference()V

    .line 854
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->sendEpdgDailyReportEvent()V

    move-object/from16 v1, p1

    goto :goto_2

    .line 857
    :cond_4
    move v1, v15

    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getCurrentCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v2, v3, :cond_5

    .line 858
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateCallStatus(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V

    .line 859
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateCallStartTime(J)V

    .line 860
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 861
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateL2WHandoverStartTime(J)V

    goto :goto_2

    .line 857
    :cond_5
    move-object/from16 v1, p1

    .line 865
    :cond_6
    :goto_2
    return-void
.end method

.method private reportHandoverResultToBigdata(Ljava/lang/String;I)V
    .locals 10
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rat"    # I

    .line 474
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 475
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    const/16 v0, 0xff

    const/4 v1, 0x1

    if-eq p2, v0, :cond_3

    const/16 v0, 0x30

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    const-string v2, "W2L_HANDOVER_OK_COUNT"

    invoke-virtual {v0, v2, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 486
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getHandoverTriggerReasonForEPDI()I

    move-result v0

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 487
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    const-string v2, "W2L_HO_BY_WEAK_SIGNAL"

    invoke-virtual {v0, v2, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getHandoverTriggerReasonForEPDI()I

    move-result v0

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->HIGH_RTP_LOSS_RATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 489
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    const-string v2, "W2L_HO_BY_RTP_LOSS"

    invoke-virtual {v0, v2, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 491
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    .line 493
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateCountOfW2LHandover()V

    .line 494
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateTimeMaintaingIWLAN()V

    goto :goto_2

    .line 478
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    const-string v2, "W2L_HANDOVER_FAIL_COUNT"

    invoke-virtual {v0, v2, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 479
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->W2L_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->getValue()I

    move-result v2

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 480
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getHandoverTriggerReasonForEPDI()I

    move-result v3

    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->ERROR_BY_MODEM:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 481
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->getValue()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->W2L_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 479
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/epdg/EpdgHandler;->sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V

    .line 498
    :cond_4
    :goto_2
    return-void
.end method

.method private retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    move-result v0

    return v0
.end method

.method private retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private sendCallStateChangeEventToDpdHandler(Z)V
    .locals 4
    .param p1, "CallStatusActive"    # Z

    .line 937
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 938
    .local v0, "cid":I
    if-gez v0, :cond_0

    .line 939
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "invalid cid for ims"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getDPDHandler()Landroid/os/Handler;

    move-result-object v1

    .line 942
    .local v1, "dpdHdr":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 943
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 944
    .local v2, "msgToDPD":Landroid/os/Message;
    const/16 v3, 0x16

    iput v3, v2, Landroid/os/Message;->what:I

    .line 945
    if-eqz p1, :cond_1

    .line 946
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 948
    :cond_1
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 950
    :goto_0
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 951
    .end local v2    # "msgToDPD":Landroid/os/Message;
    goto :goto_1

    .line 952
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "DPD handler is NULL"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .end local v1    # "dpdHdr":Landroid/os/Handler;
    :goto_1
    return-void
.end method

.method private sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V
    .locals 24
    .param p1, "handoverDirection"    # I
    .param p2, "handoverTriggerReason"    # I
    .param p3, "handoverFailReason"    # I
    .param p4, "throttleStateReason"    # I
    .param p5, "ikeError"    # I
    .param p6, "disconnectionReason"    # I
    .param p7, "dnsQueryFail"    # I
    .param p8, "sendReason"    # Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .line 365
    .local v1, "currentWifiRssi":I
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrp()I

    move-result v18

    .line 366
    .local v18, "currentLteRsrp":I
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrq()I

    move-result v19

    .line 367
    .local v19, "CurrentLteRsrq":I
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v20

    .line 368
    .local v20, "isImsCallConnected":Z
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getCurrentRtpLossRate()I

    move-result v21

    .line 369
    .local v21, "currentRtpLossRate":I
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v22

    .line 370
    .local v22, "vowifiSetting":I
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v23

    .line 371
    .local v23, "wifiPrefSetting":I
    iget-object v2, v0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move v11, v1

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v22

    move/from16 v17, v23

    invoke-virtual/range {v2 .. v17}, Lcom/sec/epdg/BigData/EpdgBigDataController;->sendEpdgFailInformationEvent(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;IIIZIII)V

    .line 375
    return-void
.end method

.method private sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "destMsg"    # Landroid/os/Message;

    .line 123
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 124
    .local v0, "cid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 125
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 126
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 129
    :cond_0
    return-void
.end method

.method private sendWifiDelayRequest(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 217
    if-nez p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setDisconnectRequired(Z)V

    .line 220
    :cond_0
    const/16 v0, 0xfa0

    .line 221
    .local v0, "delayTime":I
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const/16 v0, 0x3e8

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiCommand;->sendWifiDelayRequest(Landroid/content/Context;ZI)V

    .line 225
    return-void
.end method

.method private setMDN()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getSubId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "lineNum":Ljava/lang/String;
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "imsi":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMDN: lineNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "vowifi_mdn"

    const-string v3, ""

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3, v2, v0, v4}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3, v2, v1, v4}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized startTEPDGLTETimerIfRequired()V
    .locals 3

    monitor-enter p0

    .line 228
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 230
    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 231
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 232
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto/16 :goto_0

    .line 237
    .end local p0    # "this":Lcom/sec/epdg/EpdgHandler;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 238
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 241
    :cond_1
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 242
    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Telkom_ZA"

    const-string v2, "Vodafone_NL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 243
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "Skip TEPDGLTE timer during Call."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 248
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateCarrierConfigurableDB(IIIII)V
    .locals 7
    .param p1, "lterovein"    # I
    .param p2, "lteroveout"    # I
    .param p3, "wifirovein"    # I
    .param p4, "wifiroveout"    # I
    .param p5, "pingpong"    # I

    .line 2046
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(I)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v0

    .line 2047
    .local v0, "mWriter":Lcom/sec/epdg/EpdgSettingsWriter;
    const/4 v1, 0x0

    .line 2048
    .local v1, "needProfileUpdate":Z
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    .line 2049
    .local v2, "epdgSettings":Lcom/sec/epdg/EpdgSettings;
    if-eqz v2, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2054
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveIn()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_1

    .line 2055
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "updateCarrierConfigurableDB : lte rove in."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    mul-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "threshold4grovein"

    invoke-virtual {v0, v4, v3}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smartwifirsrp3"

    invoke-virtual {v0, v4, v3}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const/4 v1, 0x1

    .line 2061
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveOut()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_2

    .line 2062
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "updateCarrierConfigurableDB : lte rove out."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    mul-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "threshold4groveout"

    invoke-virtual {v0, v4, v3}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smartwifirsrp1"

    invoke-virtual {v0, v4, v3}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const/4 v1, 0x1

    .line 2068
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v3

    if-eq p3, v3, :cond_3

    .line 2069
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "updateCarrierConfigurableDB : wifi rove in."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smartwifirssia"

    invoke-virtual {v0, v4, v3}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const/4 v1, 0x1

    .line 2074
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v3

    if-eq p4, v3, :cond_4

    .line 2075
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "updateCarrierConfigurableDB : wifi rove out."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smartwifirssib"

    invoke-virtual {v0, v4, v3}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const/4 v1, 0x1

    .line 2079
    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v3

    .line 2080
    .local v3, "smartWifiProfiler":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2081
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 2082
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    .line 2084
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v4

    if-eq p5, v4, :cond_6

    .line 2085
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v5, "updateCarrierConfigurableDB : pingpong timer."

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sysseltimer"

    invoke-virtual {v0, v5, v4}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tepdgltetimer"

    invoke-virtual {v0, v5, v4}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v4

    .line 2089
    .local v4, "epdgTimer":Lcom/sec/epdg/EpdgTimers;
    if-eqz v4, :cond_6

    .line 2090
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v6, "updateCarrierConfigurableDB : set timer value."

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5, p5}, Lcom/sec/epdg/EpdgTimers;->setTimerValue(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;I)V

    .line 2092
    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5, p5}, Lcom/sec/epdg/EpdgTimers;->setTimerValue(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;I)V

    .line 2095
    .end local v4    # "epdgTimer":Lcom/sec/epdg/EpdgTimers;
    :cond_6
    return-void

    .line 2050
    .end local v3    # "smartWifiProfiler":Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "updateCarrierConfigurableDB : mEpdgRead is null."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    return-void
.end method


# virtual methods
.method protected handleIilSsacInfoUpdate(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1265
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1266
    .local v0, "asyncRes":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/DataType/SsacInfo;

    .line 1268
    .local v1, "ssacInfo":Lcom/sec/epdg/DataType/SsacInfo;
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/SsacInfo;->getVoiceFactor()I

    move-result v2

    .line 1269
    .local v2, "voiceFactor":I
    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 1270
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "Voice factor is 100. Ignore it"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 1272
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v6, "Voice call is barred 100% using SSAC"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getIsSsacVoiceEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1274
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v3}, Lcom/sec/epdg/EpdgSubScription;->setIsSsacVoiceEnabled(Z)V

    .line 1275
    iget-object v6, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/epdg/EpdgSubScription;->isRegistrationRequired(ZZZZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1276
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v6, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 1278
    :cond_1
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v3, v4}, Lcom/sec/epdg/EpdgSubScription;->MoveToBasedOnVopsOrSsac(IZ)V

    .line 1279
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1280
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->updateNetRegist()V

    goto :goto_0

    .line 1284
    :cond_2
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getIsSsacVoiceEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1285
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v4}, Lcom/sec/epdg/EpdgSubScription;->setIsSsacVoiceEnabled(Z)V

    .line 1286
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v4, v3}, Lcom/sec/epdg/EpdgSubScription;->MoveToBasedOnVopsOrSsac(IZ)V

    .line 1287
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1288
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->updateNetRegist()V

    .line 1292
    :cond_3
    :goto_0
    return-void
.end method

.method protected handleIkeError(Ljava/lang/String;ILcom/sec/epdg/ErrorCode/IWlanError;)V
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "networkType"    # I
    .param p3, "Error"    # Lcom/sec/epdg/ErrorCode/IWlanError;

    .line 1166
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "RJIL_IN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->getThrottleCount(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1168
    .local v0, "count":I
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 1169
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "Sending intent to disable wifi calling."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1171
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.epdg.DISABLE_WIFI_CALLING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    const-string v5, "phoneId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1173
    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1174
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v4, v5, v1, v2}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 1175
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4, p1}, Lcom/sec/epdg/EpdgSubScription;->resetThrottleState(Ljava/lang/String;)V

    .line 1179
    .end local v0    # "count":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v3, "Telenor_SE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1180
    const/16 v0, 0xb

    if-ne p2, v0, :cond_2

    .line 1181
    invoke-virtual {p3}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1182
    invoke-virtual {p3}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v0

    const/16 v3, 0x3ff7

    if-eq v0, v3, :cond_1

    .line 1183
    invoke-virtual {p3}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v0

    const/16 v3, 0x2328

    if-ne v0, v3, :cond_2

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "disable VoWiFi setting by the private reject"

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0, v3, v1, v2}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 1186
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->resetThrottleState(Ljava/lang/String;)V

    .line 1191
    :cond_2
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v3, "Vodafone_DE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v3, 0x18

    if-eqz v0, :cond_3

    .line 1192
    invoke-virtual {p3}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1193
    invoke-virtual {p3}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1194
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v4, "Vd2 req. Handling auth fail."

    invoke-static {v0, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->getPermanentThrottleErrorCount(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 1196
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0, v4, v1, v2}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 1197
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v0, v4, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    .line 1202
    :cond_3
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTelus()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1203
    invoke-virtual {p3}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1204
    invoke-virtual {p3}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 1205
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0, v3, v1, v2}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 1206
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->resetThrottleState(Ljava/lang/String;)V

    .line 1209
    :cond_4
    return-void
.end method

.method protected handleLteMeasurementTimerExpired()V
    .locals 4

    .line 1367
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1368
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1369
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getCellularWifiProfilingChecker()Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->isLteMeasurementRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getLteMeasurementCnt()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->setLteMeasurementCnt(I)V

    .line 1371
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMER_TEPDG_LTEMEASUREMENT_EXPIRED : need to check current condition for W2L handover ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1372
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getLteMeasurementCnt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getLteMeasurementMaxCnt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1371
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getLteMeasurementCnt()I

    move-result v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getLteMeasurementMaxCnt()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1375
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTEMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1376
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 1377
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setLteMeasurementCnt(I)V

    .line 1380
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "EPDI (STRONG_LTE_SIGNAL)"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTEMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1384
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTEMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setLteMeasurementCnt(I)V

    .line 1389
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTEMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1391
    :cond_2
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 1534
    move-object v10, p0

    move-object/from16 v11, p1

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    if-eqz v0, :cond_0

    .line 1535
    return-void

    .line 1537
    :cond_0
    iget v12, v11, Landroid/os/Message;->arg1:I

    .line 1538
    .local v12, "cid":I
    const/4 v13, 0x0

    .line 1539
    .local v13, "apnType":Ljava/lang/String;
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/sec/epdg/Constants/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget v0, v11, Landroid/os/Message;->what:I

    const/16 v1, 0x25

    if-eq v0, v1, :cond_13

    const/16 v1, 0x26

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    .line 1989
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RIL->EpdgSubScription]Ignored event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1650
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->handlePeriodicDnsTimerExpired()V

    .line 1651
    goto/16 :goto_5

    .line 1828
    :pswitch_1
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->updateNetRegist()V

    .line 1829
    goto/16 :goto_5

    .line 1761
    :pswitch_2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1762
    .local v0, "ipmeStatus":Z
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->handleIpmeStatusChange(Z)V

    .line 1763
    goto/16 :goto_5

    .line 1740
    .end local v0    # "ipmeStatus":Z
    :pswitch_3
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getCurrentWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 1741
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->checkAndUpdateWifiAvailability()V

    .line 1742
    goto/16 :goto_5

    .line 1824
    :pswitch_4
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->initAfterimsReady()V

    .line 1825
    goto/16 :goto_5

    .line 1818
    :pswitch_5
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-ne v0, v14, :cond_1

    move v2, v14

    :cond_1
    move v0, v2

    .line 1819
    .local v0, "status":Z
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EPDG_WFCPROFILE_READ as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->changeApBlocking(Z)V

    .line 1821
    goto/16 :goto_5

    .line 1814
    .end local v0    # "status":Z
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleIilSsacInfoUpdate(Landroid/os/Message;)V

    .line 1815
    goto/16 :goto_5

    .line 1985
    :sswitch_0
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->syncSettingsDBwithEpdgDB(Landroid/os/Message;)V

    .line 1986
    goto/16 :goto_5

    .line 1976
    :sswitch_1
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1977
    .local v0, "pduid":I
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->setPduSessionID(I)V

    .line 1978
    goto/16 :goto_5

    .line 1623
    .end local v0    # "pduid":I
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleHandoverStart(Landroid/os/Message;)V

    .line 1624
    goto/16 :goto_5

    .line 1971
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->handleDeviceConfigUpdate()V

    .line 1972
    goto/16 :goto_5

    .line 1961
    :sswitch_4
    iget v0, v10, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1962
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1963
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataReg()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1964
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "StartWifiProfiling due to Mobile is not available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    goto/16 :goto_5

    .line 1753
    :sswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleCallStatusChangeForDualIms(Landroid/os/Message;)V

    .line 1754
    goto/16 :goto_5

    .line 1604
    :sswitch_6
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1605
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/os/AsyncResult;

    if-eqz v1, :cond_2

    .line 1606
    move-object v1, v0

    check-cast v1, Landroid/os/AsyncResult;

    .line 1607
    .local v1, "asyncRes":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    .line 1608
    .local v2, "connReq":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    invoke-virtual {v2}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->getCid()I

    move-result v12

    .line 1610
    .end local v1    # "asyncRes":Landroid/os/AsyncResult;
    .end local v2    # "connReq":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    :cond_2
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTERNAL_ATTACH_REQ for cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    if-lez v12, :cond_14

    .line 1612
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1613
    invoke-virtual {v1, v12}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1612
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1614
    .local v1, "msgtoHandoverSM":Landroid/os/Message;
    const/16 v2, 0x3e8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1615
    iput v12, v1, Landroid/os/Message;->arg1:I

    .line 1616
    iput v14, v1, Landroid/os/Message;->arg2:I

    .line 1617
    iget-object v2, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1618
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1619
    .end local v1    # "msgtoHandoverSM":Landroid/os/Message;
    goto/16 :goto_5

    .line 1981
    .end local v0    # "obj":Ljava/lang/Object;
    :sswitch_7
    iget v0, v11, Landroid/os/Message;->arg1:I

    iget v1, v11, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToTestApp(II)V

    .line 1982
    goto/16 :goto_5

    .line 1951
    :sswitch_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1952
    .local v0, "simMobility":Z
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v1

    if-eq v1, v0, :cond_14

    .line 1953
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->setSimMobilityStatus(Z)V

    .line 1954
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    .line 1955
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    iget v2, v10, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 1956
    nop

    .line 1955
    const-string v3, "SIM_MOBILITY_CHANGE"

    invoke-static {v1, v2, v3, v0}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 1720
    .end local v0    # "simMobility":Z
    :sswitch_9
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->startTimersIfNeeded()V

    .line 1721
    goto/16 :goto_5

    .line 1832
    :sswitch_a
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-boolean v0, v0, Lcom/sec/epdg/EpdgSubScription;->waitingForCallend:Z

    if-eqz v0, :cond_3

    .line 1833
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "RELEASECALL_EXFIRED. Trigger W2L HO."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iput-boolean v2, v0, Lcom/sec/epdg/EpdgSubScription;->waitingForCallend:Z

    .line 1836
    :try_start_0
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v14}, Lcom/sec/epdg/EpdgSubScription;->startHandOverWifiToLte(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W2L handover failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HANDOFF]"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto/16 :goto_5

    .line 1841
    :cond_3
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "RELEASECALL_EXFIRED. ignore."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    goto/16 :goto_5

    .line 1846
    :sswitch_b
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setHasEspLoss(Z)V

    .line 1847
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ESP_SEQ_CHECK as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getHasEspLoss()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    goto/16 :goto_5

    .line 1938
    :sswitch_c
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1941
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->L2W_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->getValue()I

    move-result v2

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1942
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getHandoverTriggerReasonForEPDI()I

    move-result v3

    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->THROTTLE_STATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 1943
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->getValue()I

    move-result v4

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1944
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getLastestIkeError()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->THROTTLING_STATE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 1941
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/epdg/EpdgHandler;->sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V

    goto/16 :goto_5

    .line 1926
    :sswitch_d
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1928
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->L2W_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->getValue()I

    move-result v2

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1929
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getHandoverTriggerReasonForEPDI()I

    move-result v3

    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->NO_RESPONSE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 1930
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->getValue()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->L2W_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 1928
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/epdg/EpdgHandler;->sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V

    .line 1932
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    const-string v1, "L2W_HANDOVER_FAIL_COUNT"

    invoke-virtual {v0, v1, v14, v14}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    goto/16 :goto_5

    .line 1916
    :sswitch_e
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1917
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    const-string v1, "L2W_HANDOVER_OK_COUNT"

    invoke-virtual {v0, v1, v14, v14}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1918
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getCurrentTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateL2WHandoverStartTime(J)V

    .line 1919
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateCountOfL2WHandover()V

    .line 1921
    :cond_4
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    .line 1922
    goto/16 :goto_5

    .line 1724
    :sswitch_f
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsRoamingVoiceNetworkAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->sendRoamingVoiceNetworkAvailability(Z)V

    .line 1725
    goto/16 :goto_5

    .line 1703
    :sswitch_10
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1704
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->onSystemSelectTimerFinish()V

    goto/16 :goto_5

    .line 1653
    :sswitch_11
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->handleScreenOn()V

    .line 1654
    goto/16 :goto_5

    .line 1656
    :sswitch_12
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->handleScreenOff()V

    .line 1657
    goto/16 :goto_5

    .line 1714
    :sswitch_13
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 1715
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START_TEPDG_LTE_TIMER: apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->startTEPDGLTETimerIfRequired()V

    .line 1717
    goto/16 :goto_5

    .line 1897
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgHandler;->handleWifiMeasurementTimerExpired()V

    .line 1898
    goto/16 :goto_5

    .line 1893
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgHandler;->handleLteMeasurementTimerExpired()V

    .line 1894
    goto/16 :goto_5

    .line 1859
    :sswitch_16
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v12}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getDPDHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1860
    .local v0, "dpdHdr":Landroid/os/Handler;
    if-eqz v0, :cond_5

    .line 1861
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1862
    .local v1, "msgToDPD":Landroid/os/Message;
    const/16 v2, 0x15

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1863
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1864
    .end local v1    # "msgToDPD":Landroid/os/Message;
    goto/16 :goto_5

    .line 1865
    :cond_5
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "DPD handler is NULL"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    goto/16 :goto_5

    .line 1855
    .end local v0    # "dpdHdr":Landroid/os/Handler;
    :sswitch_17
    invoke-virtual/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleQualityCheckResultW2L(Landroid/os/Message;)V

    .line 1856
    goto/16 :goto_5

    .line 1851
    :sswitch_18
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v11}, Lcom/sec/epdg/EpdgSubScription;->handleRtpPacketLoss(Landroid/os/Message;)V

    .line 1852
    goto/16 :goto_5

    .line 1889
    :sswitch_19
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->updateWifiRssiToMaintainIWlan()V

    .line 1890
    goto/16 :goto_5

    .line 1883
    :sswitch_1a
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isCurrentWeakWifiSignal()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1884
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 1874
    :sswitch_1b
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1875
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1876
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    goto/16 :goto_5

    .line 1878
    :cond_6
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCALLPOPUP:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 1880
    goto/16 :goto_5

    .line 1870
    :sswitch_1c
    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgHandler;->sendWifiDelayRequest(Z)V

    .line 1871
    goto/16 :goto_5

    .line 1807
    :sswitch_1d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v13, v0

    .line 1808
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1809
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    iget v1, v11, Landroid/os/Message;->arg1:I

    if-ne v1, v14, :cond_8

    move v2, v14

    :cond_8
    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    goto/16 :goto_5

    .line 1801
    :pswitch_7
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received VOPS_STATUS_CHANGED as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_9

    move v2, v14

    :cond_9
    move v0, v2

    .line 1803
    .local v0, "vopsEnabled":Z
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/NetworkChangeController;->onVopsStatusChanged(Z)V

    .line 1804
    goto/16 :goto_5

    .line 1902
    .end local v0    # "vopsEnabled":Z
    :pswitch_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_a
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v13, v0

    .line 1903
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v13}, Lcom/sec/epdg/EpdgSubScription;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    .line 1904
    .local v0, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PERIODIC_DPD_TIMER_EXPIRED getSMForApnType apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    if-eqz v0, :cond_14

    .line 1906
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1907
    .local v1, "sendDpd":Landroid/os/Message;
    if-eqz v1, :cond_b

    .line 1908
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1909
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1911
    .end local v1    # "sendDpd":Landroid/os/Message;
    :cond_b
    goto/16 :goto_5

    .line 1793
    .end local v0    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleVowifiProvisioningChanged(Landroid/os/Message;)V

    .line 1794
    goto/16 :goto_5

    .line 1770
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleVolteProvisioningChanged(Landroid/os/Message;)V

    .line 1771
    goto/16 :goto_5

    .line 1797
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleImsRegStatusChange(Landroid/os/Message;)V

    .line 1798
    goto/16 :goto_5

    .line 1766
    :pswitch_c
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v11}, Lcom/sec/epdg/EpdgSubScription;->handleVolteSettingChanged(Landroid/os/Message;)V

    .line 1767
    goto/16 :goto_5

    .line 1757
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleCallStatusChange(Landroid/os/Message;)V

    .line 1758
    goto/16 :goto_5

    .line 1745
    :pswitch_e
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 1746
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 1747
    .local v0, "curCallStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    if-eqz v0, :cond_14

    .line 1748
    iput-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    goto/16 :goto_5

    .line 1734
    .end local v0    # "curCallStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    :pswitch_f
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 1735
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1736
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 1737
    goto/16 :goto_5

    .line 1728
    :pswitch_10
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 1729
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgHandler;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    .line 1730
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 1731
    goto/16 :goto_5

    .line 1709
    :pswitch_11
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 1710
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgHandler;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1711
    goto/16 :goto_5

    .line 1693
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->onSystemSelectTimerFinish()V

    .line 1694
    goto/16 :goto_5

    .line 1787
    :pswitch_13
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1788
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->onWifiConnected()V

    goto/16 :goto_5

    .line 1775
    :pswitch_14
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "EPDI (DNS_QUERY_FAIL)"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const/16 v0, 0x64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v10, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DNS_QUERY_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1777
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    .line 1778
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->getValue()I

    move-result v8

    sget-object v9, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 1777
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/epdg/EpdgHandler;->sendEpdgFailInformationToBigdata(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;)V

    .line 1780
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getFqdnRetryCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_14

    .line 1781
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->removeMessages(I)V

    .line 1782
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/epdg/EpdgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 1562
    :pswitch_15
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->handleRilEpdgStatusQuery()V

    .line 1563
    goto/16 :goto_5

    .line 1687
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleDnsQueryRequest(Landroid/os/Message;)V

    .line 1688
    goto/16 :goto_5

    .line 1555
    :pswitch_17
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v12}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    .line 1556
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1555
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1557
    .local v0, "msgToHandoverSM":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1558
    invoke-direct {p0, v11, v0}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    .line 1559
    iget v1, v11, Landroid/os/Message;->what:I

    invoke-virtual {p0, v12, v1}, Lcom/sec/epdg/EpdgHandler;->sendIpsecConnResultToTestApp(II)V

    .line 1560
    goto/16 :goto_5

    .line 1552
    .end local v0    # "msgToHandoverSM":Landroid/os/Message;
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleIpsecConnectionFailure(Landroid/os/Message;)V

    .line 1553
    goto/16 :goto_5

    .line 1548
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleIpsecDisconnected(Landroid/os/Message;)V

    .line 1549
    goto/16 :goto_5

    .line 1543
    :pswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleIpsecConnected(Landroid/os/Message;)V

    .line 1544
    goto/16 :goto_5

    .line 1571
    :pswitch_1b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1572
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_c

    instance-of v2, v0, Landroid/os/AsyncResult;

    if-eqz v2, :cond_c

    .line 1573
    move-object v2, v0

    check-cast v2, Landroid/os/AsyncResult;

    .line 1574
    .local v2, "asyncRes":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    .line 1576
    .local v3, "connReq":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    invoke-virtual {v3}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->getCid()I

    move-result v12

    .line 1588
    .end local v2    # "asyncRes":Landroid/os/AsyncResult;
    .end local v3    # "connReq":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    :cond_c
    if-lez v12, :cond_d

    .line 1589
    iget-object v2, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1590
    invoke-virtual {v2, v12}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1589
    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1591
    .local v2, "msgtoHandoverSM":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->what:I

    .line 1592
    iput v12, v2, Landroid/os/Message;->arg1:I

    .line 1594
    iput v14, v2, Landroid/os/Message;->arg2:I

    .line 1595
    iget-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1596
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1597
    .end local v2    # "msgtoHandoverSM":Landroid/os/Message;
    goto/16 :goto_5

    .line 1598
    :cond_d
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v2, "[RIL->EpdgSubScription]Event received for invalid cid neglect it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    goto/16 :goto_5

    .line 1626
    .end local v0    # "obj":Ljava/lang/Object;
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleRilHandoverResult(Landroid/os/Message;)V

    .line 1627
    goto/16 :goto_5

    .line 1568
    :pswitch_1d
    :sswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleIpsecDisconnectRequest(Landroid/os/Message;)V

    .line 1569
    goto/16 :goto_5

    .line 1629
    :pswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleSmEnableEpdgFailure(Landroid/os/Message;)V

    .line 1630
    goto/16 :goto_5

    .line 1668
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleStateMachineTriggerHo(Landroid/os/Message;)V

    .line 1669
    goto/16 :goto_5

    .line 1644
    :pswitch_20
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "DATA_RETRY_TIMER_EXPIRED event received."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 1647
    .local v0, "args":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/EpdgHandler;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    goto/16 :goto_5

    .line 1632
    .end local v0    # "args":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_21
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 1633
    .local v0, "needLteTimer":I
    iget-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 1634
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETRY_L2W_IF_REQUIRED event received for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " needLteTimer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    if-ne v0, v14, :cond_e

    const-string v3, "true"

    goto :goto_3

    :cond_e
    const-string v3, "false"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1634
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    if-ne v0, v14, :cond_f

    .line 1637
    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-direct {p0, v13, v1}, Lcom/sec/epdg/EpdgHandler;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto :goto_4

    .line 1639
    :cond_f
    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-direct {p0, v13, v1}, Lcom/sec/epdg/EpdgHandler;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    .line 1642
    .end local v0    # "needLteTimer":I
    :goto_4
    goto :goto_5

    .line 1672
    :pswitch_22
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-ne v0, v14, :cond_10

    move v2, v14

    :cond_10
    move v0, v2

    .line 1673
    .local v0, "result":Z
    iget-object v2, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 1674
    iget-object v2, v10, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying registrants, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    iget v2, v11, Landroid/os/Message;->arg2:I

    if-ne v2, v14, :cond_11

    .line 1676
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v1

    iget-object v2, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1677
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v2

    .line 1676
    invoke-virtual {v1, v0, v13, v2}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyL2WHandoverResult(ZLjava/lang/String;Z)V

    goto :goto_5

    .line 1678
    :cond_11
    iget v2, v11, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_14

    .line 1679
    iget-object v1, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v1

    invoke-virtual {v1, v0, v13}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyW2LHandoverResult(ZLjava/lang/String;)V

    goto :goto_5

    .line 1684
    .end local v0    # "result":Z
    :pswitch_23
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->handleEpdgSettingsReadEvent()V

    .line 1685
    goto :goto_5

    .line 1690
    :pswitch_24
    iget-object v0, v10, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->handleMapconChange()V

    .line 1691
    goto :goto_5

    .line 1664
    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleSmUpdateConnStatus(Landroid/os/Message;)V

    .line 1665
    goto :goto_5

    .line 1661
    :cond_13
    :pswitch_25
    :sswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/sec/epdg/EpdgHandler;->handleSendEpdgNotAvailable(Landroid/os/Message;)V

    .line 1662
    nop

    .line 1992
    :cond_14
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x29
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x42
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_1d
        0x54 -> :sswitch_1c
        0x55 -> :sswitch_1b
        0x56 -> :sswitch_1a
        0x57 -> :sswitch_19
        0x58 -> :sswitch_18
        0x59 -> :sswitch_17
        0x5a -> :sswitch_16
        0x5b -> :sswitch_15
        0x5c -> :sswitch_14
        0x5d -> :sswitch_13
        0x5e -> :sswitch_12
        0x5f -> :sswitch_11
        0x60 -> :sswitch_10
        0x61 -> :sswitch_f
        0x62 -> :sswitch_e
        0x63 -> :sswitch_d
        0x64 -> :sswitch_c
        0x65 -> :sswitch_b
        0x66 -> :sswitch_1f
        0x67 -> :sswitch_a
        0x68 -> :sswitch_9
        0x69 -> :sswitch_8
        0x6b -> :sswitch_7
        0x3e8 -> :sswitch_6
        0x3e9 -> :sswitch_1e
        0x3ea -> :sswitch_5
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_3
        0x3ef -> :sswitch_2
        0x3f0 -> :sswitch_1
        0x3f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x4a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x50
        :pswitch_1
        :pswitch_25
        :pswitch_0
    .end packed-switch
.end method

.method protected handleQualityCheckResultW2L(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1295
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "[OH_CRITERIA]"

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1296
    const-string v0, "low quality triggers W2L if possible"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 1298
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WLAN_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 1299
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    const-string v1, ",HIGH_RTP_LOSS "

    const/16 v3, 0x1f4

    const-string v4, "DPD_NO_RESPONSE_COUNT"

    const-string v5, "EPDI (HIGH_RTP_LOSS_RATE)"

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1301
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1302
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getIsLteInHysteresis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    sget-object v5, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->HIGH_RTP_LOSS_RATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v5}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    .line 1306
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getCurrentRtpLossRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1311
    :cond_1
    iget v0, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v6, "RTP Loss case, do not run TEPDG Timer at this time"

    invoke-static {v0, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v6, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v6}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 1314
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->setIsNotRequiredTimer(Z)V

    .line 1316
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setW2LHandoverForWeakWifiSignal(Z)V

    .line 1317
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->increaseRtpHandoverCount()V

    .line 1320
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    sget-object v5, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->HIGH_RTP_LOSS_RATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v5}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    .line 1322
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getCurrentRtpLossRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1327
    :cond_3
    const-string v0, "latency is not bad. no W2L"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1331
    .local v0, "mDpdLatency":I
    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getCurrentRtpLossRate()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgUtils;->checkRtpLossRateLevel(I)I

    move-result v1

    .line 1332
    .local v1, "mRtpLossRateLevel":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRPT : mDpdLatency ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getCurrentRtpLossRate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ) / mRtpLossRateLevel ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "DPD_RESPONSE_COUNT"

    invoke-virtual {v3, v4, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1334
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "COUNT_DPD_LATENCY_LEVEL_ALL"

    invoke-virtual {v3, v4, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1335
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "TIME_DPD_LATENCY_LEVEL_ALL"

    invoke-virtual {v3, v4, v0, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1337
    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    goto :goto_0

    .line 1354
    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "COUNT_DPD_LATENCY_LEVEL_4"

    invoke-virtual {v3, v4, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1355
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "TIME_DPD_LATENCY_LEVEL_4"

    invoke-virtual {v3, v4, v0, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1356
    goto :goto_0

    .line 1349
    :cond_5
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "COUNT_DPD_LATENCY_LEVEL_3"

    invoke-virtual {v3, v4, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1350
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "TIME_DPD_LATENCY_LEVEL_3"

    invoke-virtual {v3, v4, v0, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1351
    goto :goto_0

    .line 1344
    :cond_6
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "COUNT_DPD_LATENCY_LEVEL_2"

    invoke-virtual {v3, v4, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1345
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "TIME_DPD_LATENCY_LEVEL_2"

    invoke-virtual {v3, v4, v0, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1346
    goto :goto_0

    .line 1339
    :cond_7
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "COUNT_DPD_LATENCY_LEVEL_1"

    invoke-virtual {v3, v4, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1340
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v3

    const-string v4, "TIME_DPD_LATENCY_LEVEL_1"

    invoke-virtual {v3, v4, v0, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1341
    nop

    .line 1363
    .end local v0    # "mDpdLatency":I
    .end local v1    # "mRtpLossRateLevel":I
    :cond_8
    :goto_0
    return-void
.end method

.method protected handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .line 1227
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1228
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    .line 1229
    .local v0, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-nez v0, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid SM found for apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    return-void

    .line 1234
    :cond_0
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1235
    .local v1, "dataRetryExpired":Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 1236
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1239
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1241
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRetryTimerExpired: Unable to obtain message for SM with apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :goto_0
    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorWind()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVideoTron()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1246
    :cond_2
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->triggerPendingAttachReq()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1247
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v3, "trigger pending attach req"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    return-void

    .line 1251
    :cond_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgHandler;->onSystemSelectTimerFinish()V

    .line 1257
    .end local v0    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "dataRetryExpired":Landroid/os/Message;
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1258
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/EpdgHandler;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto :goto_1

    .line 1260
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "Do not retry L2W handover. SSID changed: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :goto_1
    return-void
.end method

.method protected handleWifiMeasurementTimerExpired()V
    .locals 4

    .line 1395
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1396
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1397
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getCellularWifiProfilingChecker()Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->isWifiMeasurementRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiMeasurementCnt()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgSubScription;->setWifiMeasurementCnt(I)V

    .line 1399
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMER_TEPDG_WIFIMEASUREMENT_EXPIRED : Need to check current condition for L2W handover ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1400
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getWifiMeasurementCnt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getWifiMeasurementMaxCnt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1399
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getWifiMeasurementCnt()I

    move-result v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getWifiMeasurementMaxCnt()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1403
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1404
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOn:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandler;->post(Ljava/lang/Runnable;)Z

    .line 1405
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setWifiMeasurementCnt(I)V

    .line 1408
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    const-string v1, "EPDI (STRONG_WIFI_SIGNAL)"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_0

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1412
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setWifiMeasurementCnt(I)V

    .line 1417
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1419
    :cond_2
    :goto_0
    return-void
.end method

.method public isCallDropReason(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .line 787
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1e6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x25b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 788
    const/4 v0, 0x1

    return v0

    .line 790
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected sendIpsecConnResultToTestApp(II)V
    .locals 11
    .param p1, "cid"    # I
    .param p2, "event"    # I

    .line 132
    const/4 v0, 0x0

    .local v0, "apnType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 133
    .local v1, "ipsecEvent":Ljava/lang/String;
    const/4 v2, -0x1

    .line 134
    .local v2, "networkType":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3, p1}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    .line 137
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    if-eqz v0, :cond_2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p2}, Lcom/sec/epdg/DataType/IWlanEnum;->toTestAppEventStatus(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 141
    :cond_2
    :goto_0
    const-string v1, "Unknown"

    .line 145
    :goto_1
    const-string v3, "ipsecevent"

    const-string v4, "phoneId"

    const-string v5, "networkType"

    if-eqz v2, :cond_8

    const/4 v6, 0x2

    const-string v7, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    const-string v8, "xcap"

    const-string v9, "mms"

    const-string v10, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    if-eq v2, v6, :cond_7

    const/16 v6, 0xf

    if-eq v2, v6, :cond_6

    const/16 v6, 0x1b

    if-eq v2, v6, :cond_5

    const/16 v6, 0xb

    if-eq v2, v6, :cond_4

    const/16 v6, 0xc

    if-eq v2, v6, :cond_3

    goto/16 :goto_2

    .line 163
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v6, "infoToUiForApp":Landroid/content/Intent;
    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 169
    goto/16 :goto_2

    .line 155
    .end local v6    # "infoToUiForApp":Landroid/content/Intent;
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v6, "infoToUiForIms":Landroid/content/Intent;
    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 161
    goto/16 :goto_2

    .line 188
    .end local v6    # "infoToUiForIms":Landroid/content/Intent;
    :cond_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, "infoToUiForXcap":Landroid/content/Intent;
    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget v7, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    iget v7, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v7, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 194
    iget-object v7, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 195
    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 196
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v7, "infoToUiForMms1":Landroid/content/Intent;
    invoke-virtual {v7, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 202
    .end local v7    # "infoToUiForMms1":Landroid/content/Intent;
    goto/16 :goto_2

    .line 205
    .end local v6    # "infoToUiForXcap":Landroid/content/Intent;
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, "infoToUiForEpdn":Landroid/content/Intent;
    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget v5, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget v4, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v4, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 210
    goto :goto_2

    .line 171
    .end local v3    # "infoToUiForEpdn":Landroid/content/Intent;
    :cond_7
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v6, "infoToUiForMms":Landroid/content/Intent;
    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget v10, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v6, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget v10, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v10}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v10, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 177
    iget-object v10, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v10, v9}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 178
    invoke-virtual {v10, v8}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 179
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 181
    .local v7, "infoToUiForXcap1":Landroid/content/Intent;
    invoke-virtual {v7, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 185
    .end local v7    # "infoToUiForXcap1":Landroid/content/Intent;
    goto :goto_2

    .line 147
    .end local v6    # "infoToUiForMms":Landroid/content/Intent;
    :cond_8
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v6, "infoToUiForInternet":Landroid/content/Intent;
    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget v3, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v3, p0, Lcom/sec/epdg/EpdgHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 153
    nop

    .line 214
    .end local v6    # "infoToUiForInternet":Landroid/content/Intent;
    :cond_9
    :goto_2
    return-void
.end method

.method public stopCheckEntitlement()I
    .locals 5

    .line 109
    const/16 v0, 0x8

    .line 111
    .local v0, "profileId":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/EpdgHandler;->mPhoneId:I

    .line 112
    invoke-static {v1}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgEntitlement;->isProcessingEntitlement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCheckEntitlement() find SM for apnType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 115
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 116
    new-instance v2, Landroid/os/AsyncResult;

    new-instance v3, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    invoke-direct {v3, v0}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;-><init>(I)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 119
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
