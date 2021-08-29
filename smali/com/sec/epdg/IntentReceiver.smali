.class public Lcom/sec/epdg/IntentReceiver;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "IntentReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHdr:Landroid/os/Handler;

.field private mPhoneId:I

.field private mSubId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;II)V
    .locals 2
    .param p1, "hdr"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    .line 42
    iput-object p1, p0, Lcom/sec/epdg/IntentReceiver;->mHdr:Landroid/os/Handler;

    .line 43
    iput-object p2, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 45
    iput p4, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    .line 46
    iput p5, p0, Lcom/sec/epdg/IntentReceiver;->mSubId:I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgIntentReceiver]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected handleIntentAdbIpCallSettingChange(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 267
    const-string v0, "com.sec.commands.ipcall.setting"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, "settingType":I
    const-string v2, "com.sec.commands.ipcall.state"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, "newState":I
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIPCallAdbCommandReceiver: settingType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " newState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-ne v2, v1, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    .line 276
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    const-string v5, "vowifi_mdn"

    const-string v6, "0"

    invoke-static {v1, v5, v6, v3}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "mdn":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 283
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v3, v5, v2, v4}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    goto :goto_1

    .line 279
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v4, "mIPCallAdbCommandReceiver: Emergency address not validated with network. Please activate VoWifi first time from settings application"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v1    # "mdn":Ljava/lang/String;
    :cond_3
    :goto_1
    goto/16 :goto_b

    :cond_4
    const/4 v3, 0x1

    if-nez v0, :cond_9

    .line 288
    iget-object v5, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v6, v6, Lcom/sec/epdg/EpdgSubScription;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 289
    .local v5, "currentVolte":I
    iget-object v6, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIPCallAdbCommandReceiver: currentVolte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-ne v5, v1, :cond_5

    goto/16 :goto_a

    .line 292
    :cond_5
    if-nez v5, :cond_6

    :goto_2
    goto :goto_4

    :cond_6
    if-ne v2, v3, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v4

    :goto_3
    if-eqz v1, :cond_e

    goto :goto_2

    .line 294
    :goto_4
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v6, v6, Lcom/sec/epdg/EpdgSubScription;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    .line 295
    if-ne v2, v3, :cond_8

    goto :goto_5

    :cond_8
    move v4, v3

    .line 294
    :goto_5
    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    .line 298
    .end local v5    # "currentVolte":I
    :cond_9
    if-ne v0, v3, :cond_e

    .line 300
    iget-object v5, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "videocall_type"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 302
    .local v5, "currentVideo":I
    iget-object v7, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIPCallAdbCommandReceiver: currentVideo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-ne v5, v1, :cond_a

    goto :goto_b

    .line 305
    :cond_a
    if-nez v5, :cond_b

    :goto_6
    goto :goto_8

    :cond_b
    if-ne v2, v3, :cond_c

    move v1, v3

    goto :goto_7

    :cond_c
    move v1, v4

    :goto_7
    if-eqz v1, :cond_f

    goto :goto_6

    .line 307
    :goto_8
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 308
    if-ne v2, v3, :cond_d

    goto :goto_9

    :cond_d
    move v4, v3

    .line 307
    :goto_9
    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    .line 298
    .end local v5    # "currentVideo":I
    :cond_e
    :goto_a
    nop

    .line 312
    :cond_f
    :goto_b
    return-void
.end method

.method protected handleIntentBatteryChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 417
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setBatteryStatus(I)V

    .line 418
    const-string v0, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setBetteryChargeType(I)V

    .line 419
    const-string v0, "voltage"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setBatteryVoltage(I)V

    .line 422
    invoke-static {}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getBatteryChargeType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 423
    const-string v0, "hv_charger"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setBetteryChargeType(I)V

    goto :goto_0

    .line 425
    :cond_0
    invoke-static {}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->getBatteryChargeType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 426
    const-string v0, "online"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 428
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setBetteryChargeType(I)V

    .line 430
    :cond_1
    :goto_0
    return-void
.end method

.method protected handleIntentEmergencyCallbackModeChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 315
    const-string v0, "phoneinECMState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 316
    .local v0, "ecmState":Z
    if-eqz v0, :cond_1

    .line 317
    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setEcbmChanged(Z)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgSubScription;->setEcbmChanged(Z)V

    .line 327
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    .line 328
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 329
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v4

    .line 328
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(III)V

    .line 333
    :cond_1
    :goto_0
    return-void
.end method

.method protected handleIntentEmergencyCallbackModeChangedEnd(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 336
    const-string v0, "phoneinECMState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 337
    .local v0, "ecmState":Z
    if-nez v0, :cond_0

    .line 338
    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgSubScription;->setEcbmChanged(Z)V

    .line 339
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 340
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v4

    .line 339
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(III)V

    .line 342
    :cond_0
    return-void
.end method

.method protected handleIntentEntitlementCompleted(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 472
    iget v0, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    const-string v1, "phoneId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 473
    iget v0, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isEntitlementRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "handleIntentEntitlementCompleted"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    .line 476
    iget v0, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgEntitlement;->getEntitlementResult(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "de-register due to entitlement failure"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    .line 486
    :cond_0
    return-void
.end method

.method protected handleIntentLocationManagerModeChanged()V
    .locals 7

    .line 371
    iget v0, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->isLocationServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Location mode enabled"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    const-string v3, "SYS_LOC"

    invoke-static {v0, v2, v3, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    .line 376
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Lcom/sec/epdg/WfcProfileTask;

    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 378
    invoke-static {v3}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/WfcProfileTask;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    :cond_0
    return-void
.end method

.method protected handleIntentLocationTimeOut()V
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    const-string v2, "COUNTRY_DETECTED"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    .line 463
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "DE-registration is not required. move To LTE"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    .line 466
    .local v0, "epdgHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    .end local v0    # "epdgHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected handleIntentPeriodicDnsTimerExpired()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x52

    iput v1, v0, Landroid/os/Message;->what:I

    .line 242
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Wifi disconnected when DNS retry timer expired"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void
.end method

.method protected handleIntentPeriodicDpdTimerExpired(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 250
    const-string v0, "phoneId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 251
    .local v0, "phoneId":I
    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    if-ne v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 253
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x44

    iput v2, v1, Landroid/os/Message;->what:I

    .line 254
    const-string v2, "apntype"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "apnType":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIntentPeriodicDpdTimerExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-eqz v2, :cond_0

    .line 257
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 260
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter in intent, apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "mesg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v3    # "mesg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method protected handleIntentRetryTimerExpired(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 212
    const-string v1, "ssid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "ssid":Ljava/lang/String;
    const-string v2, "apntype"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "apnType":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processSlowPath() ssid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "apnType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 217
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameters in Intent. SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "mesg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v3    # "mesg":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method protected handleIntentSecNetworkStateChanged(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 385
    const-string v0, "delayState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 386
    .local v0, "delayState":Z
    const-string v1, "delayMaxTime"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 387
    .local v1, "delayMilis":J
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SEC_NETWORK_STATE_CHANGED - delayState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", DealyMilis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v3, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 390
    if-eqz v0, :cond_3

    .line 391
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v3

    .line 392
    .local v3, "epdgHandler":Landroid/os/Handler;
    iget-object v5, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 393
    iget-object v5, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->setIsWifiDisconnectDelayed(Z)V

    .line 394
    iget-object v5, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getWifiSetting()I

    move-result v4

    if-eqz v4, :cond_2

    .line 396
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Send De-register and delay wifi disconnect"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/16 v4, 0x54

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 400
    :cond_0
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Do not need de-register"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 404
    :cond_1
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 405
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-ne v4, v5, :cond_2

    .line 406
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4, v6}, Lcom/sec/epdg/EpdgSubScription;->setIsWifiDisconnectDelayed(Z)V

    .line 407
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v5, "de-registration is not required. start WiFi disconnection"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    .end local v3    # "epdgHandler":Landroid/os/Handler;
    :cond_2
    :goto_0
    goto :goto_1

    .line 412
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgSubScription;->setIsWifiDisconnectDelayed(Z)V

    .line 414
    :goto_1
    return-void
.end method

.method protected handleIntentShutDown()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "ShutDown - do not need de-register "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    .line 365
    .local v0, "epdgHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    .end local v0    # "epdgHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected handleIntentSmsCallbackModeChanged(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 345
    const-string v0, "phoneInSCBMState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 346
    .local v0, "scbmState":Z
    const-string v2, "phoneId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 347
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getScbmChanged()Z

    move-result v3

    .line 348
    .local v3, "existingScbmState":Z
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_SMS_CALLBACK_MODE_CHANGED: scbmState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " phone id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " existing scbm state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mPhoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " epdg availability: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 350
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-eq v3, v0, :cond_1

    iget v4, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    if-ne v2, v4, :cond_1

    .line 352
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgSubScription;->setScbmChanged(Z)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4, v1}, Lcom/sec/epdg/EpdgSubScription;->setScbmChanged(Z)V

    .line 358
    :cond_1
    :goto_0
    return-void
.end method

.method protected handleIntentWifiNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 447
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 448
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const-string v1, "ims"

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IntentReceiver;->supportMobikeByApnType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 449
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 450
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 453
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Skip DPD latency for RTP Loss during MOBIKE"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    .line 455
    .local v1, "epdgHandler":Landroid/os/Handler;
    const/16 v2, 0x6a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 456
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgImsManagerHelper;->getRtpTimeOutValueFromImsProfile(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 455
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    .end local v1    # "epdgHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected handleIntentWifiScanTimerExpired()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 228
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "WiFiManager is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 233
    :cond_0
    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isWiFiScanStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 235
    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicWiFiScan()V

    .line 237
    :cond_1
    return-void
.end method

.method protected handleSimStateChange(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimStateChange: action is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->readSimInfo()Z

    .line 205
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->readSimInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    .line 207
    :cond_2
    :goto_1
    return-void
.end method

.method public initializeIntentReceiver()V
    .locals 8

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    .line 68
    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_SI_DDS()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const-string v2, "ims"

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->getIWlanApnSettingByApnType(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    .line 72
    .local v1, "iWlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    if-ne v2, v3, :cond_1

    .line 73
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getAllApnTypes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 76
    .local v5, "apnType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    .end local v5    # "apnType":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const-string v2, "com.sec.epdg.PERIODIC_DNS_TIMER_EXPIRED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v2, "com.sec.epdg.INTENT_WIFI_SCAN_TIMER_EXPIRED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v2, "com.sec.imsservice.intent.action.EPDG_NAME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v2, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v2, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v2, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v2, "com.sec.sprint.wfc.LOCATION_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v2, "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget v2, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v2, :cond_3

    .line 95
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v2, "com.samsung.intent.action.SMS_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    :cond_3
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget v2, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    const-string v2, "com.sec.commands.ipcall.action_ip_setting_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    :cond_4
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 117
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    if-eqz v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " intent received."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 125
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 126
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mHdr:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x5f

    iput v2, v1, Landroid/os/Message;->what:I

    .line 131
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 132
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mHdr:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 134
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x5e

    iput v2, v1, Landroid/os/Message;->what:I

    .line 135
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 136
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentRetryTimerExpired(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 138
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.epdg.INTENT_WIFI_SCAN_TIMER_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    invoke-virtual {p0}, Lcom/sec/epdg/IntentReceiver;->handleIntentWifiScanTimerExpired()V

    goto/16 :goto_2

    .line 140
    :cond_5
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.epdg.PERIODIC_DNS_TIMER_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/sec/epdg/IntentReceiver;->handleIntentPeriodicDnsTimerExpired()V

    goto/16 :goto_2

    .line 142
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 143
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentPeriodicDpdTimerExpired(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 144
    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.commands.ipcall.action_ip_setting_change"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentAdbIpCallSettingChange(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 146
    :cond_8
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentEmergencyCallbackModeChanged(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 148
    :cond_9
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 149
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentEmergencyCallbackModeChangedEnd(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 150
    :cond_a
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.intent.action.SMS_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 151
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentSmsCallbackModeChanged(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 152
    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 153
    invoke-virtual {p0}, Lcom/sec/epdg/IntentReceiver;->handleIntentShutDown()V

    goto/16 :goto_2

    .line 154
    :cond_c
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 155
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_0

    .line 157
    :cond_d
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 158
    invoke-virtual {p0}, Lcom/sec/epdg/IntentReceiver;->handleIntentLocationManagerModeChanged()V

    goto/16 :goto_2

    .line 159
    :cond_e
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 160
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    const-string v4, "PWR_SAVE_MODE"

    invoke-static {v1, v3, v4, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 161
    :cond_f
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 162
    const-string v1, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 163
    .local v1, "enabled":I
    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    const-string v4, "TTY_MODE"

    invoke-static {v2, v3, v4, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    .line 164
    .end local v1    # "enabled":I
    goto/16 :goto_2

    :cond_10
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 165
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isCallingPlusOnly()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 167
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    const-string v4, "CONN"

    invoke-static {v1, v3, v4, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 169
    :cond_11
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.sprint.wfc.LOCATION_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 170
    invoke-virtual {p0}, Lcom/sec/epdg/IntentReceiver;->handleIntentLocationTimeOut()V

    goto :goto_2

    .line 171
    :cond_12
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 172
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentSecNetworkStateChanged(Landroid/content/Intent;)V

    goto :goto_2

    .line 173
    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 175
    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 176
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "DEVICE_CONFIG_UPDATED"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mHdr:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 178
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x3ee

    iput v2, v1, Landroid/os/Message;->what:I

    .line 179
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 181
    :cond_14
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 182
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentBatteryChanged(Landroid/content/Intent;)V

    goto :goto_2

    .line 183
    :cond_15
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 184
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentWifiNetworkStateChangedAction(Landroid/content/Intent;)V

    goto :goto_2

    .line 156
    :cond_16
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IntentReceiver;->handleIntentEntitlementCompleted(Landroid/content/Intent;)V

    goto :goto_2

    .line 127
    :cond_17
    :goto_1
    move-object v1, p1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IntentReceiver;->handleSimStateChange(Landroid/content/Intent;)V

    .line 186
    :cond_18
    :goto_2
    return-void
.end method

.method public registerSimIntentReceiver()V
    .locals 2

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "intentFilterForSimStateChanged":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/IntentReceiver;->mPhoneId:I

    .line 57
    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_SI_DDS()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method public supportMobikeByApnType(Ljava/lang/String;)Z
    .locals 7
    .param p1, "epdgApnType"    # Ljava/lang/String;

    .line 433
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "(null apnType)"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return v0

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IntentReceiver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgSubScription;->getIWlanApnSettingByApnType(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    .line 438
    .local v1, "iWlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    if-nez v1, :cond_1

    .line 439
    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v3, "null IWlanApnSetting"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return v0

    .line 442
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supportMobikeByApnType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    if-ne v2, v3, :cond_3

    move v0, v6

    :cond_3
    return v0
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sec/epdg/IntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method
