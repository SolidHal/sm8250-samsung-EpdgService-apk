.class public Lcom/sec/epdg/EpdgSubScriptionBase;
.super Ljava/lang/Object;
.source "EpdgSubScriptionBase.java"

# interfaces
.implements Lcom/sec/epdg/interfaces/IEpdgSubScription;


# static fields
.field private static SUB_TAG:Ljava/lang/String;


# instance fields
.field protected TAG:Ljava/lang/String;

.field public VOICECALL_TYPE_KEY:Ljava/lang/String;

.field private bCallStarted:Z

.field isCpThresholdTurnOn:Z

.field isNotRequiredTimer:Z

.field private isOnDemandApnConnectionFailed:Z

.field mAutoUpdate:Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

.field mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

.field mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

.field mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

.field private mConfiguredWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field mCurrentMccmnc:Ljava/lang/String;

.field mCurrentSimImsi:Ljava/lang/String;

.field private mCurrentWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

.field private mDeregiForHOFail:Z

.field mDisabledByNoRan:Z

.field private mDisconnectRequired:Z

.field mEnableEpdg:Z

.field mEnableEpdgFailureReason:Ljava/lang/String;

.field private mEnableEpdgHandOver:Z

.field mEnableVolte:Z

.field mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

.field mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

.field mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

.field mEpdgEntitlement:Lcom/sec/epdg/EpdgEntitlement;

.field mEpdgInterfaceController:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

.field protected mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgPdnXferRunnable;

.field mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

.field mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

.field mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

.field mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

.field mEpdnConnected:Z

.field mFqdnRetryCount:I

.field mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

.field mHasEspLoss:Z

.field mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

.field mIfaceObserver:Lcom/sec/epdg/EpdgNetworkManagementObserver;

.field mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

.field private mIsAirplaneMode:Z

.field mIsEpdgInitialized:Z

.field private mIsIsimReady:Z

.field private mIsLteAvailableDuringConnecting:Z

.field private mIsPendingVoiceAvailability:Z

.field protected mIsRmnetMhiModel:Z

.field private mIsScreenOn:Z

.field private mIsWiFiDisconnectDelayed:Z

.field mL2WAfterEpdgStatusQuery:Z

.field mLastSsid:Ljava/lang/String;

.field mLastestEpdgAvailableState:Z

.field mLastestEpdgCsAvailavility:Z

.field private mLteMeasurementCnt:I

.field private mLteMeasurementMaxCnt:I

.field mNMService:Landroid/os/INetworkManagementService;

.field mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

.field private mNotAuthCaptiveState:Z

.field mOperator:Ljava/lang/String;

.field private mPduSessionId:I

.field public mPendingProfilingDuringCall:Z

.field protected mPhoneId:I

.field mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

.field mPowerManager:Landroid/os/PowerManager;

.field private mRegistedNetworkStateChangeReceiver:Z

.field mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

.field private mRtpHandoverCnt:I

.field mSupportedTypes:I

.field mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

.field mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

.field mVolteEnableFromImsService:Ljava/lang/Boolean;

.field mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

.field mW2LAfterEpdgStatusQuery:Z

.field mWifiCallingPrefState:I

.field mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

.field private mWifiMeasurementCnt:I

.field private mWifiMeasurementMaxCnt:I

.field mWifiMgrState:I

.field private mWifiNetwork:Landroid/net/Network;

.field mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

.field mWifiSetting:I

.field public releaseCallBeforeHO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-string v0, "[EpdgSubScription]"

    sput-object v0, Lcom/sec/epdg/EpdgSubScriptionBase;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 59
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 62
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 63
    const/16 v3, 0x8

    new-array v3, v3, [Lcom/sec/epdg/IPSecDataConnSM;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .line 67
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    .line 76
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    .line 78
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    .line 79
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgEntitlement:Lcom/sec/epdg/EpdgEntitlement;

    .line 80
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    .line 81
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    .line 89
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgPdnXferRunnable;

    .line 92
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgInterfaceController:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 93
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiNetwork:Landroid/net/Network;

    .line 95
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 96
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 98
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 99
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 100
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 102
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isCpThresholdTurnOn:Z

    .line 103
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsAirplaneMode:Z

    .line 105
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRtpHandoverCnt:I

    .line 106
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNotAuthCaptiveState:Z

    .line 107
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDisconnectRequired:Z

    .line 108
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdg:Z

    .line 109
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsEpdgInitialized:Z

    .line 110
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPduSessionId:I

    .line 111
    iput v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiSetting:I

    .line 113
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDisabledByNoRan:Z

    .line 114
    iput v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingPrefState:I

    .line 116
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    .line 117
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVolteEnableFromImsService:Ljava/lang/Boolean;

    .line 118
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isNotRequiredTimer:Z

    .line 119
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsWiFiDisconnectDelayed:Z

    .line 120
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDeregiForHOFail:Z

    .line 121
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHasEspLoss:Z

    .line 122
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mFqdnRetryCount:I

    .line 123
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsLteAvailableDuringConnecting:Z

    .line 124
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mW2LAfterEpdgStatusQuery:Z

    .line 125
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mL2WAfterEpdgStatusQuery:Z

    .line 127
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdnConnected:Z

    .line 128
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMgrState:I

    .line 131
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastestEpdgAvailableState:Z

    .line 132
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastestEpdgCsAvailavility:Z

    .line 133
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgHandOver:Z

    .line 135
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->bCallStarted:Z

    .line 137
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->releaseCallBeforeHO:Z

    .line 138
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRegistedNetworkStateChangeReceiver:Z

    .line 139
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsScreenOn:Z

    .line 140
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsPendingVoiceAvailability:Z

    .line 142
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLteMeasurementCnt:I

    .line 143
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMeasurementCnt:I

    .line 144
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLteMeasurementMaxCnt:I

    .line 145
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMeasurementMaxCnt:I

    .line 146
    const-string v1, "Unloaded"

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 147
    const-string v1, "voicecall_type"

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    .line 148
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isOnDemandApnConnectionFailed:Z

    .line 149
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentSimImsi:Ljava/lang/String;

    .line 150
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsIsimReady:Z

    .line 151
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableVolte:Z

    .line 152
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentMccmnc:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mOperator:Ljava/lang/String;

    .line 154
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPendingProfilingDuringCall:Z

    .line 155
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mSupportedTypes:I

    .line 156
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsRmnetMhiModel:Z

    .line 160
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 59
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    .line 62
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 63
    const/16 v3, 0x8

    new-array v3, v3, [Lcom/sec/epdg/IPSecDataConnSM;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .line 67
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    .line 76
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    .line 78
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    .line 79
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgEntitlement:Lcom/sec/epdg/EpdgEntitlement;

    .line 80
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    .line 81
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    .line 89
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgPdnXferRunnable;

    .line 92
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgInterfaceController:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 93
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiNetwork:Landroid/net/Network;

    .line 95
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 96
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 98
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 99
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 100
    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    iput-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 102
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isCpThresholdTurnOn:Z

    .line 103
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsAirplaneMode:Z

    .line 105
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRtpHandoverCnt:I

    .line 106
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNotAuthCaptiveState:Z

    .line 107
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDisconnectRequired:Z

    .line 108
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdg:Z

    .line 109
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsEpdgInitialized:Z

    .line 110
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPduSessionId:I

    .line 111
    iput v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiSetting:I

    .line 113
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDisabledByNoRan:Z

    .line 114
    iput v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingPrefState:I

    .line 116
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    .line 117
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVolteEnableFromImsService:Ljava/lang/Boolean;

    .line 118
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isNotRequiredTimer:Z

    .line 119
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsWiFiDisconnectDelayed:Z

    .line 120
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDeregiForHOFail:Z

    .line 121
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHasEspLoss:Z

    .line 122
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mFqdnRetryCount:I

    .line 123
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsLteAvailableDuringConnecting:Z

    .line 124
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mW2LAfterEpdgStatusQuery:Z

    .line 125
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mL2WAfterEpdgStatusQuery:Z

    .line 127
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdnConnected:Z

    .line 128
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMgrState:I

    .line 131
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastestEpdgAvailableState:Z

    .line 132
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastestEpdgCsAvailavility:Z

    .line 133
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgHandOver:Z

    .line 135
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->bCallStarted:Z

    .line 137
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->releaseCallBeforeHO:Z

    .line 138
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRegistedNetworkStateChangeReceiver:Z

    .line 139
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsScreenOn:Z

    .line 140
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsPendingVoiceAvailability:Z

    .line 142
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLteMeasurementCnt:I

    .line 143
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMeasurementCnt:I

    .line 144
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLteMeasurementMaxCnt:I

    .line 145
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMeasurementMaxCnt:I

    .line 146
    const-string v1, "Unloaded"

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgFailureReason:Ljava/lang/String;

    .line 147
    const-string v1, "voicecall_type"

    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    .line 148
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isOnDemandApnConnectionFailed:Z

    .line 149
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentSimImsi:Ljava/lang/String;

    .line 150
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsIsimReady:Z

    .line 151
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableVolte:Z

    .line 152
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentMccmnc:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mOperator:Ljava/lang/String;

    .line 154
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPendingProfilingDuringCall:Z

    .line 155
    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mSupportedTypes:I

    .line 156
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsRmnetMhiModel:Z

    .line 163
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    .line 164
    iput p2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/epdg/EpdgSubScriptionBase;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    .line 166
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "voicecall_type2"

    :goto_0
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    .line 168
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 169
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 170
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPowerManager:Landroid/os/PowerManager;

    .line 171
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mAutoUpdate:Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

    .line 172
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/interfaceController/EpdgInterfaceController;->getEpdgInterfaceHandler(I)Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgInterfaceController:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    .line 173
    new-instance v0, Lcom/sec/epdg/BigData/EpdgBigDataParams;

    invoke-direct {v0}, Lcom/sec/epdg/BigData/EpdgBigDataParams;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    .line 174
    return-void
.end method

.method private setLteMeasurementMaxCnt(I)V
    .locals 0
    .param p1, "CurrentLteMeasurementMaxCnt"    # I

    .line 669
    iput p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLteMeasurementMaxCnt:I

    .line 670
    return-void
.end method


# virtual methods
.method protected IsNeedDeregi()Z
    .locals 3

    .line 804
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "EEESN_GB"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isPsOnlyReg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isLtePsOnlyReg()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScriptionBase;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->IsVoLteAvailableNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getHandoverEnableSetting()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScriptionBase;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    return v1

    .line 810
    :cond_3
    return v2
.end method

.method public IsVoLteAvailableNetwork()Z
    .locals 6

    .line 1301
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-eqz v0, :cond_2

    .line 1302
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    const/16 v4, 0xe

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1303
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 1302
    :goto_1
    return v1

    .line 1304
    :cond_2
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v4, "Orange_FR"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    .line 1306
    :cond_3
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 1307
    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isStgCdmaOperators()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 1310
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    .line 1311
    .local v0, "voiceNetType":I
    iget v4, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    const-string v5, "Hutchison_GB"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v0, v3, :cond_5

    .line 1312
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getIsVopsSupport()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1313
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_5

    .line 1314
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v3, "IsVoLteAvailableNetwork H3G: VoLTE Not available."

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    return v2

    .line 1317
    :cond_5
    if-eq v0, v3, :cond_7

    const/16 v3, 0x14

    if-ne v0, v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :cond_7
    :goto_2
    return v1

    .line 1308
    .end local v0    # "voiceNetType":I
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataRat()I

    move-result v0

    if-ne v0, v3, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    return v1

    .line 1305
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    return v0
.end method

.method UpdateHandover()V
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->isHandoverAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgSubScriptionBase;->updateHandoverEnableSetting(Z)V

    .line 882
    return-void
.end method

.method configureEpdgCsThresholds()V
    .locals 3

    .line 1008
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    if-nez v0, :cond_2

    .line 1009
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "EpdgCsThresholds: Configuring new instance"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    new-instance v0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    invoke-direct {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1011
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveIn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->set4gRsrpRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1012
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveOut()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->set4gRsrpRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1013
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveIn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->set3gRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1014
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveOut()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->set3gRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1015
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveIn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->set2gRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1016
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveOut()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->set2gRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRovein()I

    move-result v1

    const/16 v2, 0xff

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRovein()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setLteRsrqRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    .line 1018
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v1

    mul-int/lit8 v2, v1, -0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setLteRsrqRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1019
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThresholdSnrRoveIn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setSnrRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1020
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThresholdSnrRoveOut()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setSnrRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1021
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThresholdEcioRoveIn()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setEcioRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1022
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThresholdEcioRoveOut()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setEcioRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1023
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setLteRsrp1(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1024
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setLteRsrp2(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1025
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setLteRsrp3(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 1026
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->setLteRsrqRoveinWeak(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->build()Lcom/sec/epdg/DataType/EpdgCsThreshold;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgCsThreshold:Lcom/sec/epdg/DataType/EpdgCsThreshold;

    .line 1029
    :cond_2
    return-void
.end method

.method public deInitialize()V
    .locals 0

    .line 1418
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 1489
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1490
    return-void

    .line 1493
    :cond_0
    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump EpdgService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    return-void

    .line 1499
    :cond_1
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsEpdgInitialized:Z

    const-string v1, "Reason : "

    const-string v2, "EPDG Enabled : "

    const-string v3, "##########"

    const-string v4, "########## EpdgSubScription Dumpstate Phone ID : "

    if-nez v0, :cond_2

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdg:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgFailureReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/Logger/EpdgDumpState;->dump(Ljava/io/PrintWriter;)V

    .line 1504
    return-void

    .line 1507
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 1509
    .local v5, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v5, :cond_3

    .line 1510
    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnContextDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    .end local v5    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1514
    :cond_4
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    .line 1515
    .local v0, "data":Lcom/sec/epdg/EpdgRilSharedData;
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    .end local v0    # "data":Lcom/sec/epdg/EpdgRilSharedData;
    goto :goto_1

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "EpdgRilSharedData : null"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdg:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgFailureReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Roaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isNeedSMSProvisioning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1528
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/epdg/VodaProvisionManager;->getInstance(ILandroid/content/Context;)Lcom/sec/epdg/VodaProvisionManager;

    move-result-object v0

    .line 1529
    .local v0, "vpm":Lcom/sec/epdg/VodaProvisionManager;
    if-eqz v0, :cond_5

    .line 1530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSProvisioning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/epdg/VodaProvisionManager;->getIsProvisioning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    .end local v0    # "vpm":Lcom/sec/epdg/VodaProvisionManager;
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v0, :cond_7

    .line 1535
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volte is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " VoWifi is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 1537
    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1536
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VLT provision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " VWF provision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVowifiProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ims Listener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    if-eqz v0, :cond_8

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoWifi Timers :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    :cond_8
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/Logger/EpdgDumpState;->dump(Ljava/io/PrintWriter;)V

    .line 1549
    return-void
.end method

.method enableTestRilAdapter(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1175
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "Do nothing!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public getAllApnSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllApnTypes()[Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getApnList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallStarted()Z
    .locals 1

    .line 601
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->bCallStarted:Z

    return v0
.end method

.method public getCaptiveNotAuthStatus()Z
    .locals 1

    .line 1352
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNotAuthCaptiveState:Z

    return v0
.end method

.method protected getCellularWifiProfilingChecker()Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCellularWifiProfilingChecker:Lcom/sec/epdg/smartwifi/CellularWifiProfilingChecker;

    return-object v0
.end method

.method protected getConfiguredWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfiguredWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    return-object v0
.end method

.method public getConnMgrInstance()Landroid/net/ConnectivityManager;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getCpThresholdConditionForHandover()Z
    .locals 2

    .line 1222
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isCpThresholdTurnOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getActiveRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "It is true that CpThresholdCondition for handover"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/4 v0, 0x1

    return v0

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "It is false that CpThresholdCondition for handover"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/4 v0, 0x0

    return v0
.end method

.method protected getCurrentWifiIntfIpType()Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    return-object v0
.end method

.method protected getDeregiForHOFail()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDeregiForHOFail:Z

    return v0
.end method

.method getDisabledByNoRan()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDisabledByNoRan:Z

    return v0
.end method

.method public getDisconnectRequired()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDisconnectRequired:Z

    return v0
.end method

.method public getE911CallCount()I
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    return v0

    .line 497
    :cond_0
    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getE911CallCount()I

    move-result v0

    return v0
.end method

.method getEnableEpdg()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdg:Z

    return v0
.end method

.method protected getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    return-object v0
.end method

.method public getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mBigDataParams:Lcom/sec/epdg/BigData/EpdgBigDataParams;

    return-object v0
.end method

.method protected getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    return-object v0
.end method

.method protected getEpdgInterfaceController()Lcom/sec/epdg/interfaceController/EpdgInterfaceController;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgInterfaceController:Lcom/sec/epdg/interfaceController/EpdgInterfaceController;

    return-object v0
.end method

.method protected getEpdgRilInterface()Lcom/sec/epdg/EpdgRilInterface;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    return-object v0
.end method

.method protected getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRunnable:Lcom/sec/epdg/EpdgRunnable;

    return-object v0
.end method

.method public getEpdgServiceContext()Landroid/content/Context;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "Returning epdg service context"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    if-nez v0, :cond_0

    .line 1381
    const/4 v0, 0x0

    return-object v0

    .line 1383
    :cond_0
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEpdgSettings()Lcom/sec/epdg/interfaces/IEpdgSettings;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method protected getEpdgTemporaryBlocked()Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;
    .locals 1

    .line 322
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    return-object v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgBlocking:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    return-object v0
.end method

.method protected getEpdgTimer()Lcom/sec/epdg/EpdgTimers;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    return-object v0
.end method

.method protected getFqdnRetryCount()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mFqdnRetryCount:I

    return v0
.end method

.method public getHandoverEnableSetting()Z
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandoverEnableSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgHandOver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgHandOver:Z

    return v0
.end method

.method protected getHasEspLoss()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHasEspLoss:Z

    return v0
.end method

.method protected getHoDelay()Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHoDelay:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    return-object v0
.end method

.method public getIWlanApnSettingByApnType(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnSettingByApnType(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public getIWlanApnSettingByApnTypeRemoteUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "remoteUri"    # Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnSettingByApnTypeRemoteUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public getIWlanApnSettingByRemoteUri(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 1
    .param p1, "remoteUri"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnSettingByRemoteUri(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public getImsCallCount()I
    .locals 5

    .line 1245
    const/4 v0, 0x0

    .line 1246
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallCount()[I

    move-result-object v1

    .line 1247
    .local v1, "callCount":[I
    if-eqz v1, :cond_0

    .line 1248
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1250
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsCallCount: returning : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    return v0
.end method

.method public getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method protected getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    return-object v0
.end method

.method public getIpmeStatus()Z
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1257
    :cond_0
    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getIpmeStatus()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getIsAirplaneMode()Z
    .locals 3

    monitor-enter p0

    .line 1232
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsAirplaneMode: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1231
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIsCpThresholdTurnOn()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isCpThresholdTurnOn:Z

    return v0
.end method

.method getIsEpdgInitialized()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsEpdgInitialized:Z

    return v0
.end method

.method public getIsImsCallConnected()Z
    .locals 5

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    .line 203
    .local v1, "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsImsCallConnected: returning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v0
.end method

.method public getIsImsVideoCallConnected()Z
    .locals 5

    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    .line 1269
    .local v1, "callStatus":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1271
    const/4 v0, 0x1

    .line 1273
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsImsVideoCallConnected: returning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    return v0
.end method

.method public getIsLteAvailable()Z
    .locals 1

    .line 1279
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsLteAvailable()Z

    move-result v0

    return v0
.end method

.method protected getIsLteAvailableDuringConnecting()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsLteAvailableDuringConnecting:Z

    return v0
.end method

.method protected getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    .locals 1

    .line 657
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isOnDemandApnConnectionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getIsPendingVoiceAvailability()Z
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsPendingVoiceAvailability: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsPendingVoiceAvailability:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsPendingVoiceAvailability:Z

    return v0
.end method

.method protected getIsRoamingVoiceNetworkAvailable()Z
    .locals 2

    .line 998
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 999
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1000
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1001
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1002
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    .line 1003
    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCS:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 1004
    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 998
    :goto_0
    return v0
.end method

.method public declared-synchronized getIsScreenOn()Z
    .locals 3

    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsScreenOn: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 628
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getIsSsacVoiceEnabled()Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsSsacVoiceEnabled()Z

    move-result v0

    return v0
.end method

.method public getIsVopsSupport()Z
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getCheckForRoamingVops()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getIsWifiDisconnectDelayed()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsWiFiDisconnectDelayed:Z

    return v0
.end method

.method public declared-synchronized getIsimState()Z
    .locals 3

    monitor-enter p0

    .line 726
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "mccMnc":Ljava/lang/String;
    const-string v1, "VZW"

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RJIL"

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    .line 728
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ATC"

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    .line 729
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 730
    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->IsTestSim()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 731
    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    :goto_1
    monitor-exit p0

    return v1

    .line 725
    .end local v0    # "mccMnc":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIwlanContextState(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIwlanContextState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 795
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    .line 796
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    return-object v1

    .line 794
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 800
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getL2WAfterEpdgStatusQuery()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mL2WAfterEpdgStatusQuery:Z

    return v0
.end method

.method getLastSsid()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastSsid:Ljava/lang/String;

    return-object v0
.end method

.method protected getLastestEpdgAvailableState()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastestEpdgAvailableState:Z

    return v0
.end method

.method protected getLastestEpdgCsAvailavility()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastestEpdgCsAvailavility:Z

    return v0
.end method

.method public getLteMeasurementCnt()I
    .locals 1

    .line 673
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLteMeasurementCnt:I

    return v0
.end method

.method public getLteMeasurementMaxCnt()I
    .locals 1

    .line 665
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLteMeasurementMaxCnt:I

    return v0
.end method

.method public getMnoNameFromDB()Ljava/lang/String;
    .locals 10

    .line 740
    const-string v0, ""

    .line 741
    .local v0, "mnoName":Ljava/lang/String;
    const-string v1, ""

    .line 742
    .local v1, "mvnoName":Ljava/lang/String;
    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant;->IMS_MNO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 743
    .local v2, "uriForSim":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 744
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 747
    :cond_0
    const/4 v4, 0x0

    .line 748
    .local v4, "isValid":Z
    const-string v5, "hassim"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 749
    .local v5, "idx":I
    if-ltz v5, :cond_2

    .line 750
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 751
    .local v6, "hassim":Ljava/lang/String;
    const-string v7, "TRUE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    move v4, v7

    .line 752
    const-string v7, "mnoname"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move v5, v7

    .line 753
    if-ltz v5, :cond_2

    if-eqz v4, :cond_2

    .line 754
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 755
    const-string v7, "mvnoname"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v7

    .line 756
    if-ltz v5, :cond_2

    .line 758
    :try_start_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 759
    if-eqz v1, :cond_1

    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 760
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v7

    .line 764
    :cond_1
    goto :goto_0

    .line 762
    :catch_0
    move-exception v7

    .line 763
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v9, "getMnoNameFromDB() not mvno operator"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .end local v5    # "idx":I
    .end local v6    # "hassim":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_0

    goto :goto_2

    .line 743
    .end local v4    # "isValid":Z
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v4

    .line 770
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 771
    .end local v3    # "c":Landroid/database/Cursor;
    :cond_5
    return-object v0
.end method

.method public getNMService()Landroid/os/INetworkManagementService;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method public getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    return-object v0
.end method

.method public bridge synthetic getNetworkChangeController()Lcom/sec/epdg/interfaces/INetworkChangeController;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    return-object v0
.end method

.method public getNonE911CallCount()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_0
    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v0

    return v0
.end method

.method getPduSessionId()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPduSessionId:I

    return v0
.end method

.method public getPendingProfilingDuringCall()Z
    .locals 1

    .line 935
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPendingProfilingDuringCall:Z

    return v0
.end method

.method protected getPermanentThrottleErrorCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->getPermanentErrorCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getProfileChangedByUser()I
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    const-string v1, "profile_changed_byuser"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/VoWifiState;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 258
    .local v0, "changedby":I
    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getRegistedNetworkStateChangeReceiver()Z
    .locals 1

    monitor-enter p0

    .line 617
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 617
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getReleaseCallBeforeHO()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->releaseCallBeforeHO:Z

    return v0
.end method

.method public getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "epdgApnType"    # Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteUriByApnType apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v2, "(null apnType)"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    return-object v0

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnSettingByApnType(Ljava/lang/String;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v1

    .line 782
    .local v1, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    if-nez v1, :cond_1

    .line 783
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find remoteuri for apnType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-object v0

    .line 787
    :cond_1
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "remoteUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apnType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mapped to remoteuri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    return-object v0
.end method

.method public getRtpHandoverCnt()I
    .locals 1

    .line 1262
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRtpHandoverCnt:I

    return v0
.end method

.method protected getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 339
    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 340
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    return-object v3

    .line 338
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No SM for apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScbmChanged()Z
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getScbmChanged()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSimState()Z
    .locals 1

    monitor-enter p0

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getIsimState()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCellularProfiler:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    return-object v0
.end method

.method protected getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    return-object v0
.end method

.method protected getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 2
    .param p1, "cid"    # I

    .line 334
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTargetRilNetwork()I
    .locals 4

    .line 943
    const/16 v0, 0xff

    .line 944
    .local v0, "mTargetRilNetwork":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getActiveRat()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 945
    const/16 v0, 0x19

    goto :goto_0

    .line 946
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getActiveRat()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 947
    const/16 v0, 0x21

    goto :goto_0

    .line 949
    :cond_1
    const/16 v0, 0xff

    .line 951
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning mTargetRilNetwork is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    return v0
.end method

.method protected getThrottleCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getThrottleLeftTime(Ljava/lang/String;)I
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleLeftTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVoWiFiEnableFromImsService()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected getVoWifiSessionConnected()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v0

    return v0
.end method

.method protected getVowifiSetting()I
    .locals 5

    .line 237
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    add-int/lit8 v0, v0, 0x1

    .line 238
    .local v0, "slotId":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDSDS_DI()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "wifi_call_enable"

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->isSimSettingEnable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 242
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getW2LAfterEpdgStatusQuery()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mW2LAfterEpdgStatusQuery:Z

    return v0
.end method

.method public getWifiCallingPrefState()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingPrefState:I

    return v0
.end method

.method public getWifiMeasurementCnt()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMeasurementCnt:I

    return v0
.end method

.method public getWifiMeasurementMaxCnt()I
    .locals 1

    .line 681
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMeasurementMaxCnt:I

    return v0
.end method

.method protected getWifiMgrState()I
    .locals 1

    .line 513
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMgrState:I

    return v0
.end method

.method public getWifiNetwork()Landroid/net/Network;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiNetwork:Landroid/net/Network;

    return-object v0
.end method

.method protected getWifiPrefSetting()I
    .locals 4

    .line 270
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    add-int/lit8 v0, v0, 0x1

    .line 271
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi_call_preferred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getWifiRoamPrefSetting()I
    .locals 4

    .line 250
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    add-int/lit8 v0, v0, 0x1

    .line 251
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi_call_when_roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 252
    .local v1, "roamingPreferred":I
    return v1
.end method

.method getWifiSetting()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiSetting:I

    return v0
.end method

.method protected getWifiThreshold()Lcom/sec/epdg/DataType/EpdgWifiThreshold;
    .locals 10

    .line 1446
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsRssiDisabledForProfiling()Z

    move-result v0

    .line 1449
    .local v0, "disableRSSI":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->IsWifiOnlyAllowedByMapconTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1450
    const/4 v0, 0x1

    .line 1453
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1454
    const/4 v0, 0x1

    .line 1456
    :cond_1
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Orange_FR"

    const-string v3, "Orange_RO"

    const-string v4, "Orange_PL"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1457
    const/4 v0, 0x0

    .line 1460
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiThreshold() disableRSSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const/16 v1, -0x64

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    .line 1463
    .local v2, "goodDB":I
    :goto_0
    if-eqz v0, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v3

    .line 1464
    .local v3, "badDB":I
    :goto_1
    if-eqz v0, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v4

    .line 1465
    .local v4, "thresholdDB":I
    :goto_2
    if-eqz v0, :cond_6

    move v5, v1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v5

    .line 1466
    .local v5, "goodDBWifiOnly":I
    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v1

    .line 1467
    .local v1, "badDBWifiOnly":I
    :goto_4
    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v6

    .line 1468
    .local v6, "edgeGoodDB":I
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 1469
    .local v7, "edgeMargin":I
    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v8

    add-int/2addr v8, v7

    .line 1471
    .local v8, "edgeBadDB":I
    new-instance v9, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    invoke-direct {v9}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;-><init>()V

    .line 1472
    invoke-virtual {v9, v2}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->setWifiRoveIn(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    move-result-object v9

    .line 1473
    invoke-virtual {v9, v3}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->setWifiRoveOut(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    move-result-object v9

    .line 1474
    invoke-virtual {v9, v4}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->setWifiHandoverTh(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    move-result-object v9

    .line 1475
    invoke-virtual {v9, v5}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->setWifiRoveInInWifiOnly(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    move-result-object v9

    .line 1476
    invoke-virtual {v9, v1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->setWifiRoveOutInWifiOnly(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    move-result-object v9

    .line 1477
    invoke-virtual {v9, v6}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->setWifiEdgeRoveIn(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    move-result-object v9

    .line 1478
    invoke-virtual {v9, v8}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->setWifiEdgeRoveOut(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    move-result-object v9

    .line 1479
    invoke-virtual {v9}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->build()Lcom/sec/epdg/DataType/EpdgWifiThreshold;

    move-result-object v9

    .line 1481
    .local v9, "epdgWifiThreshold":Lcom/sec/epdg/DataType/EpdgWifiThreshold;
    return-object v9
.end method

.method protected increaseRtpHandoverCount()V
    .locals 1

    .line 471
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRtpHandoverCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRtpHandoverCnt:I

    .line 472
    return-void
.end method

.method initializePacketLossThLoggingField()V
    .locals 2

    .line 1166
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LATENCY_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getW2LThresholdpingrtt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 1167
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LOSSRATE_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getL2WPktLossPercent()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 1168
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LOSSRATE_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getW2LPktLossPercent()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 1169
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getL2WPktLossPercent()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 1170
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ENABLE_LATENCY_CHECK:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 1172
    :cond_0
    return-void
.end method

.method public is1xAvailable()Z
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "1x is available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/4 v0, 0x1

    return v0

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "1x is NOT available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const/4 v0, 0x0

    return v0
.end method

.method public isAnyPdnConnectedOverWifi()Z
    .locals 4

    .line 956
    const/4 v0, 0x0

    .line 957
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 958
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 960
    const/4 v0, 0x1

    .line 957
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnyPdnConnectedOverWifi: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    return v0
.end method

.method isBlockHandOverApn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "result":Z
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "operator":Ljava/lang/String;
    const-string v2, "26201"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 989
    const-string v2, "mms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 990
    const-string v2, "xcap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    :cond_0
    const/4 v0, 0x1

    .line 994
    :cond_1
    return v0
.end method

.method protected isCanOperator()Z
    .locals 3

    .line 1434
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1435
    .local v0, "operator":Ljava/lang/String;
    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1436
    :cond_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.csc.omcnw_code"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    :cond_1
    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1439
    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1442
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1440
    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public isEpdgAvailable()Z
    .locals 2

    .line 1215
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getIwlanPsState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isEpdnConnected()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdnConnected:Z

    return v0
.end method

.method public isHandoverAvailable()Z
    .locals 10

    .line 885
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdg:Z

    .line 886
    .local v0, "isVoWiFiEnable":Z
    iget-boolean v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableVolte:Z

    .line 887
    .local v1, "isVolteMpsTurnOn":Z
    iget v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_STAND_ALONE_SMSIP:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->isVolteEnabled()Z

    move-result v2

    .line 888
    .local v2, "isVolteMenuTurnOn":Z
    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 889
    .local v5, "isVoLTEEnable":Z
    :goto_1
    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v6}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v6

    .line 890
    .local v6, "isRoaming":Z
    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/sec/epdg/EpdgImsManagerHelper;->getRoamingSupportValueforVolte(ZLjava/lang/String;)Z

    move-result v7

    .line 892
    .local v7, "isVolteRoamingSupport":Z
    iget v8, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v8

    const-string v9, "BTOP_GB"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->isInternationalRoaming()Z

    move-result v8

    if-nez v8, :cond_2

    .line 893
    const/4 v7, 0x1

    .line 895
    :cond_2
    iget v8, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_ROAMING_HO:Z

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    .line 896
    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getHandoverSupport()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    return v3

    .line 898
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    iget-object v8, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getHandoverSupport()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    return v3
.end method

.method public isInternationalRoaming()Z
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRoamingType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLteIdleModeProfilingSupported()Z
    .locals 4

    .line 915
    const/4 v0, 0x1

    .line 916
    .local v0, "retVal":Z
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v1, :cond_3

    .line 917
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->isVoWifiEnabled()Z

    move-result v0

    goto :goto_0

    .line 921
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 923
    :cond_1
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 924
    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorUscc()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 925
    const/4 v0, 0x0

    goto :goto_0

    .line 928
    :cond_3
    const/4 v0, 0x0

    .line 930
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLteIdleModeProfilingSupported: returning val: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " roaming is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    return v0
.end method

.method public isLteProfilingSupported()Z
    .locals 4

    .line 906
    const/4 v0, 0x1

    .line 907
    .local v0, "retVal":Z
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    const/4 v0, 0x0

    .line 910
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLteProfilingSupported: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " roaming is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v3}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    return v0
.end method

.method public isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "connectedCheck"    # Z

    .line 1323
    const/4 v0, 0x0

    .line 1324
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 1325
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1326
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    if-eqz p2, :cond_0

    .line 1328
    const/4 v0, 0x1

    goto :goto_2

    .line 1329
    :cond_0
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 1330
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 1333
    :cond_1
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 1334
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/epdg/EpdgSubScriptionBase;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1336
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 1332
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 1324
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1340
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOngoingConnectionOverWifi: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "Connected Check : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    return v0
.end method

.method public isPdnConnectedOverWifi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .line 1200
    const/4 v0, 0x0

    .line 1201
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1202
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1203
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1204
    const/4 v0, 0x1

    goto :goto_1

    .line 1201
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1209
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPdnConnectedOverWifi: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    return v0
.end method

.method public isPdnExistedOverWifi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 970
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 971
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 972
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 973
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 974
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 975
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 969
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 980
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPdnExistedOverWifi: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    return v0
.end method

.method public isPdnIdleStateOverWifi()Z
    .locals 3

    .line 1388
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    if-eqz v0, :cond_1

    .line 1389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 1390
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    .line 1391
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1392
    const/4 v1, 0x0

    return v1

    .line 1389
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1396
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "IdleStateOverWifi"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const/4 v0, 0x1

    return v0
.end method

.method public isRmnetMhiInterfaceModel()Z
    .locals 1

    .line 1485
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsRmnetMhiModel:Z

    return v0
.end method

.method isSimSettingEnable()Ljava/lang/Boolean;
    .locals 5

    .line 1148
    const/4 v0, 0x1

    .line 1149
    .local v0, "simEnable":Z
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 1150
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "phone1_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    goto :goto_0

    .line 1151
    :cond_1
    if-ne v1, v3, :cond_3

    .line 1152
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "phone2_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    move v0, v2

    .line 1154
    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected isThrottleTimerRunning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mThrottleController:Lcom/sec/epdg/throttle/ThrottleController;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isUSOperator()Z
    .locals 3

    .line 1421
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1422
    .local v0, "operator":Ljava/lang/String;
    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1423
    :cond_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.csc.omcnw_code"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    :cond_1
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1426
    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1427
    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ATC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1430
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1428
    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public isVideoEnabled()Z
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "videocall_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 317
    .local v0, "VideoCallOn":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return v0
.end method

.method public isVoWifiEnabled()Z
    .locals 2

    .line 1370
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVolteEnabled()Z
    .locals 4

    .line 1362
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 1364
    .local v0, "VolteOn":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volteSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") for VOICECALL_TYPE_KEY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    return v0
.end method

.method isWiFiSsidChanged(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newSsid"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "isChanged":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastSsid:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :cond_0
    return v0
.end method

.method public isWifiCallingEnabled()Z
    .locals 5

    .line 1284
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingState:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 1286
    .local v0, "bVoWifi":Z
    :goto_1
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_2

    .line 1290
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgTemporaryBlocked()Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    move-result-object v1

    sget-object v4, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    if-ne v1, v4, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 1287
    :cond_4
    :goto_2
    return v0
.end method

.method protected isWifiConnected()Z
    .locals 2

    .line 182
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMgrState:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyTermination()V
    .locals 0

    .line 1413
    return-void
.end method

.method public onEpdgReadinessConditionUpdate()V
    .locals 0

    .line 1408
    return-void
.end method

.method printEpdgSettingsThreshold()Ljava/lang/String;
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->toStringThreshold()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected resetFqdnRetryCount()V
    .locals 1

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mFqdnRetryCount:I

    .line 444
    return-void
.end method

.method public resetRtpHandoverCnt()V
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "reset RTP handover count"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRtpHandoverCnt:I

    .line 1348
    return-void
.end method

.method resetWfcSettings()V
    .locals 5

    .line 295
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    add-int/lit8 v0, v0, 0x1

    .line 296
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi_call_enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi_call_preferred"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi_call_when_roaming"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    iget v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgUtils;->getSubId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/epdg/VoWifiSettings;->resetWfcSetting(Landroid/content/Context;I)V

    .line 300
    return-void
.end method

.method public sendWfcEpdgAllowedIntent()V
    .locals 3

    .line 1138
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorXaa()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdg.WFC_EPDG_ALLOWED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v2, "sendWfcEpdgAllowedIntent: Always sending true"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const/4 v1, 0x1

    const-string v2, "epdg_allowed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1142
    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    const-string v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1143
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1145
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setCallStartTimeForEdgeWarning()V
    .locals 4

    .line 1190
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->CALLDROP_NOTI:Z

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getEdgeNotiStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1193
    .local v0, "curMili":J
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiProfilier:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setEdgeNotiStartTime(J)V

    .line 1196
    .end local v0    # "curMili":J
    :cond_0
    return-void
.end method

.method public setCallStarted(Z)V
    .locals 0
    .param p1, "callStarted"    # Z

    .line 605
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->bCallStarted:Z

    .line 606
    return-void
.end method

.method setCaptiveNotAuthStatus(Z)V
    .locals 0
    .param p1, "notAuthCaptiveState"    # Z

    .line 350
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNotAuthCaptiveState:Z

    .line 351
    return-void
.end method

.method protected setConfiguredWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V
    .locals 0
    .param p1, "ipType"    # Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 221
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 222
    return-void
.end method

.method protected setCurrentWifiIntfIpType(Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;)V
    .locals 0
    .param p1, "ipType"    # Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 638
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mCurrentWifiIntfIpType:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 639
    return-void
.end method

.method protected setDeregiForHOFail(Z)V
    .locals 0
    .param p1, "deregiForHOFail"    # Z

    .line 427
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDeregiForHOFail:Z

    .line 428
    return-void
.end method

.method setDisabledByNoRan(Z)V
    .locals 0
    .param p1, "disabledByNoRan"    # Z

    .line 390
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDisabledByNoRan:Z

    .line 391
    return-void
.end method

.method protected setDisconnectRequired(Z)V
    .locals 0
    .param p1, "disconnectRequired"    # Z

    .line 354
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mDisconnectRequired:Z

    .line 355
    return-void
.end method

.method protected setEcbmChanged(Z)V
    .locals 2
    .param p1, "ecbmChanged"    # Z

    .line 501
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener;->setEcbmChanged(Z)V

    .line 502
    return-void
.end method

.method protected setEpdnConnected(Z)V
    .locals 0
    .param p1, "epdnConnected"    # Z

    .line 475
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdnConnected:Z

    .line 476
    return-void
.end method

.method protected setHasEspLoss(Z)V
    .locals 0
    .param p1, "hasEspLoss"    # Z

    .line 431
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mHasEspLoss:Z

    .line 432
    return-void
.end method

.method public setIsAirplaneMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 1237
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsAirplaneMode:Z

    .line 1238
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/NetworkChangeController;->setIsVoPSEnabled(Lcom/sec/epdg/Constants/EpdgConstants$TriState;)V

    .line 1241
    :cond_0
    return-void
.end method

.method protected setIsLteAvailableDuringConnecting(Z)V
    .locals 0
    .param p1, "isLteAvailableDuringConnecting"    # Z

    .line 451
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsLteAvailableDuringConnecting:Z

    .line 452
    return-void
.end method

.method protected setIsNotRequiredTimer(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 410
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsNotRequiredTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isNotRequiredTimer:Z

    .line 412
    return-void
.end method

.method protected setIsOnDemandApnConnectionFailed(Z)V
    .locals 0
    .param p1, "isOnDemandApnConnectionFailedStatus"    # Z

    .line 661
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->isOnDemandApnConnectionFailed:Z

    .line 662
    return-void
.end method

.method protected setIsPendingVoiceAvailability(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 652
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsPendingVoiceAvailability: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsPendingVoiceAvailability:Z

    .line 654
    return-void
.end method

.method declared-synchronized setIsScreenOn(Z)V
    .locals 0
    .param p1, "value"    # Z

    monitor-enter p0

    .line 634
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    .line 633
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    .end local p1    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setIsSsacVoiceEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 216
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/NetworkChangeController;->setIsSsacVoiceEnabled(Z)V

    .line 217
    return-void
.end method

.method protected setIsWifiDisconnectDelayed(Z)V
    .locals 0
    .param p1, "isWifiDisconnectDelayed"    # Z

    .line 419
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsWiFiDisconnectDelayed:Z

    .line 420
    return-void
.end method

.method declared-synchronized setIsimState(Z)V
    .locals 3
    .param p1, "state"    # Z

    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsimState: state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    .line 734
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    .end local p1    # "state":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setL2WAfterEpdgStatusQuery(Z)V
    .locals 0
    .param p1, "L2WAfterEpdgStatusQuery"    # Z

    .line 463
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mL2WAfterEpdgStatusQuery:Z

    .line 464
    return-void
.end method

.method protected setLatestEpdgCsAvailavility(Z)V
    .locals 0
    .param p1, "lastestEpdgCsAvailavility"    # Z

    .line 529
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLastestEpdgCsAvailavility:Z

    .line 530
    return-void
.end method

.method protected setLteAndWifiMeasurementMaxCnt(I)V
    .locals 0
    .param p1, "MeasurementMaxCount"    # I

    .line 697
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgSubScriptionBase;->setLteMeasurementMaxCnt(I)V

    .line 698
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgSubScriptionBase;->setWifiMeasurementMaxCnt(I)V

    .line 699
    return-void
.end method

.method protected setLteMeasurementCnt(I)V
    .locals 0
    .param p1, "CurrentLteMeasurementCnt"    # I

    .line 677
    iput p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mLteMeasurementCnt:I

    .line 678
    return-void
.end method

.method public setOperatorName()V
    .locals 6

    .line 854
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    .local v0, "simSalescode":Ljava/lang/String;
    const-string v1, "ro.csc.sales_code"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ro.csc.omcnw_code"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "cscSalesCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v4, "setOperatorName() SimMobility Status, do not need to set CSC sales code."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v1, "DEF"

    .line 862
    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOperatorName() simBasedSalescode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cscSalesCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 864
    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mOperator:Ljava/lang/String;

    goto :goto_0

    .line 866
    :cond_1
    iput-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mOperator:Ljava/lang/String;

    .line 868
    :goto_0
    iget v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/Operator/EpdgOperator;->setOperatorName(Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method setPduSessionID(I)V
    .locals 0
    .param p1, "PduSessionId"    # I

    .line 370
    iput p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPduSessionId:I

    .line 371
    return-void
.end method

.method public setPendingProfilingDuringCall(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 939
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPendingProfilingDuringCall:Z

    .line 940
    return-void
.end method

.method setProfileChangedByUser(I)V
    .locals 2
    .param p1, "changeby"    # I

    .line 262
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    const-string v1, "profile_changed_byuser"

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/VoWifiState;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 263
    return-void
.end method

.method declared-synchronized setRegistedNetworkStateChangeReceiver(Z)V
    .locals 0
    .param p1, "state"    # Z

    monitor-enter p0

    .line 621
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 620
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    .end local p1    # "state":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setReleaseCallBeforeHO(Z)V
    .locals 0
    .param p1, "setReleaseCall"    # Z

    .line 609
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->releaseCallBeforeHO:Z

    .line 610
    return-void
.end method

.method protected setScbmChanged(Z)V
    .locals 1
    .param p1, "scbmChanged"    # Z

    .line 509
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->setScbmChanged(Z)V

    .line 510
    return-void
.end method

.method setVowifiUserSetting(I)V
    .locals 2
    .param p1, "enable"    # I

    .line 266
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    const-string v1, "wifi_call_user_setting"

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/VoWifiState;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 267
    return-void
.end method

.method setW2LAfterEpdgStatusQuery(Z)V
    .locals 0
    .param p1, "W2LAfterEpdgStatusQuery"    # Z

    .line 455
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mW2LAfterEpdgStatusQuery:Z

    .line 456
    return-void
.end method

.method protected setWifiCallingPrefState(I)V
    .locals 0
    .param p1, "wifiCallingPrefState"    # I

    .line 533
    iput p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiCallingPrefState:I

    .line 534
    return-void
.end method

.method protected setWifiMeasurementCnt(I)V
    .locals 0
    .param p1, "CurrentWifiMeasurementCnt"    # I

    .line 693
    iput p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMeasurementCnt:I

    .line 694
    return-void
.end method

.method protected setWifiMeasurementMaxCnt(I)V
    .locals 0
    .param p1, "CurrentWifiMeasurementMaxCnt"    # I

    .line 685
    iput p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMeasurementMaxCnt:I

    .line 686
    return-void
.end method

.method protected setWifiMgrState(I)V
    .locals 0
    .param p1, "wifiMgrState"    # I

    .line 517
    iput p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiMgrState:I

    .line 518
    return-void
.end method

.method setWifiNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "wifiNetwork"    # Landroid/net/Network;

    .line 561
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiNetwork:Landroid/net/Network;

    .line 562
    return-void
.end method

.method setWifiPrefSetting(I)V
    .locals 4
    .param p1, "pref"    # I

    .line 275
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    add-int/lit8 v1, v0, 0x1

    .line 276
    .local v1, "slotId":I
    const-string v2, "wifi_call_preferred"

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 277
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getWifiPrefSetting()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    :cond_1
    return-void
.end method

.method setWifiRoamPrefSetting(I)V
    .locals 4
    .param p1, "pref"    # I

    .line 285
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    add-int/lit8 v1, v0, 0x1

    .line 286
    .local v1, "slotId":I
    const-string v2, "wifi_call_when_roaming"

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getWifiRoamPrefSetting()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    :cond_1
    return-void
.end method

.method setWifiSetting(I)V
    .locals 0
    .param p1, "wifiSetting"    # I

    .line 378
    iput p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mWifiSetting:I

    .line 379
    return-void
.end method

.method public syncSettingsDBwithEpdgDB(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 1403
    return-void
.end method

.method updateApnSupportedTypes()V
    .locals 7

    .line 815
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getApnList()[Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "apnTypeList":[Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mSupportedTypes:I

    .line 817
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 818
    .local v3, "apnType":Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getIntValue()I

    move-result v4

    .line 819
    .local v4, "value":I
    iget v5, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mSupportedTypes:I

    invoke-static {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getSupportedTypeBitMask(I)I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mSupportedTypes:I

    .line 817
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateApnSupportedTypes() mSupportedTypes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mSupportedTypes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method declared-synchronized updateConfigurationFromImsService()V
    .locals 2

    monitor-enter p0

    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->isVolteSupportFromImsProfile(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    .line 1034
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->isVolteSupportFromImsProfile(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVolteEnableFromImsService:Ljava/lang/Boolean;

    goto :goto_0

    .line 1036
    .end local p0    # "this":Lcom/sec/epdg/EpdgSubScriptionBase;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v1, "get config from imsservice"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->isVowifiSupportFromImsService()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVowifiEnableFromImsSerivce:Ljava/lang/Boolean;

    .line 1038
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->isVolteSupportFromImsService()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mVolteEnableFromImsService:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    :goto_0
    monitor-exit p0

    return-void

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateEpdgConfiguration()Z
    .locals 4

    .line 825
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getVowifiSetting()I

    move-result v0

    .line 826
    .local v0, "wfcEnable":I
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getWifiPrefSetting()I

    move-result v1

    .line 827
    .local v1, "wfcPrefMode":I
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getWifiRoamPrefSetting()I

    move-result v2

    .line 828
    .local v2, "wfcRoamPrefMode":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/epdg/EpdgSubScriptionBase;->updateEpdgConfiguration(III)Z

    move-result v3

    return v3
.end method

.method updateEpdgConfiguration(III)Z
    .locals 10
    .param p1, "wfcEnable"    # I
    .param p2, "wfcPrefMode"    # I
    .param p3, "wfcRoamPrefMode"    # I

    .line 832
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mIsEpdgInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 833
    iget-boolean v6, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgHandOver:Z

    .line 834
    .local v6, "handoverEnabled":I
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAirplaneModeSupport()Z

    move-result v7

    .line 835
    .local v7, "airplaneModeSupport":I
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getRoamingSupport()Z

    move-result v8

    .line 837
    .local v8, "roamingSupport":I
    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v2, "AIRTEL_IN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isIndiaInternationalRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move p1, v0

    .line 841
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    iget v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 842
    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v9

    .line 841
    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v2 .. v9}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgConfiguration(IIIIIILjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 843
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPhoneId:I

    .line 844
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAirplaneModeSupport()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getRoamingSupport()Z

    move-result v4

    iget-boolean v5, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdg:Z

    .line 843
    invoke-static {v0, v1, v3, v4, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->broadcastEpdgConfigurationIntent(Landroid/content/Context;IZZZ)V

    .line 845
    return v2

    .line 847
    .end local v6    # "handoverEnabled":I
    .end local v7    # "airplaneModeSupport":I
    .end local v8    # "roamingSupport":I
    :cond_2
    goto :goto_1

    .line 848
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v2, "Epdg service is not yet initialized"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :goto_1
    return v1
.end method

.method public updateHandoverEnableSetting(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 303
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEnableEpdgHandOver:Z

    .line 304
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->updateEpdgConfiguration()Z

    .line 306
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mTelephonyAdapter:Lcom/sec/epdg/TelephonyAdapter;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/TelephonyAdapter;->notifyHandoverEnableChanged(IZ)V

    .line 307
    return-void
.end method

.method updatePolicyTable()V
    .locals 8

    .line 872
    iget-object v0, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mPolicyManager:Lcom/sec/epdg/mapcon/PolicyManager;

    if-eqz v0, :cond_0

    .line 873
    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mOperator:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getVowifiSetting()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getWifiPrefSetting()I

    move-result v3

    .line 874
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->getWifiRoamPrefSetting()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSubScriptionBase;->isVolteEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mNetworkChangeController:Lcom/sec/epdg/NetworkChangeController;

    invoke-virtual {v6}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScriptionBase;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 875
    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getApnList()[Ljava/lang/String;

    move-result-object v7

    .line 873
    invoke-virtual/range {v0 .. v7}, Lcom/sec/epdg/mapcon/PolicyManager;->updatePolicyTable(Ljava/lang/String;IIIZZ[Ljava/lang/String;)V

    .line 877
    :cond_0
    return-void
.end method

.method public updateSnssai(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "snssai"    # Ljava/lang/String;
    .param p2, "plmnid"    # Ljava/lang/String;

    .line 1063
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_d

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 1066
    :cond_0
    const/4 v4, 0x3

    new-array v12, v4, [B

    .line 1067
    .local v12, "sd":[B
    new-array v13, v4, [B

    .line 1068
    .local v13, "mappedSd":[B
    new-array v5, v4, [B

    .line 1069
    .local v5, "PlmnId":[B
    const/4 v6, 0x2

    const/4 v7, -0x1

    aput-byte v7, v12, v6

    const/4 v8, 0x1

    aput-byte v7, v12, v8

    const/4 v9, 0x0

    aput-byte v7, v12, v9

    .line 1070
    aput-byte v7, v13, v6

    aput-byte v7, v13, v8

    aput-byte v7, v13, v9

    .line 1072
    move v10, v9

    .local v10, "mappedSst":I
    move v11, v9

    .local v11, "mappedValid":I
    move v14, v9

    .line 1074
    .local v14, "sst":I
    new-instance v15, Ljava/math/BigInteger;

    const/16 v7, 0x10

    invoke-direct {v15, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v15

    .line 1075
    .local v15, "bytes":[B
    array-length v7, v15

    .line 1076
    .local v7, "snssaiLen":I
    if-ge v7, v6, :cond_1

    .line 1077
    iget-object v4, v0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v6, "snssai has wrong format.use first byte as SST."

    invoke-static {v4, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    aget-byte v14, v15, v9

    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto/16 :goto_0

    .line 1080
    :cond_1
    aget-byte v6, v15, v9

    if-eq v6, v8, :cond_a

    const/4 v4, 0x2

    if-eq v6, v4, :cond_8

    const/4 v4, 0x5

    const/4 v9, 0x4

    if-eq v6, v9, :cond_6

    if-eq v6, v4, :cond_4

    const/16 v9, 0x8

    if-eq v6, v9, :cond_2

    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto/16 :goto_0

    .line 1110
    :cond_2
    aget-byte v14, v15, v8

    .line 1111
    const/16 v6, 0x9

    if-lt v7, v6, :cond_3

    .line 1112
    const/4 v6, 0x2

    aget-byte v17, v15, v6

    const/16 v19, 0x0

    aput-byte v17, v12, v19

    .line 1113
    const/16 v17, 0x3

    aget-byte v17, v15, v17

    aput-byte v17, v12, v8

    .line 1114
    const/16 v17, 0x4

    aget-byte v17, v15, v17

    aput-byte v17, v12, v6

    .line 1115
    const/4 v11, 0x1

    .line 1116
    aget-byte v10, v15, v4

    .line 1117
    const/4 v4, 0x6

    aget-byte v4, v15, v4

    const/4 v6, 0x0

    aput-byte v4, v13, v6

    .line 1118
    const/4 v4, 0x7

    aget-byte v4, v15, v4

    aput-byte v4, v13, v8

    .line 1119
    aget-byte v4, v15, v9

    const/4 v6, 0x2

    aput-byte v4, v13, v6

    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto/16 :goto_0

    .line 1111
    :cond_3
    const/4 v6, 0x2

    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto/16 :goto_0

    .line 1100
    :cond_4
    const/4 v6, 0x2

    aget-byte v14, v15, v8

    .line 1101
    const/4 v9, 0x6

    if-lt v7, v9, :cond_5

    .line 1102
    aget-byte v9, v15, v6

    const/16 v17, 0x0

    aput-byte v9, v12, v17

    .line 1103
    const/4 v9, 0x3

    aget-byte v9, v15, v9

    aput-byte v9, v12, v8

    .line 1104
    const/4 v9, 0x4

    aget-byte v9, v15, v9

    aput-byte v9, v12, v6

    .line 1105
    const/4 v11, 0x1

    .line 1106
    aget-byte v10, v15, v4

    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto :goto_0

    .line 1101
    :cond_5
    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto :goto_0

    .line 1092
    :cond_6
    aget-byte v14, v15, v8

    .line 1093
    if-lt v7, v4, :cond_7

    .line 1094
    const/4 v4, 0x2

    aget-byte v6, v15, v4

    const/4 v9, 0x0

    aput-byte v6, v12, v9

    .line 1095
    const/4 v6, 0x3

    aget-byte v6, v15, v6

    aput-byte v6, v12, v8

    .line 1096
    const/4 v6, 0x4

    aget-byte v6, v15, v6

    aput-byte v6, v12, v4

    .line 1126
    :cond_7
    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto :goto_0

    .line 1085
    :cond_8
    aget-byte v14, v15, v8

    .line 1086
    const/4 v4, 0x3

    if-lt v7, v4, :cond_9

    .line 1087
    const/4 v11, 0x1

    .line 1088
    const/4 v4, 0x2

    aget-byte v10, v15, v4

    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto :goto_0

    .line 1086
    :cond_9
    move v4, v10

    move/from16 v18, v14

    move v14, v11

    goto :goto_0

    .line 1082
    :cond_a
    aget-byte v14, v15, v8

    .line 1083
    move v4, v10

    move/from16 v18, v14

    move v14, v11

    .line 1126
    .end local v10    # "mappedSst":I
    .end local v11    # "mappedValid":I
    .local v4, "mappedSst":I
    .local v14, "mappedValid":I
    .local v18, "sst":I
    :goto_0
    if-eqz v2, :cond_c

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_1

    .line 1130
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v3, v5

    goto :goto_2

    .line 1127
    :cond_c
    :goto_1
    iget-object v3, v0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v6, "plmnid is null"

    invoke-static {v3, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const/4 v3, -0x1

    const/4 v6, 0x2

    aput-byte v3, v5, v6

    aput-byte v3, v5, v8

    const/4 v6, 0x0

    aput-byte v3, v5, v6

    move-object v3, v5

    .line 1132
    .end local v5    # "PlmnId":[B
    .local v3, "PlmnId":[B
    :goto_2
    iget-object v5, v0, Lcom/sec/epdg/EpdgSubScriptionBase;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    move/from16 v6, v18

    move/from16 v16, v7

    .end local v7    # "snssaiLen":I
    .local v16, "snssaiLen":I
    move-object v7, v12

    move v8, v14

    move v9, v4

    move-object v10, v13

    move-object v11, v3

    invoke-interface/range {v5 .. v11}, Lcom/sec/epdg/EpdgRilInterface;->updateSNSSAI(I[BII[B[B)Z

    goto :goto_4

    .line 1064
    .end local v3    # "PlmnId":[B
    .end local v4    # "mappedSst":I
    .end local v12    # "sd":[B
    .end local v13    # "mappedSd":[B
    .end local v14    # "mappedValid":I
    .end local v15    # "bytes":[B
    .end local v16    # "snssaiLen":I
    .end local v18    # "sst":I
    :cond_d
    :goto_3
    iget-object v3, v0, Lcom/sec/epdg/EpdgSubScriptionBase;->TAG:Ljava/lang/String;

    const-string v4, "snssai is null"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :goto_4
    return-void
.end method
