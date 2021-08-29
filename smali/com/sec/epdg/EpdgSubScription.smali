.class public Lcom/sec/epdg/EpdgSubScription;
.super Lcom/sec/epdg/EpdgSubScriptionBase;
.source "EpdgSubScription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;,
        Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;,
        Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;,
        Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;
    }
.end annotation


# instance fields
.field private mBlockListCountry:Ljava/lang/String;

.field private mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

.field private mEpdgBigDataContentObserver:Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

.field private mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

.field private mEpdgDBSyncinProgress:Z

.field private mEpdgHandler:Landroid/os/Handler;

.field private mEpdgHandoverHandler:Landroid/os/Handler;

.field private mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

.field private mEpdgRatDeterminator:Lcom/sec/epdg/EpdgRatDeterminator;

.field private mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHandoverThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

.field private mIsImsReady:Z

.field private mMapconMode:Ljava/lang/String;

.field private mNeedUpdateCarrierFeature:Z

.field private mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

.field private mServiceHandler:Landroid/os/Handler;

.field private mSoftResetIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSubId:I

.field private mSubScriptionEnable:Z

.field private mUpdateNetRegiRetryCount:I

.field private mVoWifiSettingObserver:Lcom/sec/epdg/VoWifiSettingObserver;

.field public waitingForCallend:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 91
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHandlerThread:Landroid/os/HandlerThread;

    .line 84
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHandoverThread:Landroid/os/HandlerThread;

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    .line 88
    iput v1, p0, Lcom/sec/epdg/EpdgSubScription;->mUpdateNetRegiRetryCount:I

    .line 94
    iput v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    .line 95
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubScriptionEnable:Z

    .line 96
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->waitingForCallend:Z

    .line 98
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mMapconMode:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

    .line 102
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNeedUpdateCarrierFeature:Z

    .line 103
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mServiceHandler:Landroid/os/Handler;

    .line 104
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    .line 663
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSoftResetIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 696
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    .line 698
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    .line 985
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    .line 988
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataContentObserver:Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

    .line 1006
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

    .line 1008
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mVoWifiSettingObserver:Lcom/sec/epdg/VoWifiSettingObserver;

    .line 1911
    const-string v1, "UNKNOWN"

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mBlockListCountry:Ljava/lang/String;

    .line 1912
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "serviceHandler"    # Landroid/os/Handler;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgSubScriptionBase;-><init>(Landroid/content/Context;I)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHandlerThread:Landroid/os/HandlerThread;

    .line 84
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHandoverThread:Landroid/os/HandlerThread;

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    .line 88
    iput v1, p0, Lcom/sec/epdg/EpdgSubScription;->mUpdateNetRegiRetryCount:I

    .line 94
    iput v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    .line 95
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubScriptionEnable:Z

    .line 96
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->waitingForCallend:Z

    .line 98
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mMapconMode:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

    .line 102
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNeedUpdateCarrierFeature:Z

    .line 103
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mServiceHandler:Landroid/os/Handler;

    .line 104
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    .line 663
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSoftResetIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 696
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    .line 698
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    .line 985
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    .line 988
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataContentObserver:Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

    .line 1006
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

    .line 1008
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mVoWifiSettingObserver:Lcom/sec/epdg/VoWifiSettingObserver;

    .line 1911
    const-string v2, "UNKNOWN"

    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mBlockListCountry:Ljava/lang/String;

    .line 1912
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "EpdgServiceThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHandlerThread:Landroid/os/HandlerThread;

    .line 109
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Lcom/sec/epdg/EpdgHandler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/sec/epdg/EpdgHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "EpdgHandoverThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHandoverThread:Landroid/os/HandlerThread;

    .line 112
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v0, Lcom/sec/epdg/EpdgHandoverHandler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mHandoverThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/sec/epdg/EpdgHandoverHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandoverHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/sec/epdg/EpdgNetworkManagementObserver;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v0, v2, p0, v3, v4}, Lcom/sec/epdg/EpdgNetworkManagementObserver;-><init>(Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIfaceObserver:Lcom/sec/epdg/EpdgNetworkManagementObserver;

    .line 115
    new-instance v0, Lcom/sec/epdg/NetworkChangeController;

    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v10, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    move-object v5, v0

    move-object v8, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/epdg/NetworkChangeController;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;II)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 116
    new-instance v0, Lcom/sec/epdg/EpdgImsManagerHelper;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v0, v2, p0, v3, v4}, Lcom/sec/epdg/EpdgImsManagerHelper;-><init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    .line 117
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {p0, v0}, Lcom/sec/epdg/EpdgEntitlement;->createInstance(Lcom/sec/epdg/EpdgSubScription;I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgEntitlement:Lcom/sec/epdg/EpdgEntitlement;

    .line 118
    new-instance v0, Lcom/sec/epdg/EpdgRunnable;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v0, p0, v2}, Lcom/sec/epdg/EpdgRunnable;-><init>(Lcom/sec/epdg/EpdgSubScription;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    .line 119
    invoke-static {p2}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    .line 120
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/TelephonyAdapter;->setEpdgHandler(Landroid/os/Handler;)V

    .line 121
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/sec/epdg/EpdgUtils;->createInstance(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgUtils;

    .line 122
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v2, 0x5

    if-eq v2, v0, :cond_0

    .line 123
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    .line 125
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;-><init>(Lcom/sec/epdg/EpdgSubScription;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSoftResetIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v0, "resetSettingsFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v2, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mSoftResetIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    .line 131
    iput-object p3, p0, Lcom/sec/epdg/EpdgSubScription;->mServiceHandler:Landroid/os/Handler;

    .line 132
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->createInstance(ILandroid/content/Context;)Lcom/sec/epdg/Operator/EpdgOperator;

    .line 133
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->createInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    .line 134
    new-instance v1, Lcom/sec/epdg/VoWifiSettingObserver;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v7, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/VoWifiSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;II)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mVoWifiSettingObserver:Lcom/sec/epdg/VoWifiSettingObserver;

    .line 135
    return-void
.end method

.method private declared-synchronized MoveToBasedOnSettings(I)V
    .locals 3
    .param p1, "voLte"    # I

    monitor-enter p0

    .line 1236
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnSettings : volte or vops("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 1244
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScription;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1235
    .end local p1    # "voLte":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized ReadEpdgEnableSetting()V
    .locals 7

    monitor-enter p0

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "ReadEpdgEnableSetting"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getSimState()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 777
    const-string v0, "sim not ready"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 778
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    goto/16 :goto_2

    .line 779
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScription;
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isNeededToBlockIkeAuthentication()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    const-string v0, "To block starting IKE authentication in 2G sims"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 781
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    goto/16 :goto_2

    .line 782
    :cond_1
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mOperator:Ljava/lang/String;

    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->IsAvaliableWfcActivity(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 783
    const-string v0, "no WFC Activity"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 784
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    goto/16 :goto_2

    .line 785
    :cond_2
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOutsideOmcCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 786
    const-string v0, "SimNetwork Changed to outside"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 787
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    .line 789
    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->updateHandoverEnableSetting(Z)V

    .line 790
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0, v3, v2, v2}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    goto/16 :goto_2

    .line 791
    :cond_3
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_SI_DDS()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 792
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    if-eq v0, v3, :cond_6

    .line 796
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v0, :cond_5

    .line 797
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "ReadEpdgEnableSetting() Stop Epdg"

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v3, v3, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v3, v3, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 801
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 803
    :cond_4
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 804
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 805
    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 808
    :cond_5
    const-string v0, "DDS not matched"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 809
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    goto/16 :goto_2

    .line 810
    :cond_6
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isEntitlementRequired()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgEntitlement:Lcom/sec/epdg/EpdgEntitlement;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgEntitlement;->getEntitlementResult(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 811
    const-string v0, "entitlement not ready"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 812
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    goto/16 :goto_2

    .line 813
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->isSimMobilityVideoEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 814
    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->isSimMobilityVoiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 815
    const-string v0, "simmobility but video and voice are disabled"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 816
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    goto/16 :goto_2

    .line 819
    :cond_8
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mAutoUpdate:Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->applyEpdgOMCUpdate()Z

    .line 820
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNeedUpdateCarrierFeature:Z

    if-eqz v0, :cond_9

    .line 821
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mAutoUpdate:Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->applyCarrierFeatureUpdate()Z

    .line 825
    :cond_9
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgContentReader;->getInstance(I)Lcom/sec/epdg/EpdgContentReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 826
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgContentReader;->createIWlanApnList(Landroid/content/Context;)V

    .line 827
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgContentReader;->readEpdgSettings(Landroid/content/Context;)V

    .line 828
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    .line 829
    .local v0, "prevEnableEpdg":Z
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgUtils;->IsTestSim()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_d

    .line 830
    const-string v3, "20801"

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "Rakuten"

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    .line 831
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 832
    const-string v3, "Rakuten Roaming Imsi"

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 833
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    goto/16 :goto_1

    .line 835
    :cond_a
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getEpdgEnable()Z

    move-result v3

    .line 836
    .local v3, "enableEpdgFromDb":Z
    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v1

    goto :goto_0

    :cond_b
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    .line 837
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mVolteEnableFromImsService:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableVolte:Z

    .line 838
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPORT_VOWIFI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " SUPPORT_VOLTE from ImsService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableVolte:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-nez v4, :cond_c

    .line 840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " imsservice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 842
    .end local v3    # "enableEpdgFromDb":Z
    :cond_c
    goto :goto_1

    .line 844
    :cond_d
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getEpdgEnable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    .line 845
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUPPORT_VOWIFI from DATABASE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-nez v3, :cond_e

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 849
    :cond_e
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableVolte:Z

    .line 852
    :goto_1
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_SI_DDS()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 853
    if-nez v0, :cond_f

    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v3, :cond_f

    .line 854
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getRegistedNetworkStateChangeReceiver()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 855
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "ReadEpdgEnableSetting() Start Epdg"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 857
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 858
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x37

    iput v4, v3, Landroid/os/Message;->what:I

    .line 859
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 864
    .end local v0    # "prevEnableEpdg":Z
    .end local v3    # "msg":Landroid/os/Message;
    :cond_f
    :goto_2
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    add-int/2addr v0, v1

    .line 865
    .local v0, "slotId":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epdg_support"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v5, :cond_10

    move v5, v1

    goto :goto_3

    :cond_10
    move v5, v2

    :goto_3
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 866
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    const-string v4, "epdg_support"

    iget-boolean v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v5, :cond_11

    move v5, v1

    goto :goto_4

    :cond_11
    move v5, v2

    :goto_4
    iget v6, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3, v4, v5, v6}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 867
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    const-string v4, "simmobility_status"

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_5

    :cond_12
    move v1, v2

    :goto_5
    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3, v4, v1, v5}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 868
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLUMN_EPDG_SUPPORT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " COLUMN_SIMMOBILITY_STATUS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->controlWfcActivity()V

    .line 871
    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    if-nez v1, :cond_13

    .line 872
    const-string v1, "None"

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 873
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-interface {v1, v2}, Lcom/sec/epdg/EpdgRilInterface;->updateSubId(I)V

    .line 874
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->UpdateHandover()V

    .line 875
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgConfiguration()Z

    .line 876
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateApnSupportedTypes()V

    .line 877
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgMapcon()V

    goto :goto_6

    .line 878
    :cond_13
    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-nez v1, :cond_14

    .line 879
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1, v3, v2, v2}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 882
    :cond_14
    :goto_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadEpdgEnableSetting() Enable Failure Reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const/16 v1, 0x1f4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Enable Failure Reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    monitor-exit p0

    return-void

    .line 773
    .end local v0    # "slotId":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/sec/epdg/EpdgSubScription;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSubScription;
    .param p1, "x1"    # Z

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgSubScription;->changeVoWifiSettingForSimBased(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/epdg/EpdgSubScription;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSubScription;

    .line 81
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgSubScription;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSubScription;

    .line 81
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSubScription;

    .line 81
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/epdg/EpdgSubScription;Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;)Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSubScription;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    .line 81
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgSubScription;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSubScription;

    .line 81
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mBlockListCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSubScription;

    .line 81
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/EpdgSubScription;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgSubScription;

    .line 81
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeVoWifiSettingForSimBased(Z)V
    .locals 19
    .param p1, "force"    # Z

    .line 888
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 889
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget v2, v0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "imsi":Ljava/lang/String;
    iget v3, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    .line 892
    .local v10, "Mccmnc":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 897
    :cond_0
    const-string v11, "prev_imsi"

    if-nez p1, :cond_2

    iget-boolean v3, v0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/sec/epdg/EpdgSubScription;->mSubScriptionEnable:Z

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/sec/epdg/EpdgSubScription;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 898
    iget-object v3, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const-string v5, ""

    invoke-static {v3, v11, v5, v4}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, "preSimImsi":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 900
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgSubScription;->syncVowifiSettings()V

    .line 903
    .end local v3    # "preSimImsi":Ljava/lang/String;
    :cond_2
    iget-object v3, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-static {v3, v4}, Lcom/sec/epdg/VoWifiSettings;->readWfcSetting(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v12

    .line 906
    .local v12, "LoadWfcSettingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 907
    const/4 v12, 0x0

    .line 908
    const/4 v3, 0x1

    .local v3, "result":Z
    goto :goto_0

    .line 910
    .end local v3    # "result":Z
    :cond_3
    iget-object v3, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v7, v0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgSubScription;->checkMDN()Z

    move-result v8

    iget-object v4, v0, Lcom/sec/epdg/EpdgSubScription;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object v4, v2

    move-object v5, v10

    invoke-static/range {v3 .. v9}, Lcom/sec/epdg/VoWifiSettings;->IsNeedVoWifiSettingsUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z

    move-result v3

    .line 913
    .restart local v3    # "result":Z
    :goto_0
    const-string v4, "wifi_call_when_roaming"

    const-string v5, "wifi_call_preferred"

    const-string v6, "wifi_call_enable"

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    .line 914
    if-eqz v12, :cond_4

    iget v8, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->isNeedProvisioning()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_4

    .line 915
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v9, "changeVoWifiSettingForSimBased() Recovery WFC Settings"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 917
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 916
    invoke-static {v8, v9, v13, v7}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 918
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 919
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    goto :goto_1

    .line 921
    :cond_4
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v9, "changeVoWifiSettingForSimBased() Reset WFC Settings"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgSubScription;->saveCurMnoName()Z

    .line 923
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v8, v10, v9}, Lcom/sec/epdg/VoWifiSettings;->resetDbValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 924
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v13, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 925
    invoke-static {v13, v6, v7, v14}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v13

    .line 924
    invoke-static {v8, v9, v13, v7}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 926
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v8, v5, v7, v9}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 927
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v8, v4, v7, v9}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    .line 929
    :goto_1
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v8, v11, v2, v9}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 930
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const-string v11, "operatornumeric"

    invoke-static {v8, v11, v10, v9}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 931
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const-string v11, "vowifi_mdn"

    const-string v13, "0"

    invoke-static {v8, v11, v13, v9}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 933
    if-eqz v12, :cond_5

    const/4 v8, 0x1

    move v13, v8

    goto :goto_2

    :cond_5
    move v13, v7

    :goto_2
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    iget-object v15, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mOperator:Ljava/lang/String;

    iget v9, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v11, v0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v11

    invoke-static/range {v13 .. v18}, Lcom/sec/epdg/VoWifiSettings;->saveWfcSetting(ZZLandroid/content/Context;Ljava/lang/String;II)V

    .line 936
    :cond_6
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_9

    if-eqz v12, :cond_9

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v8

    if-ne v8, v9, :cond_7

    .line 938
    iget-object v8, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v11, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 939
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 938
    invoke-static {v8, v11, v6, v7}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 941
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v6

    if-ne v6, v9, :cond_8

    .line 942
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 944
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiRoamPrefSetting()I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 945
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    .line 949
    :cond_9
    iget v4, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->NO_WFC_PREFERRED_MODE:Z

    if-nez v4, :cond_a

    iget v4, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    const-string v5, "Vodacom_ZA"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 951
    :cond_a
    iget v4, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiRoamPrefSetting()I

    move-result v4

    if-ne v4, v9, :cond_b

    .line 952
    invoke-virtual {v0, v7}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    .line 954
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c

    .line 955
    invoke-virtual {v0, v5}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 956
    const/4 v13, 0x0

    iget-object v4, v0, Lcom/sec/epdg/EpdgSubScription;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    iget-object v15, v0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/sec/epdg/EpdgSubScription;->mOperator:Ljava/lang/String;

    iget v5, v0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v6, v0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-static/range {v13 .. v18}, Lcom/sec/epdg/VoWifiSettings;->saveWfcSetting(ZZLandroid/content/Context;Ljava/lang/String;II)V

    .line 958
    iget-object v4, v0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v5, "changeVoWifiSettingForSimBased() DB is not CS Pref. So, it need to reset DB."

    invoke-static {v7, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_c
    return-void

    .line 893
    .end local v3    # "result":Z
    .end local v12    # "LoadWfcSettingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    :goto_3
    iget-object v3, v0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "changeVoWifiSettingForSimBased() imsi and mccmnc is null."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method private checkAndUpdateWifiPreferenceModes()V
    .locals 11

    .line 2518
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2519
    return-void

    .line 2521
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEpdgInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isImsReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    if-eqz v0, :cond_b

    .line 2524
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    const-string v1, "161"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->getConfigValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2525
    .local v0, "efsPrefHome":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    const-string v2, "162"

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgImsManagerHelper;->getConfigValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2528
    .local v1, "efsPrefRoam":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "1"

    const-string v4, "WIFI"

    const/high16 v5, -0x80000000

    const-string v6, "CELL"

    if-nez v2, :cond_5

    .line 2532
    const/high16 v2, -0x80000000

    .line 2533
    .local v2, "efsPreferenceHome":I
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v7

    .line 2534
    .local v7, "epdgPreferenceHome":I
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2536
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2537
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 2535
    :cond_3
    :goto_0
    const/4 v2, 0x2

    .line 2539
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "epdgPreferenceHome "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " efsPreferenceHome "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    if-eq v2, v5, :cond_5

    if-eq v2, v7, :cond_5

    .line 2541
    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 2544
    .end local v2    # "efsPreferenceHome":I
    .end local v7    # "epdgPreferenceHome":I
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2548
    const/high16 v2, -0x80000000

    .line 2549
    .local v2, "efsPreferenceRoam":I
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiRoamPrefSetting()I

    move-result v7

    .line 2550
    .local v7, "epdgPreferenceRoam":I
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "0"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    .line 2552
    :cond_6
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2553
    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    .line 2551
    :cond_8
    :goto_2
    const/4 v2, 0x0

    .line 2555
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "epdgPreferenceRoam "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " efsPreferenceRoam "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    if-eq v2, v5, :cond_a

    if-eq v2, v7, :cond_a

    .line 2557
    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    .line 2560
    .end local v0    # "efsPrefHome":Ljava/lang/String;
    .end local v1    # "efsPrefRoam":Ljava/lang/String;
    .end local v2    # "efsPreferenceRoam":I
    .end local v7    # "epdgPreferenceRoam":I
    :cond_a
    goto :goto_4

    .line 2561
    :cond_b
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "checkAndUpdateWifiPreferenceModes: Either epdg not initialized or IMS not ready"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    :goto_4
    return-void
.end method

.method private checkRmnetMhiInterfaceModel()Z
    .locals 6

    .line 2576
    const/4 v0, 0x0

    .line 2578
    .local v0, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2581
    goto :goto_0

    .line 2579
    :catch_0
    move-exception v1

    .line 2580
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get list of interfaces "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2584
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 2585
    .local v4, "iface":Ljava/lang/String;
    const-string v5, "rmnet_mhi0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2586
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "mhi iface model"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    const/4 v1, 0x1

    return v1

    .line 2584
    .end local v4    # "iface":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2591
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "interfaces is null"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    :cond_2
    return v1
.end method

.method private controlWfcActivity()V
    .locals 7

    .line 730
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isNeedSMSProvisioning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/epdg/VodaProvisionManager;->getInstance(ILandroid/content/Context;)Lcom/sec/epdg/VodaProvisionManager;

    move-result-object v0

    .line 732
    .local v0, "vpm":Lcom/sec/epdg/VodaProvisionManager;
    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {v0}, Lcom/sec/epdg/VodaProvisionManager;->getIsProvisioning()Z

    move-result v1

    .line 734
    .local v1, "isProvision":Z
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlWfcActivity() isProvision "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    if-eqz v1, :cond_0

    .line 736
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-boolean v5, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    goto :goto_0

    .line 738
    :cond_0
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    .line 741
    .end local v0    # "vpm":Lcom/sec/epdg/VodaProvisionManager;
    .end local v1    # "isProvision":Z
    :cond_1
    :goto_0
    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_DI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 742
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "controlWfcActivity() check SIM Manaer on/off "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isSimSettingEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    goto/16 :goto_1

    .line 746
    :cond_3
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 749
    :cond_4
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-nez v0, :cond_5

    .line 750
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 752
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    move-result v0

    .line 753
    .local v0, "enabled":Z
    if-nez v0, :cond_6

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 754
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 756
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/WfcController/WfcActivityController;->getWfcComponent(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "componentName":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    .line 758
    .local v4, "appState":I
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appstate : "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v3, 0x2

    if-ne v4, v3, :cond_6

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    if-nez v3, :cond_6

    .line 761
    new-instance v3, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;-><init>(Lcom/sec/epdg/EpdgSubScription;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    .line 762
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 763
    .local v3, "packageFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    const-string v5, "package"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 765
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 766
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v6, "COMPONENT_ENABLED_STATE_DISABLED. need to enableWFC after HFA_success"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .end local v0    # "enabled":Z
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "componentName":[Ljava/lang/String;
    .end local v3    # "packageFilter":Landroid/content/IntentFilter;
    .end local v4    # "appState":I
    :cond_6
    :goto_1
    return-void
.end method

.method private enableReceiver(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1894
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableReceiver :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    if-eqz p1, :cond_0

    .line 1896
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getRegistedNetworkStateChangeReceiver()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1897
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/sec/epdg/NetworkChangeController;->registerReceivers(I)V

    .line 1898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 1899
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    goto :goto_0

    .line 1903
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getRegistedNetworkStateChangeReceiver()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1904
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->unregisterReceivers()V

    .line 1905
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 1906
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterListener()V

    .line 1909
    :cond_1
    :goto_0
    return-void
.end method

.method private getVoWifiStatus()Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;
    .locals 4

    .line 573
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v0

    .line 574
    .local v0, "settingState":I
    invoke-static {v0}, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v1

    .line 575
    .local v1, "isWifiCallEnableSetting":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v2

    .line 576
    .local v2, "isVolteProvisioned":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v2, :cond_0

    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v1, :cond_0

    .line 578
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    return-object v3

    .line 579
    :cond_0
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v2, :cond_2

    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-eq v3, v1, :cond_2

    .line 582
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v1, :cond_1

    .line 583
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 582
    :goto_0
    return-object v3

    .line 584
    :cond_2
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-eq v3, v2, :cond_4

    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v1, :cond_4

    .line 587
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v2, :cond_3

    .line 588
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 587
    :goto_1
    return-object v3

    .line 593
    :cond_4
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 594
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v1, :cond_5

    .line 595
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 594
    :goto_2
    return-object v3

    .line 600
    :cond_6
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v2, :cond_7

    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v3, v1, :cond_7

    .line 601
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 600
    :goto_3
    return-object v3
.end method

.method private initializeEpdgTimer()Lcom/sec/epdg/EpdgTimers;
    .locals 12

    .line 364
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 365
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 366
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 367
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 368
    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 369
    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getWifiIpConfigTimer()I

    move-result v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 370
    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteMeasurementTimer()I

    move-result v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 371
    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdgWifiMeasurementTimer()I

    move-result v8

    .line 364
    const/16 v9, 0x3c

    const/16 v10, 0x78

    const/16 v11, 0x78

    invoke-static/range {v0 .. v11}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    return-object v0
.end method

.method private isEpdgAvailabilityRecommended()Z
    .locals 3

    .line 2224
    const/4 v0, 0x0

    .line 2225
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2226
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "TEpdg timer running..  wait for it to expire. No timers starting."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2227
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2228
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "Wifi signal is good from monitor. But wifi is not connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2229
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2230
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "State is throttle. Waiting for the state to be reset."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2232
    :cond_2
    const/4 v0, 0x1

    .line 2234
    :goto_0
    return v0
.end method

.method private onWifiGoodEnough()V
    .locals 3

    .line 2073
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WLAN_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 2074
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 2075
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->updateCpEpdgHoThreshold(Z)V

    .line 2076
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->sendWifiStatusChangedNotification(Z)V

    .line 2077
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->updateThrottleStatusAsWifiConnection(Z)V

    .line 2080
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->notifyEpdgAvailablity(Z)V

    .line 2083
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/mapcon/PolicyManager;->isVoWifiPrefByMapconTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->isMmtelFeatureTagPresentOverEpdg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->READY_FOR_CALLS:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUnifiedWfcSummaryBroadcast(Landroid/content/Context;II)V

    .line 2086
    :cond_0
    return-void
.end method

.method private sendDpdLatencyCheckEventToDpdHandler()V
    .locals 5

    .line 1033
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThresholdDpdLatency()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    const-string v1, "RTP_LOSS_RATE_COUNT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 1036
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 1037
    .local v0, "cid":I
    if-gez v0, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "invalid cid for ims"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1040
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getDPDHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1041
    .local v1, "dpdHdr":Landroid/os/Handler;
    if-eqz v1, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getDPDHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1043
    .local v3, "msgToDPD":Landroid/os/Message;
    const/16 v4, 0x14

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1044
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 1045
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1046
    .end local v3    # "msgToDPD":Landroid/os/Message;
    goto :goto_0

    .line 1047
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "DPD handler is NULL"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    .end local v0    # "cid":I
    .end local v1    # "dpdHdr":Landroid/os/Handler;
    :cond_2
    :goto_0
    return-void
.end method

.method private setMnoNameToDb(Ljava/lang/String;)V
    .locals 3
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 359
    const-string v0, "mno_name"

    .line 360
    .local v0, "column":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1, v0, p1, v2}, Lcom/sec/epdg/WfcController/EpdgState;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    return-void
.end method

.method private shouldMoveToWifi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/PolicyManager;->shouldMoveToWifiByMapconTable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private syncVowifiSettings()V
    .locals 5

    .line 2602
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v0

    .line 2603
    .local v0, "enable":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2604
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 2606
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v2

    .line 2607
    .local v2, "pref":I
    if-eq v2, v1, :cond_1

    .line 2608
    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 2610
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiRoamPrefSetting()I

    move-result v3

    .line 2611
    .local v3, "roamingPref":I
    if-eq v3, v1, :cond_2

    .line 2612
    invoke-virtual {p0, v3}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    .line 2614
    :cond_2
    return-void
.end method


# virtual methods
.method public InitializeModemInterface()V
    .locals 3

    .line 297
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "InitializeModemInterface: single sim model"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    if-nez v0, :cond_1

    .line 302
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    .line 303
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const/high16 v1, -0x80000000

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/epdg/EpdgRilAdapter;->createInstance(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 304
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sec/epdg/ipc/EpdgModem;->createInstance(ILandroid/os/Handler;)Lcom/sec/epdg/ipc/EpdgModem;

    .line 306
    :cond_1
    return-void
.end method

.method MoveToBasedOnVopsOrSsac(IZ)V
    .locals 1
    .param p1, "networkSetting"    # I
    .param p2, "needToStartTimer"    # Z

    .line 1251
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/NetworkChangeController;->MoveToBasedOnVopsOrSsac(IZ)V

    .line 1252
    return-void
.end method

.method public bootCompleted()V
    .locals 4

    .line 607
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getSimState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Lcom/sec/epdg/DatabaseAccessTask;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/epdg/DatabaseAccessTask;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 612
    :cond_0
    return-void
.end method

.method protected changeApBlocking(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1958
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 1959
    return-void

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking : enable ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wifiConnected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1963
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->BLOCKLIST_COUNTRY:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    if-eq v0, v1, :cond_1

    .line 1964
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 1965
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1966
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->onWifiConnected()V

    goto :goto_1

    .line 1968
    :cond_1
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    if-ne v0, v1, :cond_4

    .line 1969
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->AP_NOT_ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 1970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->isNotRequiredTimer:Z

    .line 1972
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1973
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1974
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "AP blocked - do not need de-register"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1976
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1978
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1979
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-ne v0, v1, :cond_3

    .line 1980
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "DE-registration is not required. start AP disconnection"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1982
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1984
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1987
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking new :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    return-void
.end method

.method protected checkAndUpdateWifiAvailability()V
    .locals 8

    .line 1267
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "ssid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "check AP is allowed for EPDG service first"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    new-instance v7, Lcom/sec/epdg/WfcProfileTask;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    move-object v1, v7

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/WfcProfileTask;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v7, v1}, Lcom/sec/epdg/WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1272
    .end local v0    # "ssid":Ljava/lang/String;
    goto :goto_0

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->onWifiConnected()V

    .line 1276
    :cond_1
    :goto_0
    return-void
.end method

.method protected checkLteBasedOnNetworkSettings()Z
    .locals 4

    .line 1765
    const/4 v0, 0x0

    .line 1766
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1767
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1768
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getIsVoPSEnabled()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getIsSsacVoiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1769
    const/4 v0, 0x1

    goto :goto_0

    .line 1772
    :cond_0
    const/4 v0, 0x1

    .line 1775
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLteBasedOnNetworkSettings: returning LTE availability as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    return v0
.end method

.method checkMDN()Z
    .locals 7

    .line 2417
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 2418
    .local v0, "lineNum":Ljava/lang/String;
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 2419
    .local v1, "imsi":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const-string v4, "vowifi_mdn"

    const-string v5, "0"

    invoke-static {v2, v4, v5, v3}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2421
    .local v2, "mdn":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMDN: lineNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " vowifi mdn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " imsi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2422
    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    .line 2423
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2424
    return v3

    .line 2426
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 2427
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2428
    return v3

    .line 2431
    :cond_1
    return v5
.end method

.method protected checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I
    .locals 4
    .param p1, "popupType"    # Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    .line 1279
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1280
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->TURN_OFF_MOBILE_DATA:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyShowPopupForEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)V

    .line 1283
    return v2

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1287
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    if-ne p1, v0, :cond_1

    .line 1290
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v3, :cond_2

    .line 1291
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "Vowifi is off, video + voice needs to be handled like voice call"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    return v1

    .line 1294
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->LOW_WIFI_SIGNAL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    if-ne p1, v0, :cond_2

    .line 1295
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getW2LHandoverForWeakWifiSignal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "It is not related with low Wi-Fi signal for W2L handover."

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return v1

    .line 1301
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyShowPopupForEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)V

    .line 1302
    return v2

    .line 1305
    :cond_3
    return v1
.end method

.method public controlWiFiThresholdDuringCall(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 2493
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlWiFiThresholdDuringCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setNeedControlWiFiThreshold(Z)V

    .line 2496
    if-eqz p1, :cond_2

    .line 2497
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getCurrentLteRsrp()I

    move-result v0

    .line 2499
    .local v0, "lastKnownRSRP":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2500
    const/16 v0, -0x8c

    .line 2502
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getRoveOutLteRsrp()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->IsVoLteAvailableNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2503
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    const/16 v3, -0x64

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(III)V

    .line 2505
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiBadDbValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getRoveOutWifiRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2507
    .end local v0    # "lastKnownRSRP":I
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2508
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setWifiThreshold(III)V

    .line 2509
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "recover bad db"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    :cond_3
    :goto_0
    return-void
.end method

.method public deInitialize()V
    .locals 3

    .line 2697
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, " EPDG subscription deinitialize Start...."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSoftResetIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2700
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSoftResetIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2704
    :cond_0
    goto :goto_0

    .line 2702
    :catch_0
    move-exception v0

    .line 2703
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, " mSoftResetIntentReceiver not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    if-nez v0, :cond_1

    .line 2706
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->unregisterAll()V

    .line 2709
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x8

    if-ge v0, v2, :cond_3

    .line 2711
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 2712
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->deInitialize()V

    .line 2713
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aput-object v1, v2, v0

    .line 2710
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2717
    .end local v0    # "i":I
    :cond_3
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance(I)Lcom/sec/epdg/ipc/EpdgModem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2718
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance(I)Lcom/sec/epdg/ipc/EpdgModem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgModem;->deinitialize()V

    .line 2720
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    if-eqz v0, :cond_5

    .line 2721
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->deinitialize()V

    .line 2723
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    if-eqz v0, :cond_6

    .line 2724
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface {v0}, Lcom/sec/epdg/EpdgRilInterface;->deinitialize()V

    .line 2726
    :cond_6
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v0, :cond_7

    .line 2727
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->deinitialize()V

    .line 2729
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    if-eqz v0, :cond_8

    .line 2730
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/PolicyManager;->deinitialize()V

    .line 2732
    :cond_8
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    if-eqz v0, :cond_9

    .line 2733
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->deinitialize()V

    .line 2735
    :cond_9
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    if-eqz v0, :cond_a

    .line 2736
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->deinitialize()V

    .line 2738
    :cond_a
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    if-eqz v0, :cond_b

    .line 2739
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->deinitialize()V

    .line 2741
    :cond_b
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(I)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2742
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(I)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettingsWriter;->deinitialize()V

    .line 2744
    :cond_c
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    if-eqz v0, :cond_d

    .line 2745
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/TelephonyAdapter;->deinitialize()V

    .line 2747
    :cond_d
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgInterfaceController:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    if-eqz v0, :cond_e

    .line 2748
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgInterfaceController:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    invoke-virtual {v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->deinitialize()V

    .line 2750
    :cond_e
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDns;->deinitialize(I)V

    .line 2751
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->deinitialize(I)V

    .line 2752
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/throttle/ThrottleController;->deinitialize(I)V

    .line 2753
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->deinitialize(I)V

    .line 2754
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->deinitialize(I)V

    .line 2755
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgTimers;->deinitialize(I)V

    .line 2756
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->deinitialize(I)V

    .line 2757
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/VodaProvisionManager;->deinitialize(I)V

    .line 2758
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->deinitialize(I)V

    .line 2759
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->deinitialize(I)V

    .line 2760
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->deinitialize(I)V

    .line 2761
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgContentReader;->deinitialize(I)V

    .line 2763
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2764
    :cond_f
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 2765
    :cond_10
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandoverHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2766
    :cond_11
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHandoverThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 2767
    :cond_12
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, " EPDG subscription deinitialize finished...."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    return-void
.end method

.method protected deregiForHOBlock(Lcom/sec/epdg/DataType/MapconInformation;Lcom/sec/epdg/DataType/MapconInformation;)Z
    .locals 5
    .param p1, "prevMapcon"    # Lcom/sec/epdg/DataType/MapconInformation;
    .param p2, "currentMapcon"    # Lcom/sec/epdg/DataType/MapconInformation;

    .line 2162
    const/4 v0, 0x0

    .line 2163
    .local v0, "ret":Z
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2165
    .local v1, "nwkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2167
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getHandoverEnableSetting()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 2168
    invoke-virtual {p1, v2}, Lcom/sec/epdg/DataType/MapconInformation;->getPriority(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)I

    move-result v2

    sget-object v3, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    invoke-virtual {p2, v3}, Lcom/sec/epdg/DataType/MapconInformation;->getPriority(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2169
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handover disabled, send deregi, prev Priority : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    invoke-virtual {p1, v4}, Lcom/sec/epdg/DataType/MapconInformation;->getPriority(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "cur Priority : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 2170
    invoke-virtual {p2, v4}, Lcom/sec/epdg/DataType/MapconInformation;->getPriority(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2169
    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const/4 v0, 0x1

    .line 2174
    :cond_0
    return v0
.end method

.method public doCarrierFeatureUpdate()V
    .locals 1

    .line 2570
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNeedUpdateCarrierFeature:Z

    if-eqz v0, :cond_0

    .line 2571
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    .line 2573
    :cond_0
    return-void
.end method

.method public getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandoverHandler:Landroid/os/Handler;

    check-cast v0, Lcom/sec/epdg/EpdgHandoverHandler;

    return-object v0
.end method

.method public getEpdgServiceHandler()Landroid/os/Handler;
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;
    .locals 1

    .line 2685
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    return-object v0
.end method

.method protected handleEpdgSettingsReadEvent()V
    .locals 13

    .line 447
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "handleEpdgSettingsReadEvent() enter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "handleEpdgSettingsReadEvent() mEnableEpdg is false. Stop to init."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->sendWfcEpdgAllowedIntent()V

    .line 453
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgUtilExt;->setSimInitialized(IZ)V

    .line 454
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    if-nez v0, :cond_a

    .line 455
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    .line 456
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0}, Lcom/sec/epdg/IntentReceiver;->unregisterReceiver()V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-interface {v0, v2}, Lcom/sec/epdg/EpdgRilInterface;->updateSubId(I)V

    .line 460
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgRilSharedData;->setEpdgInitialized(Z)V

    .line 462
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-static {v0, v2, v3, v4, p0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getInstance(Landroid/content/Context;Landroid/os/Handler;IILcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 463
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0, v2, v3, p0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 464
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0, v2, v3, v4}, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->getInstance(Landroid/content/Context;ILcom/sec/epdg/smartwifi/SmartCellularProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    .line 466
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/sec/epdg/EpdgServerSelection;->createInstance(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgServerSelection;

    .line 467
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3, p0}, Lcom/sec/epdg/mapcon/PolicyManager;->createInstance(IILandroid/content/Context;Lcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 468
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgPeriodicDpd;->createInstance(ILandroid/content/Context;)Lcom/sec/epdg/EpdgPeriodicDpd;

    .line 469
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgPeriodicDns;->createInstance(ILandroid/content/Context;)Lcom/sec/epdg/EpdgPeriodicDns;

    .line 470
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->initializeEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 472
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0, v2, v3, p0}, Lcom/sec/epdg/handover/EpdgImsListener;->createInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 473
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    :goto_0
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 474
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-virtual {v0, v2}, Lcom/sec/epdg/NetworkChangeController;->registerPhoneStateListener(I)V

    .line 475
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3, p0}, Lcom/sec/epdg/EpdgRatDeterminator;->createInstance(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgRatDeterminator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRatDeterminator:Lcom/sec/epdg/EpdgRatDeterminator;

    .line 477
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->makeEpdgServiceUp()V

    .line 479
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->configureEpdgCsThresholds()V

    .line 480
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 481
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 482
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v3

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    .line 480
    invoke-static {v0, v2, v3, v4, v5}, Lcom/sec/epdg/throttle/ThrottleController;->createInstance(Landroid/content/Context;ZZILandroid/os/Handler;)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x8

    if-ge v0, v2, :cond_3

    .line 484
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 485
    invoke-static {v0, v2, p0}, Lcom/sec/epdg/IWlanApnContext;->getNewIWlanApnContextInstance(IILcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v10

    .line 486
    .local v10, "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    iget-object v11, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mHandlerThread:Landroid/os/HandlerThread;

    .line 488
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget v7, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 486
    move-object v4, v10

    move v8, v0

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/sec/epdg/IPSecDataConnSM;->getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;IILcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    aput-object v2, v11, v0

    .line 483
    .end local v10    # "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 491
    .end local v0    # "i":I
    :cond_3
    nop

    .line 492
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 493
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mNMService:Landroid/os/INetworkManagementService;

    .line 494
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_4

    .line 496
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mIfaceObserver:Lcom/sec/epdg/EpdgNetworkManagementObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_2

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not register InterfaceObserver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->checkRmnetMhiInterfaceModel()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIsRmnetMhiModel:Z

    .line 503
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    if-eqz v2, :cond_5

    .line 504
    invoke-virtual {v2}, Lcom/sec/epdg/IntentReceiver;->initializeIntentReceiver()V

    .line 507
    :cond_5
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EPDG_SERVER_ID_FROM_SIM:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 508
    invoke-static {v2}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIdFromSim()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 509
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->setEpdgServerIdFromSim()V

    .line 513
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getNewEpdgBigDataInstance(Landroid/content/Context;I)Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 515
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->enableReceiver(Z)V

    .line 517
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->setIsScreenOn(Z)V

    .line 521
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    .line 522
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 521
    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v4, v1

    :cond_7
    move v2, v4

    .line 523
    .local v2, "isAirplaneModeEnabled":Z
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEpdgSettingsReadEvent(): isAirplaneModeEnabled is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->setIsAirplaneMode(Z)V

    .line 525
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgUtils;->isConnectedOnWifi()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 526
    iput v1, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiMgrState:I

    .line 527
    sget-object v3, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v3, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 532
    :cond_8
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v3

    if-ne v3, v1, :cond_9

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    :goto_3
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->setVoWifiStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;)V

    .line 534
    const/4 v1, -0x1

    .line 536
    .local v1, "connectedCid":I
    :try_start_1
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    const-string v4, "ril.epdg.connecting"

    const-string v5, "-1"

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/EpdgUtils;->getEpdgProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v3

    .line 539
    goto :goto_4

    .line 537
    :catch_1
    move-exception v3

    .line 538
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v5, "Connecting CID is not converted into number"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_4
    const/4 v3, -0x1

    if-eq v3, v1, :cond_a

    .line 541
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EpdgService died disalbeEpdg cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 543
    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/epdg/EpdgUtils;->isAttachApn(I)Z

    move-result v11

    const/4 v12, 0x0

    .line 542
    move v7, v1

    invoke-interface/range {v6 .. v12}, Lcom/sec/epdg/EpdgRilInterface;->updateApnConnStatus(IZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;ZZZ)V

    .line 545
    :try_start_2
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mNMService:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 546
    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v5

    .line 545
    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 550
    goto :goto_5

    .line 547
    :catch_2
    move-exception v3

    .line 548
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " while disabling epdg routes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "connectedCid":I
    .end local v2    # "isAirplaneModeEnabled":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_5
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 554
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Setting LTE idle mode profiling as per roaming and vowifi status"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isLteIdleModeProfilingSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->toggleLteIdleModeProfiling(Z)V

    .line 559
    :cond_b
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->checkAndUpdateWifiPreferenceModes()V

    .line 562
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingPrefState:I

    .line 565
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->getRtpTimeOutValueFromImsProfile(Ljava/lang/String;)I

    move-result v0

    .line 566
    .local v0, "mMeasurementCount":I
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setLteAndWifiMeasurementMaxCnt(I)V

    .line 567
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->initializePacketLossThLoggingField()V

    .line 568
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgConfiguration()Z

    .line 569
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->updateCpEpdgHoThreshold(Z)V

    .line 570
    return-void
.end method

.method protected handleMapconChange()V
    .locals 7

    .line 1460
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 1464
    .local v0, "apnType":Ljava/lang/String;
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isConnectedOnWifi()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1465
    iput v2, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiMgrState:I

    .line 1466
    sget-object v1, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 1469
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/PolicyManager;->getMapconPolicy()Ljava/lang/String;

    move-result-object v1

    .line 1471
    .local v1, "mapconPolicy":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v2, :cond_1

    .line 1472
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1474
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set mapcon prop - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v3}, Lcom/sec/epdg/mapcon/PolicyManager;->getMapconMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mMapconMode:Ljava/lang/String;

    .line 1478
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgMapcon()V

    .line 1481
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v3, v0}, Lcom/sec/epdg/mapcon/PolicyManager;->IsLteOnlyAllowedByMapconTable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 1482
    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    const-string v5, "DTAC_TH"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1483
    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isVolteEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1502
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1503
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1504
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    goto :goto_0

    .line 1505
    :cond_3
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1506
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1507
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 1508
    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1509
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "DNS is successful, start profiling"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    goto :goto_0

    .line 1512
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "DNS failed for all tries"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1515
    :cond_5
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    .line 1518
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/PolicyManager;->IsWifiOnlyAllowedByMapconTable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1519
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_3

    .line 1484
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v5, "CellularAvailable & LTE preferred or LTE only, disable wifi profiling"

    invoke-static {v3, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1486
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1487
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1488
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "handleMapconChange - do not need de-register "

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->isNotRequiredTimer:Z

    .line 1490
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v3, v3, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1491
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v3, v3, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1494
    :cond_8
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->isNotRequiredTimer:Z

    .line 1495
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v3, v3, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v3, v3, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1499
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1522
    :cond_a
    :goto_3
    return-void
.end method

.method protected handleRilEpdgStatusQuery()V
    .locals 4

    .line 1121
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mW2LAfterEpdgStatusQuery:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1122
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mW2LAfterEpdgStatusQuery:Z

    .line 1123
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getIwlanPsState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 1125
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/sec/epdg/EpdgSubScription;->startHandOverWifiToLte(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :goto_0
    goto :goto_1

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "W2L handover failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HANDOFF]"

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger W2L is not applicable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->getActiveRat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mL2WAfterEpdgStatusQuery:Z

    if-eqz v0, :cond_4

    .line 1134
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mL2WAfterEpdgStatusQuery:Z

    .line 1135
    const/4 v0, 0x2

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getIwlanPsState()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1136
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRunnable;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1137
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto :goto_2

    .line 1139
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto :goto_2

    .line 1142
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trigger L2W is not applicable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v2}, Lcom/sec/epdg/NetworkChangeController;->getActiveRat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_4
    :goto_2
    return-void
.end method

.method protected handleRtpPacketLoss(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1054
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingPrefState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1055
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiCommand;->getWifiRoamingForMobike(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "During Mobike."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return-void

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1065
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;

    .line 1066
    .local v0, "mIMSRtpLossRateChange":Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;
    if-nez v0, :cond_3

    .line 1067
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "mIMSRtpLossRateChange object is null."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void

    .line 1070
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIMSRtpLossRateChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->getRtpLossRate()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setCurrentRtpLossRate(I)V

    .line 1073
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1074
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isVolteEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1075
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->getForceW2L()I

    move-result v1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_5

    .line 1076
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 1077
    .local v1, "networkType":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 1078
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "Invalid network type for W2L handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void

    .line 1083
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "Fallback W2L handover"

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0, v1, v3}, Lcom/sec/epdg/EpdgSubScription;->startHandOverWifiToLte(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    goto :goto_0

    .line 1085
    :catch_0
    move-exception v2

    .line 1086
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "W2L handover trigger failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    .end local v1    # "networkType":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto/16 :goto_1

    .line 1089
    :cond_5
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v1, :cond_b

    .line 1090
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->getIsReachMax()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start Latency check due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/sec/epdg/Constants/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[OH_CRITERIA]"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    .line 1095
    invoke-virtual {v1, v3}, Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;->CheckBearerStateBeforeHandover(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1096
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "Current LTE is not available. So, ePDG needs to maintain current state during call."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    return-void

    .line 1099
    :cond_6
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isHandoverAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1100
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "Handover is unavailable. So, ePDG needs to maintain current state during call."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    return-void

    .line 1103
    :cond_7
    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mHasEspLoss:Z

    if-nez v1, :cond_8

    .line 1104
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "No esp packet loss. So ignore rtp loss this time."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void

    .line 1107
    :cond_8
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->sendDpdLatencyCheckEventToDpdHandler()V

    .line 1108
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->pollingRssi()V

    goto :goto_1

    .line 1110
    :cond_9
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "[HO_OPTIMIZATION]start RSSI polling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->pollingRssi()V

    goto :goto_1

    .line 1116
    :cond_a
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "[HO_OPTIMIZATION]ignore high latency"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :cond_b
    :goto_1
    return-void
.end method

.method protected handleVolteSettingChanged(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1148
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/epdg/EpdgSubScription;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V

    .line 1151
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->MoveToBasedOnSettings(I)V

    .line 1152
    return-void
.end method

.method protected initAfterimsReady()V
    .locals 6

    .line 1208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    .line 1209
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->getVoWifiStatus()Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    move-result-object v0

    .line 1210
    .local v0, "status":Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setVoWifiStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;)V

    .line 1211
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

    if-nez v1, :cond_0

    .line 1212
    new-instance v1, Lcom/sec/epdg/EpdgSettingObserver;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/sec/epdg/EpdgSettingObserver;-><init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

    .line 1214
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettingObserver;->selfUpdate()V

    .line 1216
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1217
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "Setting LTE idle mode profiling as per roaming and vowifi status"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isLteIdleModeProfilingSupported()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->toggleLteIdleModeProfiling(Z)V

    .line 1219
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    goto :goto_0

    .line 1220
    :cond_1
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1221
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->checkAndUpdateWifiPreferenceModes()V

    .line 1222
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    goto :goto_0

    .line 1223
    :cond_2
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1224
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "check device config value."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1226
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x3ee

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1227
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1230
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1231
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->checkAndUpdateWifiAvailability()V

    .line 1233
    :cond_4
    return-void
.end method

.method public isNeedsNotifySimChange()Z
    .locals 5

    .line 191
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "mccmnc":Ljava/lang/String;
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentMccmnc:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentSimImsi:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "isNeedsNotifySimChange : sim is not changed"

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return v3

    .line 201
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 194
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "isNeedsNotifySimChange : empty sim info"

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v3
.end method

.method protected isRegistrationRequired(ZZZZZ)Z
    .locals 7
    .param p1, "vowifiChanged"    # Z
    .param p2, "newValueW"    # Z
    .param p3, "voLteChanged"    # Z
    .param p4, "newValueL"    # Z
    .param p5, "vopsOrSsacChanged"    # Z

    .line 1421
    move v0, p1

    .line 1423
    .local v0, "bVowifiChanged":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1424
    const/4 v0, 0x0

    .line 1428
    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1429
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v4}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v4

    if-ne v4, v2, :cond_6

    .line 1430
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1431
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "re-regi is not required. IMS on LTE and VoLTE is on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    return v3

    .line 1434
    :cond_1
    const-string v4, "re-regi is not required. wifi preferred"

    const-string v5, "re-regi is not required. No LTE"

    if-eqz p3, :cond_3

    .line 1435
    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v6}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v6

    if-eq v6, v2, :cond_2

    .line 1436
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    return v3

    .line 1438
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1439
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    return v3

    .line 1442
    :cond_3
    if-eqz p5, :cond_5

    .line 1443
    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v6}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v6

    if-eq v6, v2, :cond_4

    .line 1444
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    return v3

    .line 1446
    :cond_4
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1447
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    return v3

    .line 1450
    :cond_5
    if-nez v0, :cond_6

    if-nez p3, :cond_6

    if-nez p5, :cond_6

    .line 1451
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "re-regi is not required. nothing changed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    return v3

    .line 1454
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "IMS RegistrationRequired - HO delay"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    return v1
.end method

.method isValidAddress(Ljava/net/InetAddress;)Z
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 1011
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1012
    .local v0, "result":Z
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidAddress: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return v0
.end method

.method public isW2LRecommended(I)Z
    .locals 5
    .param p1, "rilCid"    # I

    .line 2465
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 2466
    .local v0, "apnType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isW2LRecommended: rilCid is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " apnType is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    const/4 v1, 0x0

    .line 2468
    .local v1, "result":Z
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->isBlockHandOverApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2470
    :cond_0
    const-string v2, "cbs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2471
    const-string v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2474
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2475
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isW2LRecommended: VoWifi Session Connected result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2477
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 2472
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v1

    .line 2473
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isW2LRecommended: result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2469
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "isW2LRecommended: null apnType"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    :goto_2
    return v1
.end method

.method public synthetic lambda$makeEpdgServiceUp$0$EpdgSubScription()V
    .locals 4

    .line 617
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance(I)Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->createPolicyTable(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMapconMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mMapconMode:Ljava/lang/String;

    .line 619
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgMapcon()V

    .line 621
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance(I)Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->createPolicyTable(Landroid/content/Context;ZZ)Z

    .line 622
    return-void
.end method

.method public loadSubScription(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 138
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "loadSubScription"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSubScriptionEnable:Z

    if-nez v0, :cond_3

    .line 140
    iput p2, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    .line 141
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->InitializeModemInterface()V

    .line 142
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mVoWifiSettingObserver:Lcom/sec/epdg/VoWifiSettingObserver;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/sec/epdg/VoWifiSettingObserver;->registerObserver(I)V

    .line 143
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->updateSubId()V

    .line 144
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->setOperatorName()V

    .line 145
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->createInstance()Lcom/sec/epdg/EpdgUtilExt;

    .line 146
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgSettingsWriter;->createInstance(Landroid/content/Context;I)Lcom/sec/epdg/EpdgSettingsWriter;

    .line 147
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->Update()V

    .line 148
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/sec/epdg/IntentReceiver;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    iget v6, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/IntentReceiver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;II)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    .line 150
    invoke-virtual {v0}, Lcom/sec/epdg/IntentReceiver;->registerSimIntentReceiver()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgEntitlement:Lcom/sec/epdg/EpdgEntitlement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgEntitlement;->setEntitlementStatus(I)V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.imsservice"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, "appState":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 158
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "Register IMS_MNO_URI for getting mnoName"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

    if-nez v3, :cond_1

    .line 160
    new-instance v3, Lcom/sec/epdg/EpdgImsMnoContentObserver;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v3, v4, p0, v5}, Lcom/sec/epdg/EpdgImsMnoContentObserver;-><init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;I)V

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

    .line 161
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/Constants/SubScriptionConstant;->IMS_MNO_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "appState":I
    :cond_1
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ims setting not exist: + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->readSimInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "simMoMsg":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 171
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->registerSimMobilityStatusListener(Landroid/os/Message;)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    .line 174
    .end local v0    # "simMoMsg":Landroid/os/Message;
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSubScriptionEnable:Z

    goto :goto_1

    .line 176
    :cond_3
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v0, :cond_4

    .line 177
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSupportedTypes:I

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateSubId(I)V

    .line 180
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgConfiguration()Z

    .line 181
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgMapcon()V

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isNeedsNotifySimChange()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->readSimInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    .line 188
    :cond_5
    :goto_1
    return-void
.end method

.method public makeEpdgServiceUp()V
    .locals 5

    .line 615
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    .line 616
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/epdg/-$$Lambda$EpdgSubScription$SsNbJkGuP2gBE6Xrp5WYog0ulJ8;

    invoke-direct {v2, p0}, Lcom/sec/epdg/-$$Lambda$EpdgSubScription$SsNbJkGuP2gBE6Xrp5WYog0ulJ8;-><init>(Lcom/sec/epdg/EpdgSubScription;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 623
    new-instance v1, Lcom/sec/epdg/EpdgContentObserver;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/sec/epdg/EpdgContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    .line 624
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 626
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 628
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    if-nez v1, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 630
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE2:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 633
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE2:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 636
    :goto_0
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register content "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 642
    :cond_1
    new-instance v1, Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;-><init>(Lcom/sec/epdg/EpdgSubScription;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataContentObserver:Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

    .line 644
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant;->CONTENT_URI_IMSLOGAGENT_DRPT:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataContentObserver:Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    goto :goto_1

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-void
.end method

.method notifyEpdgAvailablity(Z)V
    .locals 1
    .param p1, "isEpdgAvailable"    # Z

    .line 2458
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScription;->mLastestEpdgAvailableState:Z

    .line 2459
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/TelephonyAdapter;->notifyDataRegistrationStateChange(I)V

    .line 2460
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 2461
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgAvailablity(Z)V

    .line 2462
    return-void
.end method

.method protected notifyQualifiedNetworksChange()V
    .locals 11

    .line 2115
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2116
    return-void

    .line 2118
    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_EMERGENCY:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2119
    .local v0, "index":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2120
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2121
    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->getIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2124
    .end local v3    # "i":I
    :cond_1
    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mLastestEpdgAvailableState:Z

    const/16 v4, 0xff

    if-nez v3, :cond_2

    .line 2126
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    new-instance v3, Lcom/sec/epdg/DataType/MapconInformation;

    invoke-direct {v3, v4, v2}, Lcom/sec/epdg/DataType/MapconInformation;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/sec/epdg/TelephonyAdapter;->notifyQualifiedNetworksChange(Lcom/sec/epdg/DataType/MapconInformation;)V

    .line 2127
    return-void

    .line 2130
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailabilityRecommended()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2132
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    new-instance v3, Lcom/sec/epdg/DataType/MapconInformation;

    invoke-direct {v3, v4, v2}, Lcom/sec/epdg/DataType/MapconInformation;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/sec/epdg/TelephonyAdapter;->notifyQualifiedNetworksChange(Lcom/sec/epdg/DataType/MapconInformation;)V

    .line 2133
    return-void

    .line 2136
    :cond_3
    invoke-static {}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->values()[Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    .line 2137
    .local v7, "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v7}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/epdg/mapcon/PolicyManager;->getApnRatPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    move-result-object v8

    .line 2138
    .local v8, "mode":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    invoke-virtual {v7}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getIntValue()I

    move-result v0

    .line 2139
    sget-object v9, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v8, v9, :cond_4

    .line 2140
    iget-object v9, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRatDeterminator:Lcom/sec/epdg/EpdgRatDeterminator;

    invoke-virtual {v9, v7}, Lcom/sec/epdg/EpdgRatDeterminator;->isL2WRecommended(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2141
    sget-object v9, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-virtual {v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->getIntValue(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2143
    :cond_4
    sget-object v9, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v8, v9, :cond_5

    .line 2144
    iget-object v9, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRatDeterminator:Lcom/sec/epdg/EpdgRatDeterminator;

    invoke-virtual {v9, v7}, Lcom/sec/epdg/EpdgRatDeterminator;->isW2LRecommended(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2145
    sget-object v9, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-virtual {v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->getIntValue(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2136
    .end local v7    # "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .end local v8    # "mode":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2150
    :cond_6
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/TelephonyAdapter;->getMapconInfo()Lcom/sec/epdg/DataType/MapconInformation;

    move-result-object v3

    .line 2151
    .local v3, "currentMapconInfo":Lcom/sec/epdg/DataType/MapconInformation;
    new-instance v5, Lcom/sec/epdg/DataType/MapconInformation;

    invoke-direct {v5, v4, v2}, Lcom/sec/epdg/DataType/MapconInformation;-><init>(ILjava/util/List;)V

    move-object v4, v5

    .line 2152
    .local v4, "mapconInfo":Lcom/sec/epdg/DataType/MapconInformation;
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    invoke-virtual {v5, v4}, Lcom/sec/epdg/TelephonyAdapter;->notifyQualifiedNetworksChange(Lcom/sec/epdg/DataType/MapconInformation;)V

    .line 2156
    invoke-virtual {p0, v3, v4}, Lcom/sec/epdg/EpdgSubScription;->deregiForHOBlock(Lcom/sec/epdg/DataType/MapconInformation;Lcom/sec/epdg/DataType/MapconInformation;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2157
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    .line 2159
    :cond_7
    return-void
.end method

.method protected notifyQualifiedNetworksChange(Ljava/lang/String;I)V
    .locals 5
    .param p1, "epdgApnType"    # Ljava/lang/String;
    .param p2, "handoverRat"    # I

    .line 2178
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2179
    return-void

    .line 2181
    :cond_0
    invoke-static {p1}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getIntValue()I

    move-result v0

    .line 2182
    .local v0, "index":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/TelephonyAdapter;->getMapconInfo()Lcom/sec/epdg/DataType/MapconInformation;

    move-result-object v1

    .line 2183
    .local v1, "lastMapconInfo":Lcom/sec/epdg/DataType/MapconInformation;
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/MapconInformation;->getPriorityList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2185
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v3, p1}, Lcom/sec/epdg/mapcon/PolicyManager;->IsLteOnlyAllowedByMapconTable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2186
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "APN type is not supported on ePDG"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    return-void

    .line 2190
    :cond_1
    const/16 v3, 0x12

    if-ne p2, v3, :cond_2

    .line 2191
    sget-object v3, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->getIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2193
    :cond_2
    sget-object v3, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->getIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2195
    :goto_0
    new-instance v3, Lcom/sec/epdg/DataType/MapconInformation;

    iget v4, v1, Lcom/sec/epdg/DataType/MapconInformation;->supportedTypes:I

    invoke-direct {v3, v4, v2}, Lcom/sec/epdg/DataType/MapconInformation;-><init>(ILjava/util/List;)V

    .line 2196
    .local v3, "mapconInfo":Lcom/sec/epdg/DataType/MapconInformation;
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/epdg/TelephonyAdapter;->notifyQualifiedNetworksChange(Lcom/sec/epdg/DataType/MapconInformation;)V

    .line 2197
    return-void
.end method

.method protected notifySimChangedEvent()V
    .locals 2

    .line 964
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getSimState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Sim was not loaded."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    return-void

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateConfigurationFromImsService()V

    .line 971
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->changeVoWifiSettingForSimBased(Z)V

    .line 972
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->ReadEpdgEnableSetting()V

    .line 974
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-nez v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Epdg service is not enabled."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    return-void

    .line 979
    :cond_1
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    if-nez v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Epdg service is not yet initialized, calling epdg initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->bootCompleted()V

    .line 983
    :cond_2
    return-void
.end method

.method public notifyTermination()V
    .locals 1

    .line 2689
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyTermination()V

    .line 2690
    return-void
.end method

.method public onEpdgReadinessConditionUpdate()V
    .locals 2

    .line 2678
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2681
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mServiceHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2682
    return-void

    .line 2679
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSystemSelectTimerFinish()V
    .locals 2

    .line 1525
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1526
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Wifi connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Smart Wifi already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->islteToWifiHORecommended()V

    goto :goto_0

    .line 1534
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1535
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 1536
    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1537
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "DNS is successful, adding routes"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    goto :goto_0

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "DNS failed for all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1543
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1546
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Wifi not connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :goto_0
    return-void
.end method

.method onVoWifiProvisioningStateChanged(I)V
    .locals 6
    .param p1, "isProvisioned"    # I

    .line 1351
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v0

    .line 1352
    .local v0, "isVolteProvisioned":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVoWifiProvisioningStateChanged: Is Volte provisioned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1357
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/sec/epdg/VoWifiSettings;->resetVowifiMdnCache(Landroid/content/Context;I)V

    .line 1362
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const/4 v4, 0x1

    invoke-static {v2, v3, p1, v4}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 1367
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1368
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    .line 1370
    :cond_0
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 1377
    :cond_1
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1378
    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v0, v2, :cond_2

    .line 1379
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    goto :goto_0

    .line 1381
    :cond_2
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->enableWfcActivity(Landroid/content/Context;IZ)Z

    goto :goto_0

    .line 1383
    :cond_3
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1384
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    .line 1387
    :cond_4
    :goto_0
    return-void
.end method

.method onVolteProvisioningStateChanged(I)V
    .locals 6
    .param p1, "isProvisioned"    # I

    .line 1309
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVowifiProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v0

    .line 1310
    .local v0, "isVowifiProvisioned":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolteProvisioningStateChanged: Is Vowifi provisioned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1316
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1320
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/sec/epdg/VoWifiSettings;->resetVowifiMdnCache(Landroid/content/Context;I)V

    .line 1325
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2, v3, p1, v1}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 1326
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    .line 1327
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-eq v0, v1, :cond_0

    .line 1328
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    goto :goto_1

    .line 1330
    :cond_0
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableVoWiFiMenu(Landroid/content/Context;I)V

    goto :goto_1

    .line 1338
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v2

    if-ne v2, v1, :cond_2

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->setVoWifiStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;)V

    .line 1342
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1343
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v0, v1, :cond_3

    .line 1344
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    .line 1348
    :cond_3
    :goto_1
    return-void
.end method

.method protected onWifiConnected()V
    .locals 2

    .line 1991
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 1992
    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    return-void

    .line 1995
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1996
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "wifi calling disabled, skip wifi connect event"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    return-void

    .line 1999
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "onWifiConnected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v0, v1, :cond_2

    .line 2001
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "TEpdg timer running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2002
    :cond_2
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2003
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2004
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "DNS is successful, start profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    goto :goto_0

    .line 2007
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "DNS failed for all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mFqdnRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgSubScription;->mFqdnRetryCount:I

    .line 2009
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 2010
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2011
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2012
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2014
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2015
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "DNS resolved, start WiFi profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    goto :goto_0

    .line 2018
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->islteToWifiHORecommended()V

    .line 2022
    :goto_0
    return-void
.end method

.method public pollingRssi()V
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->pollAndGetWifiRssi()V

    .line 1264
    return-void
.end method

.method readSimInfo()Z
    .locals 6

    .line 420
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getSubId(I)I

    move-result v0

    .line 421
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSimInfo(): subID is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return v2

    .line 425
    :cond_0
    iput v0, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    .line 426
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->saveCurMnoName()Z

    move-result v1

    .line 427
    .local v1, "mnoNameSaveSuccess":Z
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentMccmnc:Ljava/lang/String;

    .line 428
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgUtils;->getImsi()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentSimImsi:Ljava/lang/String;

    .line 430
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentMccmnc:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentMccmnc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    goto :goto_1

    .line 435
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_2

    goto :goto_0

    .line 440
    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readSimInfo() IMSI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 442
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sys.default.data.phoneid"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v2, 0x1

    return v2

    .line 436
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "readSimInfo(): invalid imsi"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return v2

    .line 431
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "readSimInfo(): mno name save fail or invalid mccmnc"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return v2
.end method

.method protected resetThrottleState(Ljava/lang/String;)V
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .line 1163
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetThrottleState apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgSubScription;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    .line 1167
    .local v0, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v0, :cond_1

    .line 1168
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1169
    .local v1, "dataRetryExpired":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 1170
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1172
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1174
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRetryTimerExpired: Unable to obtain message for SM with apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    .end local v0    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "dataRetryExpired":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method protected retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 2365
    const/4 v0, 0x0

    .line 2366
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nTimerStatus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    if-nez p1, :cond_0

    .line 2368
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "L2W handover failed : (null apnType)"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    return v0

    .line 2372
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "DIGI_MY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2373
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 2374
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 2375
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_2

    .line 2376
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "Block L2W as registration is not done"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    return v0

    .line 2380
    :cond_2
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2381
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getE911CallCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdnConnected:Z

    if-nez v1, :cond_3

    .line 2382
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "active e911 call or dialing e911 call."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    return v0

    .line 2386
    :cond_3
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 2392
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryL2WHandoverIfRequired(): apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " networkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const/4 v2, -0x1

    if-eq v2, v1, :cond_7

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2394
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 2395
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2394
    invoke-virtual {v3, p1, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2396
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    sget-object v4, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    if-ne v3, v4, :cond_4

    .line 2397
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "delay L2W handover until regi-done"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    const/4 v2, 0x1

    return v2

    .line 2401
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "Firing L2W handover"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    invoke-virtual {p0, v1, p2}, Lcom/sec/epdg/EpdgSubScription;->startHandoverLteToWifi(ILcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    .local v3, "ret":I
    if-eq v3, v2, :cond_5

    .line 2404
    const/4 v0, 0x1

    .line 2408
    .end local v3    # "ret":I
    :cond_5
    :goto_0
    goto :goto_1

    .line 2406
    :catch_0
    move-exception v2

    .line 2407
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L2W Handover not required."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2410
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "L2W is not recommended"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    :cond_7
    :goto_1
    return v0
.end method

.method protected retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2295
    const/4 v0, 0x0

    .line 2296
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nTimerStatus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    if-nez p1, :cond_0

    .line 2298
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "W2L handover failed : (null apnType)"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    return v0

    .line 2301
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2302
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "TEPDGLTE timer running, W2L not recommended"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    return v0

    .line 2306
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2307
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "VoWIFI session is connected. So skip W2L Handover."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    return v0

    .line 2311
    :cond_2
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Hutchison_GB"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "VoPS not supported. Skip W2L Handover"

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 2312
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 2313
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getCheckForRoamingVops()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 2314
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v6, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v6, :cond_4

    .line 2315
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2316
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "VoPS not supported. Send De-register"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    .line 2319
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    return v0

    .line 2322
    :cond_4
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2323
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getE911CallCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdnConnected:Z

    if-nez v1, :cond_5

    .line 2324
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "active e911 call or dialing e911 call."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    return v0

    .line 2329
    :cond_5
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v6, "Vodafone_GB"

    const-string v7, "Claro_BR"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 2330
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 2331
    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getCheckForRoamingVops()I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 2332
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v3, :cond_6

    .line 2333
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "VoPS not supported. Send De-register in call idle status"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    .line 2336
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    return v0

    .line 2340
    :cond_7
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 2341
    .local v1, "networkType":I
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2342
    .local v2, "rule":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v3, v1, :cond_a

    .line 2343
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v3, p1, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2344
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    sget-object v4, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    if-ne v3, v4, :cond_8

    .line 2345
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "delay W2L handover until regi-done"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    const/4 v3, 0x1

    return v3

    .line 2349
    :cond_8
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "Firing W2L handover"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    invoke-virtual {p0, v1, v5}, Lcom/sec/epdg/EpdgSubScription;->startHandOverWifiToLte(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2351
    const/4 v0, 0x1

    .line 2354
    :goto_0
    goto :goto_1

    .line 2352
    :catch_0
    move-exception v3

    .line 2353
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W2L handover not required."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2356
    :cond_9
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v4, "W2L handover not recommended"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2359
    :cond_a
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not retry W2L handover. apnType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " networkType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    :goto_1
    return v0
.end method

.method public saveCurMnoName(Ljava/lang/String;)V
    .locals 3
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 335
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ril.epdg.currenMno"

    if-nez v1, :cond_1

    .line 336
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/Operator/EpdgOperator;->setMnoName(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/sec/epdg/EpdgUtils;->setEpdgProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCurMnoName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgSubScription;->setMnoNameToDb(Ljava/lang/String;)V

    .line 342
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->setOperatorName()V

    .line 345
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgSettings()V

    .line 346
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnoname not changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_1
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/sec/epdg/EpdgUtils;->setEpdgProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "notset"

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setMnoNameToDb(Ljava/lang/String;)V

    .line 355
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgConfiguration()Z

    .line 356
    return-void
.end method

.method public saveCurMnoName()Z
    .locals 7

    .line 310
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 311
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.imsservice"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 312
    .local v2, "appState":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getMnoNameFromDB()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "mnoNameFromDB":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get mnoname from getMnoNameFromDB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    invoke-virtual {p0, v3}, Lcom/sec/epdg/EpdgSubScription;->saveCurMnoName(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_0
    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgUtils;->IsTestSim()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v5, "saveCurMnoName() Test sim card"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return v0

    .line 327
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "appState":I
    .end local v3    # "mnoNameFromDB":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "ie":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ims setting not exist: + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v1    # "ie":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "imsservice should exist and return mnoname from P OS!!!"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return v0
.end method

.method protected sendRoamingVoiceNetworkAvailability(Z)V
    .locals 3
    .param p1, "voiceNwAvailability"    # Z

    .line 2444
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRoamingVoiceNetworkAvailability as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2446
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v0, v1, :cond_0

    .line 2447
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setIsPendingVoiceAvailability(Z)V

    .line 2448
    return-void

    .line 2450
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 2451
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 2452
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyVoiceRatAvailability(Z)V

    .line 2455
    :cond_3
    return-void
.end method

.method sendWifiStatusChangedNotification(Z)V
    .locals 8
    .param p1, "isWifiConnected"    # Z

    .line 2239
    const/4 v0, 0x0

    .line 2240
    .local v0, "newSsid":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2241
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2244
    :cond_0
    const/4 v1, 0x0

    .line 2245
    .local v1, "isSsidChanged":Z
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->isWiFiSsidChanged(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mLastSsid:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 2246
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID changed. Old Ssid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", New SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2247
    const/4 v1, 0x1

    .line 2249
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Ssid changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    if-eqz v1, :cond_3

    .line 2253
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2254
    .local v2, "ssidChangeIntent":Landroid/content/Intent;
    const-string v4, "com.sec.epdg.EPDG_SSID_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2255
    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const-string v5, "phoneId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2256
    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2259
    .end local v2    # "ssidChangeIntent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v5, v2, v3

    .line 2260
    .local v5, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v6

    .line 2261
    .local v6, "msg":Landroid/os/Message;
    const/16 v7, 0xa

    iput v7, v6, Landroid/os/Message;->what:I

    .line 2262
    iput p1, v6, Landroid/os/Message;->arg1:I

    .line 2263
    if-eqz p1, :cond_4

    .line 2264
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2265
    iput v1, v6, Landroid/os/Message;->arg2:I

    .line 2267
    :cond_4
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2259
    .end local v5    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    .end local v6    # "msg":Landroid/os/Message;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2269
    :cond_5
    if-eqz p1, :cond_8

    .line 2272
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_L2W_AND_W2L:Z

    if-eqz v2, :cond_6

    .line 2273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mL2WAfterEpdgStatusQuery:Z

    goto :goto_1

    .line 2275
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRunnable;->getIsLteAvailable()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2276
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {p0, v2, v3}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto :goto_1

    .line 2278
    :cond_7
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {p0, v2, v3}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    .line 2281
    :goto_1
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mLastSsid:Ljava/lang/String;

    .line 2283
    :cond_8
    return-void
.end method

.method public setCarrierFeatureUpdate(Z)V
    .locals 0
    .param p1, "needUpdateCarrierFeature"    # Z

    .line 2566
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScription;->mNeedUpdateCarrierFeature:Z

    .line 2567
    return-void
.end method

.method protected setEpdgTemporaryBlocked(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;)V
    .locals 5
    .param p1, "reason"    # Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 1915
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 1916
    return-void

    .line 1918
    :cond_0
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 1919
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->BLOCKLIST_COUNTRY:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    if-ne v0, v1, :cond_3

    .line 1921
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    const-string v1, "country_detector"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 1922
    .local v0, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    .line 1924
    .local v1, "country":Landroid/location/Country;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "UNKNOWN"

    :goto_0
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mBlockListCountry:Ljava/lang/String;

    .line 1925
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blocklist country code :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mBlockListCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    if-nez v2, :cond_2

    .line 1927
    new-instance v2, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    invoke-direct {v2, p0}, Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;-><init>(Lcom/sec/epdg/EpdgSubScription;)V

    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    .line 1929
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 1931
    .end local v0    # "countryDetector":Landroid/location/CountryDetector;
    .end local v1    # "country":Landroid/location/Country;
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEpdgTemporaryBlocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    return-void
.end method

.method protected setHoDelay(Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 1390
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    if-eq v0, v1, :cond_3

    .line 1391
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScription;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 1392
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHoDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    if-ne p1, v0, :cond_1

    .line 1394
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1397
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1402
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 1405
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    if-ne p1, v0, :cond_3

    .line 1406
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1408
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    .line 1409
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    goto :goto_0

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1411
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1412
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1413
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 1417
    :cond_3
    :goto_0
    return-void
.end method

.method setVoWifiStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 1819
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updatePolicyTable()V

    .line 1820
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    if-ne p1, v0, :cond_1

    .line 1821
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v0, :cond_0

    .line 1822
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    goto :goto_0

    .line 1824
    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 1826
    :goto_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "MTS_RU"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1827
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->resetThrottleState(Ljava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset throttle state for MTS when wifi calling disabled for APN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1830
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    if-ne p1, v0, :cond_2

    .line 1832
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 1834
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWiFiCallEnabled is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-static {v0, v1}, Lcom/sec/epdg/WifiInterface/EpdgWifiCommand;->setWifiRssiPollSate(Landroid/content/Context;Z)V

    .line 1839
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    if-ne v0, v1, :cond_6

    .line 1840
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1841
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1842
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1843
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1845
    :cond_4
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1848
    :cond_5
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 1850
    invoke-virtual {p0, v3}, Lcom/sec/epdg/EpdgSubScription;->setIsOnDemandApnConnectionFailed(Z)V

    goto/16 :goto_3

    .line 1851
    :cond_6
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    if-ne v0, v1, :cond_8

    .line 1856
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1857
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1858
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1859
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1860
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v4

    .line 1857
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    goto/16 :goto_3

    .line 1862
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1863
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1864
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRovein()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1865
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v4

    .line 1862
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    goto/16 :goto_3

    .line 1867
    :cond_8
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    if-ne v0, v1, :cond_d

    .line 1869
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v0, :cond_c

    .line 1870
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1871
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v0

    .line 1872
    .local v0, "BEST_RSRP":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    .line 1873
    .local v1, "LOW_RSRP":I
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRovein()I

    move-result v2

    .line 1874
    .local v2, "BEST_RSRQ":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v3

    .line 1875
    .local v3, "LOW_RSRQ":I
    iget v4, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1876
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1877
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    .line 1878
    :cond_9
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v3

    .line 1880
    :cond_a
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    .line 1881
    .end local v0    # "BEST_RSRP":I
    .end local v1    # "LOW_RSRP":I
    .end local v2    # "BEST_RSRQ":I
    .end local v3    # "LOW_RSRQ":I
    goto :goto_3

    .line 1882
    :cond_b
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mDisabledByNoRan:Z

    if-eqz v0, :cond_d

    .line 1883
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->checkAndUpdateWifiAvailability()V

    .line 1884
    iput-boolean v3, p0, Lcom/sec/epdg/EpdgSubScription;->mDisabledByNoRan:Z

    goto :goto_3

    .line 1888
    :cond_c
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->checkAndUpdateWifiAvailability()V

    .line 1891
    :cond_d
    :goto_3
    return-void
.end method

.method protected setWifiMgrState(I)V
    .locals 0
    .param p1, "wifiMgrState"    # I

    .line 2597
    invoke-super {p0, p1}, Lcom/sec/epdg/EpdgSubScriptionBase;->setWifiMgrState(I)V

    .line 2598
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->onEpdgReadinessConditionUpdate()V

    .line 2599
    return-void
.end method

.method protected shouldMoveToLte(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/PolicyManager;->shouldMoveToLteByMapconTable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected startCellularProfiling()V
    .locals 8

    .line 2056
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-nez v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t start cellular profiling, Epdg service is not enabled."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    return-void

    .line 2060
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 2062
    .local v0, "apnType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2063
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->configureEpdgCsThresholds()V

    .line 2064
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v1

    .line 2065
    .local v1, "isCsPrefMode":Z
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v3, v3, Lcom/sec/epdg/EpdgRunnable;->mLteOn:Lcom/sec/epdg/EpdgServiceRunnable;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v4, v4, Lcom/sec/epdg/EpdgRunnable;->mLteOff:Lcom/sec/epdg/EpdgServiceRunnable;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v5, v5, Lcom/sec/epdg/EpdgRunnable;->mWiFiMeasurement:Lcom/sec/epdg/EpdgServiceRunnable;

    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->startProfiling(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZLcom/sec/epdg/DataType/EpdgCsThreshold;)V

    .line 2067
    .end local v1    # "isCsPrefMode":Z
    goto :goto_0

    .line 2068
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "startCellularProfiling: Cellular profiling not started as wifi profiling is not running"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    :goto_0
    return-void
.end method

.method protected startEpdgDisconnection(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V
    .locals 2
    .param p1, "reason"    # Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 1181
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1183
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v1, v1, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1185
    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_IKE_ERROR:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    if-ne p1, v0, :cond_1

    .line 1186
    return-void

    .line 1188
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 1190
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setIsOnDemandApnConnectionFailed(Z)V

    .line 1192
    iput v0, p0, Lcom/sec/epdg/EpdgSubScription;->mFqdnRetryCount:I

    .line 1193
    return-void
.end method

.method protected startHandOverWifiToLte(II)I
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "HOtype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Wifi RSSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHandOverWifiToLte HOtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HANDOFF]Cannot trigger W2L HO: (AP ASSIST MODE) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    return v1

    .line 1696
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1697
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "wifi state is disconnected state."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1698
    :cond_1
    if-ne p2, v2, :cond_2

    .line 1699
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "move pdn from wifi. mWifiOff or wifi disconnected case."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1700
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1701
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "SmartWifi not Running."

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    return v1

    .line 1704
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 1705
    .local v0, "returnVal":I
    const-string v1, "skip W2L for EMERGENCY PDN once Wi-Fi is connected, apnType: "

    const-string v3, "skip W2L for EMERGENCY PDN during call - apnType: "

    const-string v4, "emergency"

    if-eqz p2, :cond_8

    if-eq p2, v2, :cond_4

    .line 1757
    const/4 v0, -0x1

    goto/16 :goto_3

    .line 1737
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_7

    .line 1738
    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    .line 1739
    .local v6, "apnType":Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startHandOverWifiToLte, apnType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1741
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v7}, Lcom/sec/epdg/NetworkChangeController;->getCallStateFromPsl()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgImsManagerHelper;->isImsEmergencyCall()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1742
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    goto :goto_2

    .line 1745
    :cond_5
    iget v7, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v7}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1746
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    goto :goto_2

    .line 1750
    :cond_6
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 1751
    .local v7, "msg":Landroid/os/Message;
    iput v2, v7, Landroid/os/Message;->what:I

    .line 1752
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1737
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1754
    .end local v5    # "i":I
    :cond_7
    goto/16 :goto_3

    .line 1707
    :cond_8
    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v5

    .line 1708
    .local v5, "cid":I
    if-le v2, v5, :cond_9

    .line 1709
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHandOverWifiToLte() invalid cid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const/4 v0, -0x1

    .line 1711
    goto/16 :goto_3

    .line 1714
    :cond_9
    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v7, v5, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v6

    .line 1715
    .local v6, "iWlanState":I
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    .line 1716
    .local v7, "apnType":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startHandOverWifiToLte iWlanState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1719
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v4}, Lcom/sec/epdg/NetworkChangeController;->getCallStateFromPsl()I

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgImsManagerHelper;->isImsEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1720
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const/4 v0, -0x1

    .line 1722
    goto :goto_3

    .line 1724
    :cond_a
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1725
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const/4 v0, -0x1

    .line 1727
    goto :goto_3

    .line 1730
    :cond_b
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, v5, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1731
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 1732
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1733
    nop

    .line 1761
    .end local v1    # "msg":Landroid/os/Message;
    .end local v5    # "cid":I
    .end local v6    # "iWlanState":I
    .end local v7    # "apnType":Ljava/lang/String;
    :goto_3
    return v0
.end method

.method protected startHandoverLteToWifi(ILcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)I
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "reason"    # Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1580
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HANDOFF]Cannot trigger L2W HO: (AP ASSIST MODE) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    return v1

    .line 1585
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getIwlanPsState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HANDOFF]Cannot trigger L2W HO: (EPDG NOT AVAILABLE) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    return v1

    .line 1592
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1593
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HANDOFF]Cannot trigger L2W HO: (WIFI NOT CONNECTED) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    return v1

    .line 1597
    :cond_2
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1598
    .local v0, "nwkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 1604
    :cond_3
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1605
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->IsVoLteAvailableNetwork()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1606
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "[HANDOFF]Block handover from not LTE to Wifi"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    return v1

    .line 1615
    :cond_4
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->WIFI_THRESHOLD_BASED_HO:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1616
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v3

    .line 1617
    .local v3, "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call status is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " check for LTE availability"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->checkLteBasedOnNetworkSettings()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1619
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v6, "LTE is available, now check for wifi strength"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v5

    .line 1621
    .local v5, "rssi":I
    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v6

    .line 1622
    .local v6, "mWiFiRoveInValue":I
    const/4 v7, 0x3

    new-array v8, v7, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v9, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v9, v8, v4

    sget-object v9, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v9, v8, v2

    sget-object v9, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v8

    const-string v9, " handover rssi: "

    if-eqz v8, :cond_5

    .line 1623
    iget v7, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v7}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1624
    if-ge v5, v6, :cond_8

    .line 1625
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Voice call/Idle and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v2, v6}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->startL2WHandoverProfiling(I)V

    .line 1628
    return v1

    .line 1631
    :cond_5
    new-array v8, v10, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v10, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v10, v8, v4

    sget-object v10, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v10, v8, v2

    invoke-virtual {v3, v8}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1632
    if-ge v5, v6, :cond_6

    .line 1633
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Video call and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v2, v6}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->startL2WHandoverProfiling(I)V

    .line 1636
    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    .line 1637
    return v1

    .line 1639
    :cond_6
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/epdg/EpdgSubScription;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1640
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/epdg/EpdgSubScription;->getThrottleCount(Ljava/lang/String;)I

    move-result v8

    if-lt v8, v7, :cond_8

    .line 1641
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CALL_STAUTS is VIDEO or VIDEO_VOICE, but ThrottleTimer is running ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") now"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    sget-object v7, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {p0, v7}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    goto :goto_0

    .line 1645
    :cond_7
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifi rssi is good for handover. rssi: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " wifi rssi A: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    .end local v5    # "rssi":I
    .end local v6    # "mWiFiRoveInValue":I
    :cond_8
    :goto_0
    goto :goto_1

    .line 1648
    :cond_9
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v6, "LTE is unavailable based upon settings, perform L2W handover"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    .end local v3    # "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    :cond_a
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v5, "[HANDOFF]Starting HandOver To Wifi"

    invoke-static {v3, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1654
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->algoForStartProfiling()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1655
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "wifi not good enough or captivePortal not authenticated"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v2

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    .line 1657
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    .line 1656
    invoke-virtual {v2, v4, v3, v5}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyL2WHandoverResult(ZLjava/lang/String;Z)V

    .line 1658
    return v1

    .line 1664
    :cond_b
    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v3

    .line 1665
    .local v3, "cid":I
    if-le v2, v3, :cond_c

    .line 1666
    return v1

    .line 1668
    :cond_c
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v5, v3, -0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1669
    .local v2, "smHandler":Landroid/os/Handler;
    if-nez v2, :cond_d

    .line 1670
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting HandOver To Wifi: SM handler for cid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is null. Should never happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    return v1

    .line 1674
    :cond_d
    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 1675
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_e

    .line 1676
    iput v4, v5, Landroid/os/Message;->what:I

    .line 1677
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 1678
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1679
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1684
    return v4

    .line 1681
    :cond_e
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting HandOver To Wifi: Unable to obtain message for SM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    return v1

    .line 1661
    .end local v2    # "smHandler":Landroid/os/Handler;
    .end local v3    # "cid":I
    .end local v5    # "msg":Landroid/os/Message;
    :cond_f
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v3, "SmartWifi not Running."

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    return v1

    .line 1599
    :cond_10
    :goto_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HANDOFF]Cannot trigger L2W HO: (PDN Not active on other RAT) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " networkInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    return v1
.end method

.method public startPendingProfilingAfterCall()V
    .locals 2

    .line 2483
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/NetworkChangeController;->setIsRssiDisabledForProfiling(Z)V

    .line 2484
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getPendingProfilingDuringCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2485
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2486
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 2487
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->startProfiling()V

    .line 2490
    :cond_0
    return-void
.end method

.method protected startProfiling()V
    .locals 7

    .line 2030
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-nez v0, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t start profiling beacuse Epdg service is not enabled."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    return-void

    .line 2035
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/mapcon/PolicyManager;->IsLteOnlyAllowedByMapconTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2036
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Don\'t start wifi profiling.MAPCON is LTE"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    return-void

    .line 2040
    :cond_1
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2041
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2042
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Block startProfiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    return-void

    .line 2045
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Restore HandoverEnable"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->UpdateHandover()V

    .line 2048
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgSubScription;->mFqdnRetryCount:I

    .line 2050
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v2, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOn:Lcom/sec/epdg/EpdgServiceRunnable;

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v3, v0, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v4, v0, Lcom/sec/epdg/EpdgRunnable;->mL2WHandoverProfilingOn:Lcom/sec/epdg/EpdgServiceRunnable;

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v5, v0, Lcom/sec/epdg/EpdgRunnable;->mLteMeasurement:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 2051
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiThreshold()Lcom/sec/epdg/DataType/EpdgWifiThreshold;

    move-result-object v6

    .line 2050
    invoke-virtual/range {v1 .. v6}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->startWifiProfiling(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/epdg/DataType/EpdgWifiThreshold;)V

    .line 2052
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->startCellularProfiling()V

    .line 2053
    return-void
.end method

.method startTimerForPdnXfer(JI)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "networkType"    # I

    .line 2435
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimerForPdnXfer: Updating the alarm with delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgPdnXferRunnable;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgPdnXferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2439
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgPdnXferRunnable;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-direct {v0, p0, v1, p3}, Lcom/sec/epdg/EpdgPdnXferRunnable;-><init>(Lcom/sec/epdg/EpdgSubScription;II)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgPdnXferRunnable;

    .line 2440
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgPdnXferRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2441
    return-void
.end method

.method protected startTimersIfNeeded()V
    .locals 4

    .line 1783
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->isNotRequiredTimer:Z

    if-nez v0, :cond_8

    .line 1785
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiSetting:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1786
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1787
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Wifi Setting on"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Telkom_ZA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1790
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "ATT. Call exists. Don`t start TEPDG timer "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1791
    :cond_1
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Vodafone_NL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Vodafone NL. Call exists. Send TIMER_TEPDG_EXPIRED after 10s"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1794
    :cond_2
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1795
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiRoamPrefSetting()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 1796
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1797
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, "newSsid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->isWiFiSsidChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1799
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "SSID Changed. Don`t start TEPDG timer"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1801
    :cond_4
    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 1802
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1803
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 1806
    .end local v0    # "newSsid":Ljava/lang/String;
    :cond_6
    :goto_0
    goto :goto_1

    .line 1808
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Wifi Setting off"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1811
    :cond_8
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "isNotRequireTimer is true. reset it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->isNotRequiredTimer:Z

    .line 1814
    :cond_9
    :goto_1
    return-void
.end method

.method protected stopProfiling()V
    .locals 1

    .line 2025
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->stopProfiling()V

    .line 2026
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->stopProfiling()V

    .line 2027
    return-void
.end method

.method public syncSettingsDBwithEpdgDB(Landroid/os/Message;)V
    .locals 4
    .param p1, "OnComplete"    # Landroid/os/Message;

    .line 2651
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    if-eqz v0, :cond_0

    .line 2652
    return-void

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "syncSettingsDBwithEpdgDB Start...."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    .line 2656
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->updateSubId()V

    .line 2657
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->setOperatorName()V

    .line 2658
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->Update()V

    .line 2659
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 2660
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v2

    .line 2659
    const-string v3, "SIM_MOBILITY_CHANGE"

    invoke-static {v0, v1, v3, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    .line 2661
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->readSimInfo()Z

    .line 2662
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getSimState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2663
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    .line 2664
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2665
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "syncSettingsDBwithEpdgDB request rescheduled as SIM is not ready"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    return-void

    .line 2668
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mVoWifiSettingObserver:Lcom/sec/epdg/VoWifiSettingObserver;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mSubId:I

    invoke-virtual {v0, v2}, Lcom/sec/epdg/VoWifiSettingObserver;->registerObserver(I)V

    .line 2669
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->notifySimChangedEvent()V

    .line 2671
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "syncSettingsDBwithEpdgDB finish...."

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgDBSyncinProgress:Z

    .line 2674
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2675
    return-void
.end method

.method toggleLteIdleModeProfiling(Z)V
    .locals 3
    .param p1, "profilingMode"    # Z

    .line 1567
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleLteIdleModeProfiling: profilingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iput-boolean p1, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    .line 1569
    if-eqz p1, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1571
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->startLteProfiling()V

    goto :goto_0

    .line 1573
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_1

    .line 1574
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->stopLteProfiling()V

    .line 1577
    :cond_1
    :goto_0
    return-void
.end method

.method toggleLteProfiling()V
    .locals 3

    .line 1551
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleLteProfiling: Roaming status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v2}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->stopLteProfiling()V

    .line 1554
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    goto :goto_0

    .line 1557
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    .line 1559
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1561
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->startLteProfiling()V

    .line 1564
    :cond_1
    :goto_0
    return-void
.end method

.method public unloadSubScription()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "unloadSubScription"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "Unloaded"

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mVoWifiSettingObserver:Lcom/sec/epdg/VoWifiSettingObserver;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/sec/epdg/VoWifiSettingObserver;->resetPrevVoWifiSettings()V

    .line 210
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mVoWifiSettingObserver:Lcom/sec/epdg/VoWifiSettingObserver;

    invoke-virtual {v0}, Lcom/sec/epdg/VoWifiSettingObserver;->unregisterObserver()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 213
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubScriptionEnable:Z

    if-eqz v1, :cond_a

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSubScriptionEnable:Z

    .line 215
    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 216
    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->startEpdgDisconnection(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 217
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v5}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 220
    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->setCurrentWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 221
    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgSubScription;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v5}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 225
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v5}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 226
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgRunnable;->setIsLteAvailable(Z)V

    .line 228
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    if-nez v2, :cond_3

    .line 229
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    const-string v5, "EE_GB"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v5, v5, Lcom/sec/epdg/EpdgRunnable;->mWifiCallingOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v5, v5, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    iget-object v5, v5, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->stopProfiling()V

    .line 238
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v5, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {v2, v5}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 239
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIdFromSim()V

    .line 240
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->setIsOnDemandApnConnectionFailed(Z)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->setLteAndWifiMeasurementMaxCnt(I)V

    .line 243
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->enableReceiver(Z)V

    .line 246
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    if-eqz v2, :cond_4

    .line 247
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 248
    iput-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgContentObserver:Lcom/sec/epdg/EpdgContentObserver;

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataContentObserver:Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

    if-eqz v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataContentObserver:Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 253
    iput-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataContentObserver:Lcom/sec/epdg/EpdgSubScription$EpdgBigDataContentObserver;

    .line 256
    :cond_5
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    if-eqz v2, :cond_6

    .line 257
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .line 259
    :cond_6
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sec/epdg/EpdgUtils;->setNeedToResetThrottle(Z)V

    .line 260
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgUtilExt;->setSimInitialized(IZ)V

    .line 261
    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgSubScription;->setIsimState(Z)V

    .line 262
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    .line 263
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIsImsReady:Z

    .line 264
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    .line 265
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgEntitlement:Lcom/sec/epdg/EpdgEntitlement;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgEntitlement;->setEntitlementStatus(I)V

    .line 266
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdnConnected:Z

    .line 267
    iput-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mCurrentSimImsi:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    sget-object v5, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-virtual {v2, v5}, Lcom/sec/epdg/NetworkChangeController;->setRoaming(Lcom/sec/epdg/Constants/EpdgConstants$TriState;)V

    .line 270
    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v3, v2, :cond_7

    .line 271
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const-string v6, "epdg_support"

    invoke-static {v2, v6, v1, v5}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 272
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    const-string v6, "simmobility_status"

    invoke-static {v2, v6, v1, v5}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 276
    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    if-eqz v1, :cond_8

    .line 277
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    invoke-virtual {v1}, Lcom/sec/epdg/IntentReceiver;->unregisterReceiver()V

    .line 278
    iput-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_8
    goto :goto_1

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v5, "mNetworkStateChangeReceiver was not registered."

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

    if-eqz v1, :cond_9

    .line 285
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    iput-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgImsMnoContentObserver:Lcom/sec/epdg/EpdgImsMnoContentObserver;

    .line 288
    :cond_9
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->unregisterSimMobilityStatusListener()V

    .line 290
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    if-eq v3, v1, :cond_a

    .line 291
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    .line 294
    :cond_a
    return-void
.end method

.method protected unregisterAll()V
    .locals 5

    .line 2617
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNMService:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIfaceObserver:Lcom/sec/epdg/EpdgNetworkManagementObserver;

    if-eqz v0, :cond_0

    .line 2619
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mIfaceObserver:Lcom/sec/epdg/EpdgNetworkManagementObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2622
    goto :goto_0

    .line 2620
    :catch_0
    move-exception v0

    .line 2621
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIfaceObserver:Lcom/sec/epdg/EpdgNetworkManagementObserver;

    .line 2625
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    if-eqz v0, :cond_1

    .line 2626
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgRilSharedData;->setEpdgInitialized(Z)V

    .line 2629
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    if-eqz v0, :cond_2

    .line 2630
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    const-string v2, "country_detector"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 2631
    .local v0, "countryDetector":Landroid/location/CountryDetector;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    invoke-virtual {v0, v2}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 2632
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mCountryListener:Lcom/sec/epdg/EpdgSubScription$EpdgCountryCodeListener;

    .line 2635
    .end local v0    # "countryDetector":Landroid/location/CountryDetector;
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

    if-eqz v0, :cond_3

    .line 2636
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2637
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgSettingObserver;

    .line 2639
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    if-eqz v0, :cond_4

    .line 2640
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->unregisterPhoneStateListener()V

    .line 2643
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    if-eqz v0, :cond_5

    .line 2644
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2645
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPackageIntentReceiver:Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    .line 2647
    :cond_5
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->unloadSubScription()V

    .line 2648
    return-void
.end method

.method public updateCpEpdgHoThreshold(Z)V
    .locals 3
    .param p1, "isAvailable"    # Z

    .line 2089
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->configureEpdgCsThresholds()V

    .line 2091
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 2092
    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isStgCdmaOperators()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->isEpdgCsThresholdEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2097
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Do not support CP threshold function"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    return-void

    .line 2100
    :cond_1
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScription;->isCpThresholdTurnOn:Z

    .line 2101
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-interface {v0, p1, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZLcom/sec/epdg/DataType/EpdgCsThreshold;)V

    goto :goto_1

    .line 2093
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    .line 2094
    .local v0, "isImsOverEpdg":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-interface {v1, p1, v0, v2}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZZLcom/sec/epdg/DataType/EpdgCsThreshold;)V

    .line 2095
    .end local v0    # "isImsOverEpdg":Z
    nop

    .line 2103
    :goto_1
    return-void
.end method

.method updateEpdgMapcon()V
    .locals 3

    .line 2106
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mSupportedTypes:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mMapconMode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgMapcon(ILjava/lang/String;)Z

    .line 2108
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    goto :goto_0

    .line 2110
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Epdg service is not yet initialized"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :goto_0
    return-void
.end method

.method public updateEpdgSettings()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "updateEpdgSettings: update epdgsettings and start initialization if needed."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/sec/epdg/IntentReceiver;->unregisterReceiver()V

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->initializeEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 383
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    :goto_0
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 384
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 385
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/throttle/ThrottleController;->onSettingUpdated(ZZ)V

    .line 388
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updatePolicyTable()V

    .line 389
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Setting LTE idle mode profiling as per roaming and vowifi status"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isLteIdleModeProfilingSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->toggleLteIdleModeProfiling(Z)V

    .line 395
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->checkAndUpdateWifiPreferenceModes()V

    .line 398
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiCallingPrefState:I

    .line 401
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->getRtpTimeOutValueFromImsProfile(Ljava/lang/String;)I

    move-result v0

    .line 402
    .local v0, "mMeasurementCount":I
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->setLteAndWifiMeasurementMaxCnt(I)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->initializePacketLossThLoggingField()V

    .line 404
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mIntentReceiver:Lcom/sec/epdg/IntentReceiver;

    if-eqz v1, :cond_3

    .line 405
    invoke-virtual {v1}, Lcom/sec/epdg/IntentReceiver;->initializeIntentReceiver()V

    .line 408
    :cond_3
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EPDG_SERVER_ID_FROM_SIM:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 409
    invoke-static {v1}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    .line 410
    invoke-static {v1}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIdFromSim()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 411
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->setEpdgServerIdFromSim()V

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getNewEpdgBigDataInstance(Landroid/content/Context;I)Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 416
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgConfiguration()Z

    .line 417
    return-void
.end method

.method public updateHandoverPropForDSDS_DI()V
    .locals 2

    .line 1020
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->getInstance()Lcom/sec/epdg/EpdgUtilExt;

    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->isHandoverBlockForDSDS_DI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Handover not blocked for DSDS_DI. Don`t need to set prop."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v1, "Ho blocked by another subscription. set my own ho prop during blocked."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScription;->updateHandoverEnableSetting(Z)V

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->UpdateHandover()V

    .line 1030
    :goto_0
    return-void
.end method

.method updateMapconTableByNettype()V
    .locals 1

    .line 2693
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->updateMapconTableByNettype()V

    .line 2694
    return-void
.end method

.method protected updateNetRegist()V
    .locals 4

    .line 1196
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mUpdateNetRegiRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgSubScription;->mUpdateNetRegiRetryCount:I

    .line 1197
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 1199
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don`t retry more."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScription;->mUpdateNetRegiRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgSubScription;->mUpdateNetRegiRetryCount:I

    .line 1201
    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 1204
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1205
    return-void
.end method

.method updateThrottleStatusAsWifiConnection(Z)V
    .locals 2
    .param p1, "isWifiConnected"    # Z

    .line 2287
    const/4 v0, 0x0

    .line 2288
    .local v0, "newSsid":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2289
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2291
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    invoke-virtual {v1, p1, v0}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiStatusChanged(ZLjava/lang/String;)V

    .line 2292
    return-void
.end method

.method wifiOnAction()V
    .locals 6

    .line 2200
    iget v0, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-eqz v0, :cond_1

    .line 2201
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    .line 2202
    .local v0, "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->isL2WHandoverProfilingRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2203
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    const-string v2, "Wifi on is called and L2W handover profiling is running, stop it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->stopL2WHandoverProfiling()V

    .line 2207
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v3, v1, v2

    .line 2208
    invoke-virtual {v0, v1}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2209
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 2210
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 2211
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRovein()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 2212
    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v5

    .line 2209
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    .line 2216
    .end local v0    # "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailabilityRecommended()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2217
    invoke-direct {p0}, Lcom/sec/epdg/EpdgSubScription;->onWifiGoodEnough()V

    .line 2219
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScription;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2221
    :cond_2
    return-void
.end method
