.class public Lcom/sec/epdg/EpdgSettings;
.super Ljava/lang/Object;
.source "EpdgSettings.java"

# interfaces
.implements Lcom/sec/epdg/interfaces/IEpdgSettings;


# instance fields
.field private mAirplaneModeSupport:Z

.field private mAlwaysOnApnType:Ljava/lang/String;

.field private mAttachPdn:Ljava/lang/String;

.field private mCdmaRssi:I

.field private mCertiPath:Ljava/lang/String;

.field private mDpdThresholdLatency:I

.field private mEmergencyApnType:Ljava/lang/String;

.field private mEpdgEnable:Z

.field private mEpdgFqdn:Ljava/lang/String;

.field private mHandoverSupport:Z

.field private mHoDelayTimer:I

.field private mIdiImsi:I

.field private mIdiMac:I

.field private mImeiVendorAttr:I

.field private mIsAnsIntegrationEnabled:Z

.field private mIsBroadcastHONotiEnabled:Z

.field private mIsConnectedModeDpdAllow:Z

.field private mIsDynamicFqdn:Z

.field private mIsDynamicUserFqdn:Z

.field private mIsIpv6Enabled:Z

.field private mIsIpv6Preferred:Z

.field private mIsRetryEnabledForAlwaysOnApn:Z

.field private mIsRtcpIntegrationEnabled:Z

.field private mIsTestingOnDemandPdnHandoff:Z

.field private mIsThrottlingEnabled:Z

.field private mIsUsingCerti:Z

.field private mIsVowifiOn:Z

.field private mKeepAliveTimer:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mLteRsrqRoveOut:I

.field private mLteRsrqRovein:I

.field private mLteRsrqRoveinWeak:I

.field private mPcscfv4:I

.field private mPcscfv6:I

.field private mPingAddress:Ljava/lang/String;

.field private mPingCount:I

.field private mPingTimeout:I

.field private mPktLossPercentL2W:I

.field private mPktLossPercentW2L:I

.field private mQualityFrequencyTimer:I

.field private mRoamingSupport:Z

.field private mRtpRtcpLossMaxCnt:I

.field private mRtpRtcpLossRatePercent:I

.field private mSmartWifiTimer:I

.field private mSysSelTimer:I

.field private mTepdg1xScanTimer:I

.field private mTepdg1xTimer:I

.field private mTepdgLteMeasurementCount:I

.field private mTepdgLteMeasurementTimer:I

.field private mTepdgLteTimer:I

.field private mTepdgWifiMeasurementCount:I

.field private mTepdgWifiMeasurementTimer:I

.field private mTestInterfaceNum:I

.field private mThreshold2gRoveIn:I

.field private mThreshold2gRoveOut:I

.field private mThreshold3gRoveIn:I

.field private mThreshold3gRoveOut:I

.field private mThreshold4gRoveIn:I

.field private mThreshold4gRoveOut:I

.field private mThresholdEcioRoveIn:I

.field private mThresholdEcioRoveOut:I

.field private mThresholdSnrRoveIn:I

.field private mThresholdSnrRoveOut:I

.field private mThresholdpingrttW2L:I

.field private mWfcCallMenu:Z

.field private mWfcQuicksettingMenu:Z

.field private mWfcSettingMenu:Z

.field private mWifiIpConfigTimer:I

.field private mWifiRssiA:I

.field private mWifiRssiB:I

.field private mWifiRssiC:I

.field private mWifiRssiRoveInVoice:I

.field private mWifiRssiRoveInWifiOnly:I

.field private mWifiRssiRoveOutWifiOnly:I


# direct methods
.method protected constructor <init>(IIIIIIIIIIIIILjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIIZLjava/lang/String;ZZZLjava/lang/String;ZZZZZZZ)V
    .locals 16
    .param p1, "wifiRssiA"    # I
    .param p2, "wifiRssiB"    # I
    .param p3, "wifiRssiC"    # I
    .param p4, "wifiRssiRoveInWifiOnly"    # I
    .param p5, "wifiRssiRoveOutWifiOnly"    # I
    .param p6, "wifiRssiRoveInVoice"    # I
    .param p7, "lteRsrp1"    # I
    .param p8, "lteRsrp2"    # I
    .param p9, "lteRsrp3"    # I
    .param p10, "lteRsrqRoveout"    # I
    .param p11, "lteRsrqRoveinWeak"    # I
    .param p12, "lteRsrqRovein"    # I
    .param p13, "cdmaRssi"    # I
    .param p14, "pingAddr"    # Ljava/lang/String;
    .param p15, "pktLossPercentL2W"    # I
    .param p16, "pktLossPercentW2L"    # I
    .param p17, "thresholdpingrttW2L"    # I
    .param p18, "pingCount"    # I
    .param p19, "pingTimeout"    # I
    .param p20, "rtprtcplossratepercent"    # I
    .param p21, "rtprtcplossmaxcnt"    # I
    .param p22, "dpdThresholdLatency"    # I
    .param p23, "threshold4gRoveIn"    # I
    .param p24, "threshold4gRoveOut"    # I
    .param p25, "threshold3gRoveIn"    # I
    .param p26, "threshold3gRoveOut"    # I
    .param p27, "threshold2gRoveIn"    # I
    .param p28, "threshold2gRoveOut"    # I
    .param p29, "thresholdSnrIn"    # I
    .param p30, "thresholdSnrOut"    # I
    .param p31, "thresholdEcioIn"    # I
    .param p32, "thresholdEcioOut"    # I
    .param p33, "sysSelTimer"    # I
    .param p34, "tepdgLteTimer"    # I
    .param p35, "tepdg1xTimer"    # I
    .param p36, "tepdg1xScanTimer"    # I
    .param p37, "hoDelayTimer"    # I
    .param p38, "wifiIpConfigTimer"    # I
    .param p39, "qualityFrequencyTimer"    # I
    .param p40, "tepdgLteMeasurementTimer"    # I
    .param p41, "tepdgLteMeasurementCount"    # I
    .param p42, "tepdgWifiMeasurementTimer"    # I
    .param p43, "tepdgWifiMeasurementCount"    # I
    .param p44, "idimac"    # I
    .param p45, "idiImsi"    # I
    .param p46, "isDataRetryEnabled"    # Z
    .param p47, "smartWifiTimer"    # I
    .param p48, "keepAliveTimer"    # I
    .param p49, "epdgFqdn"    # Ljava/lang/String;
    .param p50, "isDynamicFqdn"    # Z
    .param p51, "isDynamicUserFqdn"    # Z
    .param p52, "isAnsIntegrationEnabled"    # Z
    .param p53, "isRtcpIntegrationEnabled"    # Z
    .param p54, "isBroadcastHONotiEnabled"    # Z
    .param p55, "attachPdn"    # Ljava/lang/String;
    .param p56, "alwaysOnApnType"    # Ljava/lang/String;
    .param p57, "isVowifiOn"    # Z
    .param p58, "isTestingOnDemandPdnHandoff"    # Z
    .param p59, "isThrottlingEnabled"    # Z
    .param p60, "pcscfv4"    # I
    .param p61, "pcscfv6"    # I
    .param p62, "imei"    # I
    .param p63, "testInterfaceNum"    # I
    .param p64, "isEpdgEnable"    # Z
    .param p65, "emergencyApnType"    # Ljava/lang/String;
    .param p66, "isConnectedModeDpdAllow"    # Z
    .param p67, "isIpv6Enabled"    # Z
    .param p68, "isIpv6Preferred"    # Z
    .param p69, "certiPath"    # Ljava/lang/String;
    .param p70, "isUsingCerti"    # Z
    .param p71, "isHandoverSupport"    # Z
    .param p72, "isAirplaneModeSupport"    # Z
    .param p73, "isRoamingSupport"    # Z
    .param p74, "wfcCallmenu"    # Z
    .param p75, "wfcSettingMenu"    # Z
    .param p76, "wfcQuicksettingMenu"    # Z

    .line 181
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    move/from16 v1, p1

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiA:I

    .line 183
    move/from16 v2, p2

    iput v2, v0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiB:I

    .line 184
    move/from16 v3, p3

    iput v3, v0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiC:I

    .line 185
    move/from16 v4, p4

    iput v4, v0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInWifiOnly:I

    .line 186
    move/from16 v5, p5

    iput v5, v0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveOutWifiOnly:I

    .line 187
    move/from16 v6, p6

    iput v6, v0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInVoice:I

    .line 188
    move/from16 v7, p7

    iput v7, v0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp1:I

    .line 189
    move/from16 v8, p8

    iput v8, v0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp2:I

    .line 190
    move/from16 v9, p9

    iput v9, v0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp3:I

    .line 191
    move/from16 v10, p10

    iput v10, v0, Lcom/sec/epdg/EpdgSettings;->mLteRsrqRoveOut:I

    .line 192
    move/from16 v11, p11

    iput v11, v0, Lcom/sec/epdg/EpdgSettings;->mLteRsrqRoveinWeak:I

    .line 193
    move/from16 v12, p12

    iput v12, v0, Lcom/sec/epdg/EpdgSettings;->mLteRsrqRovein:I

    .line 194
    move/from16 v13, p13

    iput v13, v0, Lcom/sec/epdg/EpdgSettings;->mCdmaRssi:I

    .line 195
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/sec/epdg/EpdgSettings;->mPingAddress:Ljava/lang/String;

    .line 196
    move/from16 v15, p15

    iput v15, v0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercentL2W:I

    .line 197
    move/from16 v1, p16

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercentW2L:I

    .line 198
    move/from16 v1, p17

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThresholdpingrttW2L:I

    .line 199
    move/from16 v1, p18

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mPingCount:I

    .line 200
    move/from16 v1, p19

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mPingTimeout:I

    .line 201
    move/from16 v1, p20

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mRtpRtcpLossRatePercent:I

    .line 202
    move/from16 v1, p21

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mRtpRtcpLossMaxCnt:I

    .line 203
    move/from16 v1, p22

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mDpdThresholdLatency:I

    .line 204
    move/from16 v1, p23

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveIn:I

    .line 205
    move/from16 v1, p24

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveOut:I

    .line 206
    move/from16 v1, p25

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveIn:I

    .line 207
    move/from16 v1, p26

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveOut:I

    .line 208
    move/from16 v1, p27

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveIn:I

    .line 209
    move/from16 v1, p28

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveOut:I

    .line 210
    move/from16 v1, p29

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThresholdSnrRoveIn:I

    .line 211
    move/from16 v1, p30

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThresholdSnrRoveOut:I

    .line 212
    move/from16 v1, p31

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThresholdEcioRoveIn:I

    .line 213
    move/from16 v1, p32

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mThresholdEcioRoveOut:I

    .line 214
    move/from16 v1, p33

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mSysSelTimer:I

    .line 215
    move/from16 v1, p34

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteTimer:I

    .line 216
    move/from16 v1, p35

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xTimer:I

    .line 217
    move/from16 v1, p36

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xScanTimer:I

    .line 218
    move/from16 v1, p37

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mHoDelayTimer:I

    .line 219
    move/from16 v1, p38

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mWifiIpConfigTimer:I

    .line 220
    move/from16 v1, p39

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mQualityFrequencyTimer:I

    .line 221
    move/from16 v1, p40

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteMeasurementTimer:I

    .line 222
    move/from16 v1, p41

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteMeasurementCount:I

    .line 223
    move/from16 v1, p42

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mTepdgWifiMeasurementTimer:I

    .line 224
    move/from16 v1, p43

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mTepdgWifiMeasurementCount:I

    .line 225
    move/from16 v1, p44

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mIdiMac:I

    .line 226
    move/from16 v1, p45

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mIdiImsi:I

    .line 227
    move/from16 v1, p46

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsRetryEnabledForAlwaysOnApn:Z

    .line 228
    move/from16 v1, p47

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mSmartWifiTimer:I

    .line 229
    move/from16 v1, p48

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mKeepAliveTimer:I

    .line 230
    move-object/from16 v1, p49

    iput-object v1, v0, Lcom/sec/epdg/EpdgSettings;->mEpdgFqdn:Ljava/lang/String;

    .line 231
    move/from16 v1, p50

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicFqdn:Z

    .line 232
    move/from16 v1, p51

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicUserFqdn:Z

    .line 233
    move/from16 v1, p52

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsAnsIntegrationEnabled:Z

    .line 234
    move/from16 v1, p53

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsRtcpIntegrationEnabled:Z

    .line 235
    move/from16 v1, p54

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsBroadcastHONotiEnabled:Z

    .line 236
    move-object/from16 v1, p55

    iput-object v1, v0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    .line 237
    move-object/from16 v1, p56

    iput-object v1, v0, Lcom/sec/epdg/EpdgSettings;->mAlwaysOnApnType:Ljava/lang/String;

    .line 238
    move/from16 v1, p57

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsVowifiOn:Z

    .line 239
    move/from16 v1, p58

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsTestingOnDemandPdnHandoff:Z

    .line 240
    move/from16 v1, p59

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsThrottlingEnabled:Z

    .line 241
    move/from16 v1, p60

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mPcscfv4:I

    .line 242
    move/from16 v1, p61

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mPcscfv6:I

    .line 243
    move/from16 v1, p62

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mImeiVendorAttr:I

    .line 244
    move/from16 v1, p63

    iput v1, v0, Lcom/sec/epdg/EpdgSettings;->mTestInterfaceNum:I

    .line 245
    move/from16 v1, p64

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mEpdgEnable:Z

    .line 246
    move-object/from16 v1, p65

    iput-object v1, v0, Lcom/sec/epdg/EpdgSettings;->mEmergencyApnType:Ljava/lang/String;

    .line 247
    move/from16 v1, p66

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsConnectedModeDpdAllow:Z

    .line 248
    move/from16 v1, p67

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Enabled:Z

    .line 249
    move/from16 v1, p68

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Preferred:Z

    .line 250
    move-object/from16 v1, p69

    iput-object v1, v0, Lcom/sec/epdg/EpdgSettings;->mCertiPath:Ljava/lang/String;

    .line 251
    move/from16 v1, p70

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mIsUsingCerti:Z

    .line 252
    move/from16 v1, p71

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mHandoverSupport:Z

    .line 253
    move/from16 v1, p72

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mAirplaneModeSupport:Z

    .line 254
    move/from16 v1, p73

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mRoamingSupport:Z

    .line 255
    move/from16 v1, p74

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mWfcCallMenu:Z

    .line 256
    move/from16 v1, p75

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mWfcSettingMenu:Z

    .line 257
    move/from16 v1, p76

    iput-boolean v1, v0, Lcom/sec/epdg/EpdgSettings;->mWfcQuicksettingMenu:Z

    .line 258
    return-void
.end method

.method public static getInstance(IIIIIIIIIIIIILjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIIZLjava/lang/String;ZZZLjava/lang/String;ZZZZZZZ)Lcom/sec/epdg/EpdgSettings;
    .locals 78
    .param p0, "wifiRssiA"    # I
    .param p1, "wifiRssiB"    # I
    .param p2, "wifiRssiC"    # I
    .param p3, "wifiRssiRoveInWifiOnly"    # I
    .param p4, "wifiRssiRoveOutWifiOnly"    # I
    .param p5, "wifiRssiRoveInVoice"    # I
    .param p6, "lteRsrp1"    # I
    .param p7, "lteRsrp2"    # I
    .param p8, "lteRsrp3"    # I
    .param p9, "lteRsrqRoveout"    # I
    .param p10, "lteRsrqRoveinWeak"    # I
    .param p11, "lteRsrqRovein"    # I
    .param p12, "cdmaRssi"    # I
    .param p13, "pingAddr"    # Ljava/lang/String;
    .param p14, "pktLossPercentL2W"    # I
    .param p15, "pktLossPercentW2L"    # I
    .param p16, "thresholdpingrttW2L"    # I
    .param p17, "pingCount"    # I
    .param p18, "pingTimeout"    # I
    .param p19, "rtprtcplossratepercent"    # I
    .param p20, "rtprtcplossmaxcnt"    # I
    .param p21, "dpdThresholdLatency"    # I
    .param p22, "threshold4gRoveIn"    # I
    .param p23, "threshold4gRoveOut"    # I
    .param p24, "threshold3gRoveIn"    # I
    .param p25, "threshold3gRoveOut"    # I
    .param p26, "threshold2gRoveIn"    # I
    .param p27, "threshold2gRoveOut"    # I
    .param p28, "thresholdSnrIn"    # I
    .param p29, "thresholdSnrOut"    # I
    .param p30, "thresholdEcioIn"    # I
    .param p31, "thresholdEcioOut"    # I
    .param p32, "sysSelTimer"    # I
    .param p33, "tepdgLteTimer"    # I
    .param p34, "tepdg1xTimer"    # I
    .param p35, "tepdg1xScanTimer"    # I
    .param p36, "hoDelayTimer"    # I
    .param p37, "wifiIpConfigTimer"    # I
    .param p38, "qualityFreqTimer"    # I
    .param p39, "tepdgLteMeasurementTimer"    # I
    .param p40, "tepdgLteMeasurementCount"    # I
    .param p41, "tepdgWifiMeasurementTimer"    # I
    .param p42, "tepdgWifiMeasurementCount"    # I
    .param p43, "idimac"    # I
    .param p44, "idiImsi"    # I
    .param p45, "isRetryEnabledForAlwaysOnApn"    # Z
    .param p46, "smartWifiTimer"    # I
    .param p47, "keepAliveTimer"    # I
    .param p48, "EpdgFQDN"    # Ljava/lang/String;
    .param p49, "isDynamicFQDN"    # Z
    .param p50, "isDynamicUserFQDN"    # Z
    .param p51, "isAnsIntegrationEnabled"    # Z
    .param p52, "isRtcpIntegrationEnabled"    # Z
    .param p53, "isBroadcastHONotiEnabled"    # Z
    .param p54, "attachPdn"    # Ljava/lang/String;
    .param p55, "alwaysOnApnType"    # Ljava/lang/String;
    .param p56, "isVowifiOn"    # Z
    .param p57, "isTestingOnDemandPdnHandoff"    # Z
    .param p58, "isThrottlingEnabled"    # Z
    .param p59, "pcscfv4"    # I
    .param p60, "pcscfv6"    # I
    .param p61, "imei"    # I
    .param p62, "testInterfaceNum"    # I
    .param p63, "isEpdgEnable"    # Z
    .param p64, "emergencyApnType"    # Ljava/lang/String;
    .param p65, "isConnectedModeDpdAllow"    # Z
    .param p66, "isIpv6Enabled"    # Z
    .param p67, "isIpv6Preferred"    # Z
    .param p68, "certiPath"    # Ljava/lang/String;
    .param p69, "isUsingCerti"    # Z
    .param p70, "isHandoverSupport"    # Z
    .param p71, "isAirplaneModeSupport"    # Z
    .param p72, "isRoamingSupport"    # Z
    .param p73, "wfcCallmenu"    # Z
    .param p74, "wfcSettingMenu"    # Z
    .param p75, "wfcQuicksettingMenu"    # Z

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move/from16 v37, p36

    move/from16 v38, p37

    move/from16 v39, p38

    move/from16 v40, p39

    move/from16 v41, p40

    move/from16 v42, p41

    move/from16 v43, p42

    move/from16 v44, p43

    move/from16 v45, p44

    move/from16 v46, p45

    move/from16 v47, p46

    move/from16 v48, p47

    move-object/from16 v49, p48

    move/from16 v50, p49

    move/from16 v51, p50

    move/from16 v52, p51

    move/from16 v53, p52

    move/from16 v54, p53

    move-object/from16 v55, p54

    move-object/from16 v56, p55

    move/from16 v57, p56

    move/from16 v58, p57

    move/from16 v59, p58

    move/from16 v60, p59

    move/from16 v61, p60

    move/from16 v62, p61

    move/from16 v63, p62

    move/from16 v64, p63

    move-object/from16 v65, p64

    move/from16 v66, p65

    move/from16 v67, p66

    move/from16 v68, p67

    move-object/from16 v69, p68

    move/from16 v70, p69

    move/from16 v71, p70

    move/from16 v72, p71

    move/from16 v73, p72

    move/from16 v74, p73

    move/from16 v75, p74

    move/from16 v76, p75

    .line 276
    new-instance v77, Lcom/sec/epdg/EpdgSettings;

    move-object/from16 v0, v77

    invoke-direct/range {v0 .. v76}, Lcom/sec/epdg/EpdgSettings;-><init>(IIIIIIIIIIIIILjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIIZLjava/lang/String;ZZZLjava/lang/String;ZZZZZZZ)V

    .line 290
    .local v0, "mEpdgSettings":Lcom/sec/epdg/EpdgSettings;
    return-object v0
.end method


# virtual methods
.method public getAirplaneModeSupport()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mAirplaneModeSupport:Z

    return v0
.end method

.method public getAlwaysOnApn()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAlwaysOnApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdn()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    return-object v0
.end method

.method public getCdmaRssi()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mCdmaRssi:I

    return v0
.end method

.method public getCertiPath()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mCertiPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEmergencyApnType()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEmergencyApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getEpdgEnable()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mEpdgEnable:Z

    return v0
.end method

.method public getEpdgFQDN()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEpdgFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getEpdgPingAddress()Ljava/lang/String;
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mPingAddress:Ljava/lang/String;

    const-string v1, "0.0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mPingAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHandoverSupport()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mHandoverSupport:Z

    return v0
.end method

.method public getHoDelayTimer()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mHoDelayTimer:I

    return v0
.end method

.method public getIdiImsi()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiImsi:I

    return v0
.end method

.method public getIdiMac()I
    .locals 1

    .line 476
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiMac:I

    return v0
.end method

.method public getImeiVendorAttrType()I
    .locals 1

    .line 548
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mImeiVendorAttr:I

    return v0
.end method

.method public getIsAnsIntegrationEnabled()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsAnsIntegrationEnabled:Z

    return v0
.end method

.method public getIsBroadcastHONotiEnabled()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsBroadcastHONotiEnabled:Z

    return v0
.end method

.method public getIsDynamicFQDN()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicFqdn:Z

    return v0
.end method

.method public getIsDynamicUserFQDN()Z
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicUserFqdn:Z

    return v0
.end method

.method public getIsIpv6Enabled()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Enabled:Z

    return v0
.end method

.method public getIsIpv6Preferred()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Preferred:Z

    return v0
.end method

.method public getIsRtcpIntegrationEnabled()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRtcpIntegrationEnabled:Z

    return v0
.end method

.method public getIsTestingOnDemandPdnHandoff()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsTestingOnDemandPdnHandoff:Z

    return v0
.end method

.method public getIsUsingCerti()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsUsingCerti:Z

    return v0
.end method

.method public getIsVoWifiEnabled()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsVowifiOn:Z

    return v0
.end method

.method public getL2WPktLossPercent()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercentL2W:I

    return v0
.end method

.method public getLteRsrp1()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp3:I

    return v0
.end method

.method public getLteRsrqRoveOut()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrqRoveOut:I

    return v0
.end method

.method public getLteRsrqRovein()I
    .locals 1

    .line 339
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrqRovein:I

    return v0
.end method

.method public getLteRsrqRoveinWeak()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrqRoveinWeak:I

    return v0
.end method

.method public getPcscfv4VendorAttr()I
    .locals 1

    .line 540
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv4:I

    return v0
.end method

.method public getPcscfv6VendorAttr()I
    .locals 1

    .line 544
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv6:I

    return v0
.end method

.method public getPingCount()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPingCount:I

    return v0
.end method

.method public getPingTimeout()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPingTimeout:I

    return v0
.end method

.method public getQualityFrequencyTimer()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mQualityFrequencyTimer:I

    return v0
.end method

.method public getRoamingSupport()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mRoamingSupport:Z

    return v0
.end method

.method public getRtpRtcpLossMaxCnt()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mRtpRtcpLossMaxCnt:I

    return v0
.end method

.method public getRtpRtcpLossRatePercent()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mRtpRtcpLossRatePercent:I

    return v0
.end method

.method public getSmartWifiTimer()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mSmartWifiTimer:I

    return v0
.end method

.method public getSysSelTimer()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mSysSelTimer:I

    return v0
.end method

.method public getTepdg1xScanTimer()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xScanTimer:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteMeasurementCount()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteMeasurementCount:I

    return v0
.end method

.method public getTepdgLteMeasurementTimer()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteMeasurementTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteTimer:I

    return v0
.end method

.method public getTepdgWifiMeasurementCount()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgWifiMeasurementCount:I

    return v0
.end method

.method public getTepdgWifiMeasurementTimer()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgWifiMeasurementTimer:I

    return v0
.end method

.method public getTestNetInterfaceNum()I
    .locals 1

    .line 552
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTestInterfaceNum:I

    return v0
.end method

.method public getThreshold2gRoveIn()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveIn:I

    return v0
.end method

.method public getThreshold2gRoveOut()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveOut:I

    return v0
.end method

.method public getThreshold3gRoveIn()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveIn:I

    return v0
.end method

.method public getThreshold3gRoveOut()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveOut:I

    return v0
.end method

.method public getThreshold4gRoveIn()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveIn:I

    return v0
.end method

.method public getThreshold4gRoveOut()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveOut:I

    return v0
.end method

.method public getThresholdDpdLatency()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mDpdThresholdLatency:I

    return v0
.end method

.method public getThresholdEcioRoveIn()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThresholdEcioRoveIn:I

    return v0
.end method

.method public getThresholdEcioRoveOut()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThresholdEcioRoveOut:I

    return v0
.end method

.method public getThresholdSnrRoveIn()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThresholdSnrRoveIn:I

    return v0
.end method

.method public getThresholdSnrRoveOut()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThresholdSnrRoveOut:I

    return v0
.end method

.method public getW2LPktLossPercent()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercentW2L:I

    return v0
.end method

.method public getW2LThresholdpingrtt()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThresholdpingrttW2L:I

    return v0
.end method

.method public getWfcCallMenu()Z
    .locals 1

    .line 596
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mWfcCallMenu:Z

    return v0
.end method

.method public getWfcQuicksettingMenu()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mWfcQuicksettingMenu:Z

    return v0
.end method

.method public getWfcSettingMenu()Z
    .locals 1

    .line 600
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mWfcSettingMenu:Z

    return v0
.end method

.method public getWifiIpConfigTimer()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiIpConfigTimer:I

    return v0
.end method

.method public getWifiRssiA()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiB:I

    return v0
.end method

.method public getWifiRssiC()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiC:I

    return v0
.end method

.method public getWifiRssiRoveInVoice()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInVoice:I

    return v0
.end method

.method public getWifiRssiRoveInWifiOnly()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInWifiOnly:I

    return v0
.end method

.method public getWifiRssiRoveOutWifiOnly()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveOutWifiOnly:I

    return v0
.end method

.method public getmKeepAliveTimer()I
    .locals 1

    .line 492
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mKeepAliveTimer:I

    return v0
.end method

.method public isConnectedModeDpdAllow()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsConnectedModeDpdAllow:Z

    return v0
.end method

.method public isRetryEnabledForAlwaysOnApn()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRetryEnabledForAlwaysOnApn:Z

    return v0
.end method

.method public isThrottlingEnabled()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsThrottlingEnabled:Z

    return v0
.end method

.method public toStringThreshold()Ljava/lang/String;
    .locals 2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWifiRssiA :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    const-string v1, " mWifiRssiB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    const-string v1, " mWifiRssiC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, " mWifiRssiRoveInWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, " mWifiRssiRoveOutWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, " mWifiRssiRoveInVoice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, " mLteRsrp1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, " mLteRsrp2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    const-string v1, " mLteRsrp3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    return-object v0
.end method
