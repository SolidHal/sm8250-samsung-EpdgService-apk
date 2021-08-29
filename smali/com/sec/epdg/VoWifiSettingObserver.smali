.class public Lcom/sec/epdg/VoWifiSettingObserver;
.super Lcom/sec/epdg/EpdgContentObserverBase;
.source "VoWifiSettingObserver.java"


# static fields
.field private static final VOWIFI_MENU_URI:Landroid/net/Uri;


# instance fields
.field TAG:Ljava/lang/String;

.field private isObserverRegistered:Z

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mPhoneId:I

.field mSubId:I

.field mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private prevPreferred:I

.field private prevRoamingPreferred:I

.field private prevVowifiEnable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "vowifi_menu_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/VoWifiSettingObserver;->VOWIFI_MENU_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;II)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgContentObserverBase;-><init>(Landroid/os/Handler;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevVowifiEnable:I

    .line 30
    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevPreferred:I

    .line 31
    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevRoamingPreferred:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->isObserverRegistered:Z

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [VoWifiSettingObserver]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object p2, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 41
    iput p4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    .line 42
    iput p5, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubId:I

    .line 43
    return-void
.end method

.method private handleVowifiMdnForSpecificCarrier()V
    .locals 7

    .line 209
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 214
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v2

    iget v3, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    iget v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubId:I

    .line 215
    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubId:I

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-static/range {v1 .. v6}, Lcom/sec/epdg/VoWifiSettings;->resetWifiCallingIfMDNChanged(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v0    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void
.end method

.method private handleWifiCallEnableForSpecificCarrier(I)V
    .locals 5
    .param p1, "wfcEnable"    # I

    .line 156
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->getWfcComponent(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "componentName":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgWfcProfileReader;->getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    .line 165
    invoke-static {v2}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 164
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgWfcProfileReader;->saveApProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 168
    .end local v0    # "componentName":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleWifiCallPreferredForSpecificCarrier(I)V
    .locals 4
    .param p1, "wfcPrefMode"    # I

    .line 171
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 177
    .local v0, "def_pref":I
    :goto_0
    if-eq p1, v0, :cond_1

    .line 179
    iget-object v2, p0, Lcom/sec/epdg/VoWifiSettingObserver;->TAG:Ljava/lang/String;

    const-string v3, "TMOCPref : set user perfer mode change"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgSubScription;->setProfileChangedByUser(I)V

    goto :goto_1

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getProfileChangedByUser()I

    move-result v2

    if-ne v1, v2, :cond_2

    if-ne p1, v0, :cond_2

    .line 183
    iget-object v1, p0, Lcom/sec/epdg/VoWifiSettingObserver;->TAG:Ljava/lang/String;

    const-string v2, "TMOCPref : reset user perfer mode change"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setProfileChangedByUser(I)V

    .line 187
    .end local v0    # "def_pref":I
    :cond_2
    :goto_1
    return-void
.end method

.method private handleWifiCallWhenRoaming(III)V
    .locals 7
    .param p1, "wfcEnable"    # I
    .param p2, "wfcPrefMode"    # I
    .param p3, "wfcRoamPrefMode"    # I

    .line 190
    iget v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevRoamingPreferred:I

    if-ne v0, p3, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->TAG:Ljava/lang/String;

    const-string v1, "VoWifiSettingObserver:roamingPreferred not changed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 194
    :cond_0
    iput p3, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevRoamingPreferred:I

    .line 196
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p3}, Lcom/sec/epdg/EpdgSubScription;->setWifiRoamPrefSetting(I)V

    .line 197
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getVoWiFiEnableFromImsService()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    iget v6, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubId:I

    invoke-static/range {v1 .. v6}, Lcom/sec/epdg/VoWifiSettings;->saveWfcSetting(ZZLandroid/content/Context;Ljava/lang/String;II)V

    .line 199
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->updatePolicyTable()V

    .line 202
    :cond_1
    return-void
.end method


# virtual methods
.method public onChangeSlowPath(ZLandroid/net/Uri;)V
    .locals 19
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/VoWifiSettingObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoWifiSettingObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v1

    .line 97
    .local v1, "enable":I
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getWifiPrefSetting()I

    move-result v9

    .line 98
    .local v9, "preferred":I
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getWifiRoamPrefSetting()I

    move-result v10

    .line 99
    .local v10, "roamingPreferred":I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi_call_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v11, 0x0

    const-string v4, "wifi_call_preferred"

    if-nez v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v12, p2

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi_call_when_roaming"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1, v9, v10}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgConfiguration(III)Z

    .line 146
    invoke-direct {v0, v1, v9, v10}, Lcom/sec/epdg/VoWifiSettingObserver;->handleWifiCallWhenRoaming(III)V

    move-object/from16 v12, p2

    goto/16 :goto_4

    .line 147
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vowifi_mdn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/VoWifiSettingObserver;->handleVowifiMdnForSpecificCarrier()V

    move-object/from16 v12, p2

    goto/16 :goto_4

    .line 149
    :cond_2
    sget-object v2, Lcom/sec/epdg/VoWifiSettingObserver;->VOWIFI_MENU_URI:Landroid/net/Uri;

    move-object/from16 v12, p2

    invoke-virtual {v12, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 150
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vowifi_menu_enable"

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 151
    .local v2, "status":I
    iget-object v3, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    const-string v5, "WFC_MENU"

    invoke-static {v3, v4, v5, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    goto/16 :goto_4

    .line 99
    .end local v2    # "status":I
    :cond_3
    move-object/from16 v12, p2

    .line 100
    :goto_0
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1, v9, v10}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgConfiguration(III)Z

    .line 101
    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->prevVowifiEnable:I

    if-ne v2, v1, :cond_4

    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->prevPreferred:I

    if-eq v2, v9, :cond_a

    .line 102
    :cond_4
    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->prevVowifiEnable:I

    if-eq v2, v1, :cond_5

    .line 103
    iput v1, v0, Lcom/sec/epdg/VoWifiSettingObserver;->prevVowifiEnable:I

    .line 104
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VoWifiSettingObserver: VoWiFi settings is changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/sec/epdg/VoWifiSettingObserver;->prevVowifiEnable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_5
    iput v9, v0, Lcom/sec/epdg/VoWifiSettingObserver;->prevPreferred:I

    .line 107
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VoWifiSettingObserver - WIFI perferred mode changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v2, v5, v1, v11}, Lcom/sec/epdg/VoWifiSettings;->setVowifiSetting(Landroid/content/Context;IIZ)V

    .line 112
    invoke-direct {v0, v1}, Lcom/sec/epdg/VoWifiSettingObserver;->handleWifiCallEnableForSpecificCarrier(I)V

    .line 113
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->onEpdgReadinessConditionUpdate()V

    goto :goto_2

    .line 114
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 115
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v9}, Lcom/sec/epdg/EpdgSubScription;->setWifiPrefSetting(I)V

    .line 116
    invoke-direct {v0, v9}, Lcom/sec/epdg/VoWifiSettingObserver;->handleWifiCallPreferredForSpecificCarrier(I)V

    .line 120
    :cond_7
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x190

    if-eqz v2, :cond_8

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",CHANGE_WIFICALLING "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 122
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_WIFICALLING_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    goto :goto_3

    .line 123
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",CHANGE_PREFMODE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 125
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataParams()Lcom/sec/epdg/BigData/EpdgBigDataParams;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_PREFMODE_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/BigData/EpdgBigDataParams;->setHandoverTriggerReasonForEPDI(I)V

    .line 128
    :cond_9
    :goto_3
    const/4 v13, 0x0

    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getVoWiFiEnableFromImsService()Z

    move-result v14

    iget-object v15, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v16

    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    iget v3, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubId:I

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-static/range {v13 .. v18}, Lcom/sec/epdg/VoWifiSettings;->saveWfcSetting(ZZLandroid/content/Context;Ljava/lang/String;II)V

    .line 130
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgSubScription;->setVowifiUserSetting(I)V

    .line 131
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 132
    iget-object v13, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/sec/epdg/WifiCallEnabler;

    iget-object v4, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget v5, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    const/4 v8, 0x0

    move-object v2, v14

    move-object v3, v13

    move v6, v1

    move v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/sec/epdg/WifiCallEnabler;-><init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;IIIZ)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_a
    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    if-eqz v2, :cond_b

    .line 137
    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    iget-object v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->checkMDN()Z

    move-result v2

    if-nez v2, :cond_b

    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    .line 138
    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgEntitlement;->getEntitlementStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    .line 139
    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/sec/epdg/EpdgEntitlement;->setEntitlementStatus(I)V

    .line 140
    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgEntitlement;->startCheckEntitlement()I

    .line 141
    iget v2, v0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgEntitlement;->setEntitlementStatus(I)V

    .line 153
    :cond_b
    :goto_4
    return-void
.end method

.method public registerObserver(I)V
    .locals 6
    .param p1, "subId"    # I

    .line 56
    iput p1, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mSubId:I

    .line 57
    iget-boolean v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->isObserverRegistered:Z

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/sec/epdg/VoWifiSettingObserver;->registerVoWifiMenuObserver()V

    .line 59
    iget v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mPhoneId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_call_enable1"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevVowifiEnable:I

    .line 61
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_call_preferred1"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevPreferred:I

    .line 62
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "wifi_call_when_roaming1"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevRoamingPreferred:I

    .line 63
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    .local v0, "mWifiCallEnableUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, "mWifiCallPreferredUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 66
    .local v3, "mWifiCallingRoamingUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    iget-object v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    iget-object v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    iget-object v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_MDN_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    .end local v0    # "mWifiCallEnableUri":Landroid/net/Uri;
    .end local v1    # "mWifiCallPreferredUri":Landroid/net/Uri;
    .end local v3    # "mWifiCallingRoamingUri":Landroid/net/Uri;
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_call_enable2"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevVowifiEnable:I

    .line 72
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_call_preferred2"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevPreferred:I

    .line 73
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "wifi_call_when_roaming2"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevRoamingPreferred:I

    .line 74
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    .restart local v0    # "mWifiCallEnableUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 76
    .restart local v1    # "mWifiCallPreferredUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 77
    .restart local v3    # "mWifiCallingRoamingUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    iget-object v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    iget-object v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    iget-object v4, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/VoWifiSettings;->VOWIFI_MDN_URI2:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    .end local v0    # "mWifiCallEnableUri":Landroid/net/Uri;
    .end local v1    # "mWifiCallPreferredUri":Landroid/net/Uri;
    .end local v3    # "mWifiCallingRoamingUri":Landroid/net/Uri;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->isObserverRegistered:Z

    .line 84
    :cond_1
    return-void
.end method

.method public registerVoWifiMenuObserver()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/VoWifiSettingObserver;->VOWIFI_MENU_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    return-void
.end method

.method public resetPrevVoWifiSettings()V
    .locals 1

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevVowifiEnable:I

    .line 47
    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevPreferred:I

    .line 48
    iput v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->prevRoamingPreferred:I

    .line 49
    return-void
.end method

.method public unregisterObserver()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->isObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/VoWifiSettingObserver;->isObserverRegistered:Z

    .line 91
    :cond_0
    return-void
.end method
