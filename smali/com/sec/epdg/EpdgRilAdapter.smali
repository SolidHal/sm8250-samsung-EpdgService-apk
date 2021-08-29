.class public Lcom/sec/epdg/EpdgRilAdapter;
.super Ljava/lang/Object;
.source "EpdgRilAdapter.java"

# interfaces
.implements Lcom/sec/epdg/EpdgRilInterface;


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/EpdgRilAdapter;

.field private static mInstance2:Lcom/sec/epdg/EpdgRilAdapter;


# instance fields
.field private OUTGOING_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEpdgConfigurationInfo:Lcom/sec/epdg/EpdgConfigurationInfo;

.field private mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

.field private mEpdgMapconInfo:Lcom/sec/epdg/EpdgMapconInfo;

.field private mPhoneId:I

.field private mSubId:I

.field private mSubscription:Lcom/sec/epdg/EpdgSubScription;

.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    const-string v0, "[EPDG-->RIL]"

    sput-object v0, Lcom/sec/epdg/EpdgRilAdapter;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/EpdgRilAdapter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    .line 128
    iput p1, p0, Lcom/sec/epdg/EpdgRilAdapter;->mPhoneId:I

    .line 129
    iput p2, p0, Lcom/sec/epdg/EpdgRilAdapter;->mSubId:I

    .line 130
    iput-object p3, p0, Lcom/sec/epdg/EpdgRilAdapter;->mContext:Landroid/content/Context;

    .line 131
    iput-object p4, p0, Lcom/sec/epdg/EpdgRilAdapter;->mSubscription:Lcom/sec/epdg/EpdgSubScription;

    .line 132
    invoke-static {p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->createInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 134
    new-instance v0, Lcom/sec/epdg/EpdgConfigurationInfo;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgConfigurationInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgConfigurationInfo:Lcom/sec/epdg/EpdgConfigurationInfo;

    .line 135
    new-instance v0, Lcom/sec/epdg/EpdgMapconInfo;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgMapconInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgMapconInfo:Lcom/sec/epdg/EpdgMapconInfo;

    .line 136
    return-void
.end method

.method public static declared-synchronized createInstance(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgRilAdapter;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "subId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    const-class v0, Lcom/sec/epdg/EpdgRilAdapter;

    monitor-enter v0

    .line 139
    if-nez p0, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Lcom/sec/epdg/EpdgRilAdapter;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/EpdgRilAdapter;-><init>(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/EpdgRilAdapter;->mInstance:Lcom/sec/epdg/EpdgRilAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-object v1

    .line 143
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/EpdgRilAdapter;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/EpdgRilAdapter;-><init>(IILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/EpdgRilAdapter;->mInstance2:Lcom/sec/epdg/EpdgRilAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit v0

    return-object v1

    .line 138
    .end local p0    # "phoneId":I
    .end local p1    # "subId":I
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "subscription":Lcom/sec/epdg/EpdgSubScription;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(ILandroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/epdg/EpdgRilAdapter;

    monitor-enter v0

    .line 150
    if-nez p0, :cond_0

    .line 151
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgRilAdapter;->mInstance:Lcom/sec/epdg/EpdgRilAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 153
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgRilAdapter;->mInstance2:Lcom/sec/epdg/EpdgRilAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 149
    .end local p0    # "phoneId":I
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTargetNetwork()I
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 309
    .local v0, "targetNetworkType":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Default Network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/16 v1, 0x21

    .line 311
    .local v1, "targetRilNet":I
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 312
    const/16 v1, 0x19

    .line 314
    :cond_0
    return v1
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->deinitialize()V

    .line 351
    iget v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 352
    sput-object v1, Lcom/sec/epdg/EpdgRilAdapter;->mInstance:Lcom/sec/epdg/EpdgRilAdapter;

    goto :goto_0

    .line 354
    :cond_0
    sput-object v1, Lcom/sec/epdg/EpdgRilAdapter;->mInstance2:Lcom/sec/epdg/EpdgRilAdapter;

    .line 356
    :goto_0
    return-void
.end method

.method public sendEpdgStatus(IZ)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "isConnSuccessful"    # Z

    .line 181
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEND GPRS EPDG STATUS <-> Cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Connection Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGprsEpdgStatus(II)Z

    .line 184
    return-void
.end method

.method public sendNetHandoverResumeNoti(IZ)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "isConnSuccessful"    # Z

    .line 223
    if-eqz p2, :cond_0

    .line 224
    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgRilAdapter;->getTargetNetwork()I

    move-result v0

    .line 225
    .local v0, "act":I
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND HANDOVER RESUME <-> Cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetDataHandover(IIII)Z

    .line 230
    return-void
.end method

.method public triggerHandover(IZ)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "handoverToWifi"    # Z

    .line 164
    if-eqz p2, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgRilAdapter;->getTargetNetwork()I

    move-result v0

    :goto_0
    nop

    .line 166
    .local v0, "act":I
    const/4 v1, 0x2

    .line 167
    .local v1, "cause":I
    iget v2, p0, Lcom/sec/epdg/EpdgRilAdapter;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgRilAdapter;->mSubscription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 171
    const/4 v1, 0x3

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND HANDOVER SUSPEND <-> Cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetDataHandover(IIII)Z

    .line 178
    return-void
.end method

.method public updateApnConnStatus(IZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;ZZZ)V
    .locals 14
    .param p1, "cid"    # I
    .param p2, "isConnSuccessful"    # Z
    .param p3, "prop"    # Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
    .param p4, "isHandover"    # Z
    .param p5, "isAttachPdn"    # Z
    .param p6, "isPermanentFail"    # Z

    .line 189
    move-object v0, p0

    move v12, p1

    move/from16 v13, p2

    if-eqz v13, :cond_0

    .line 191
    iget-object v1, v0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND GPRS IP CONFIG <-> Cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz p3, :cond_0

    .line 193
    iget-object v1, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-result-object v3

    .line 194
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv4addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getmIpv4Dnses()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 195
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv4PcscfAddr()[Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv6addr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv6PcscfAddr()[Ljava/lang/String;

    move-result-object v10

    .line 197
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getmIpv6Dnses()[Ljava/lang/String;

    move-result-object v11

    .line 193
    move v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->SendGprsIPConfigs(ILcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 201
    :cond_0
    iget-object v1, v0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND CALL STATUS <-> Cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Connection Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move/from16 v2, p6

    invoke-virtual {v1, p1, v13, v2}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGprsCallStatus(IIZ)Z

    .line 205
    if-eqz p5, :cond_1

    .line 206
    iget-object v1, v0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SEND GPRS EPDG STATUS <-> Cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    invoke-virtual {v1, p1, v13}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGprsEpdgStatus(II)Z

    .line 211
    :cond_1
    if-eqz p4, :cond_3

    .line 212
    if-eqz v13, :cond_2

    .line 213
    const/16 v1, 0x30

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgRilAdapter;->getTargetNetwork()I

    move-result v1

    .line 214
    .local v1, "act":I
    :goto_0
    iget-object v3, v0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SEND HANDOVER RESUME <-> Cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v3, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v1, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetDataHandover(IIII)Z

    .line 220
    .end local v1    # "act":I
    :cond_3
    return-void
.end method

.method public updateEpdgAvailability(Z)V
    .locals 4
    .param p1, "isAvailable"    # Z

    .line 233
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEND NET REGISTER -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 234
    const-string v2, "EPDG AVAILABLE"

    goto :goto_0

    :cond_0
    const-string v2, "EPDG NOT AVAILABLE"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 236
    :cond_1
    const/4 v0, 0x1

    :goto_1
    nop

    .line 237
    .local v0, "state":I
    iget v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgRilSharedData;->setIwlanPsState(I)V

    .line 238
    iget-object v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    const/16 v2, 0x30

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetRegist(III)Z

    .line 240
    return-void
.end method

.method public updateEpdgConfiguration(IIIIIILjava/lang/String;)Z
    .locals 11
    .param p1, "wfcEnable"    # I
    .param p2, "wfcPrefMode"    # I
    .param p3, "wfcRoamPrefMode"    # I
    .param p4, "handoverEnable"    # I
    .param p5, "airplaneModeSupport"    # I
    .param p6, "roamingSupport"    # I
    .param p7, "mnoName"    # Ljava/lang/String;

    .line 319
    move-object v0, p0

    new-instance v9, Lcom/sec/epdg/EpdgConfigurationInfo;

    move-object v1, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/epdg/EpdgConfigurationInfo;-><init>(IIIIIILjava/lang/String;)V

    .line 321
    .local v1, "info":Lcom/sec/epdg/EpdgConfigurationInfo;
    iget-object v2, v0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EpdgConfigurationInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgConfigurationInfo:Lcom/sec/epdg/EpdgConfigurationInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, v0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New EpdgConfigurationInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgConfigurationInfo:Lcom/sec/epdg/EpdgConfigurationInfo;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgConfigurationInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    iput-object v1, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgConfigurationInfo:Lcom/sec/epdg/EpdgConfigurationInfo;

    .line 325
    iget-object v3, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendEpdgConfigurationInfo(IIIIIILjava/lang/String;)Z

    .line 327
    const/4 v2, 0x1

    return v2

    .line 329
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public updateEpdgHoThreshold(ZIIIIIIIIIIII)V
    .locals 18
    .param p1, "isAvailable"    # Z
    .param p2, "threshold4gRsrpRoveIn"    # I
    .param p3, "threshold4gRsrpRoveOut"    # I
    .param p4, "threshold3gRoveIn"    # I
    .param p5, "threshold3gRoveOut"    # I
    .param p6, "threshold2gRoveIn"    # I
    .param p7, "threshold2gRoveOut"    # I
    .param p8, "threshold4gRsrqRoveIn"    # I
    .param p9, "threshold4gRsrqRoveOut"    # I
    .param p10, "thresholdEcioRoveIn"    # I
    .param p11, "thresholdEcioRoveOut"    # I
    .param p12, "thresholdSnrRoveIn"    # I
    .param p13, "thresholdSnrRoveOut"    # I

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND EPDG HANDOVER THRESHOLD -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "TURN ON"

    goto :goto_0

    :cond_0
    const-string v3, "TURN OFF"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    move/from16 v5, p1

    .line 248
    .local v5, "availabilty":I
    iget-object v4, v0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    invoke-virtual/range {v4 .. v17}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendEpdgHoThreshold(IIIIIIIIIIIII)Z

    .line 252
    return-void
.end method

.method public updateEpdgHoThreshold(ZLcom/sec/epdg/DataType/EpdgCsThreshold;)V
    .locals 14
    .param p1, "isAvailable"    # Z
    .param p2, "csThreshold"    # Lcom/sec/epdg/DataType/EpdgCsThreshold;

    .line 301
    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get4gRsrpRoveIn()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get4gRsrpRoveOut()I

    move-result v3

    .line 302
    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get3gRoveIn()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get3gRoveOut()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get2gRoveIn()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->get2gRoveOut()I

    move-result v7

    .line 303
    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveIn()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveOut()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getEcioRoveIn()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getEcioRoveOut()I

    move-result v11

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getSnrRoveIn()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getSnrRoveOut()I

    move-result v13

    .line 301
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v13}, Lcom/sec/epdg/EpdgRilAdapter;->updateEpdgHoThreshold(ZIIIIIIIIIIII)V

    .line 305
    return-void
.end method

.method public updateEpdgHoThreshold(ZZLcom/sec/epdg/DataType/EpdgCsThreshold;)V
    .locals 22
    .param p1, "isAvailable"    # Z
    .param p2, "isImsOverEpdg"    # Z
    .param p3, "csThreshold"    # Lcom/sec/epdg/DataType/EpdgCsThreshold;

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "threshold4gRsrpRoveIn":I
    const/4 v1, 0x0

    .line 260
    .local v1, "threshold4gRsrpRoveOut":I
    const/4 v2, 0x0

    .line 261
    .local v2, "threshold4gRsrqRoveIn":I
    const/4 v3, 0x0

    .line 263
    .local v3, "threshold4gRsrqRoveOut":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp2()I

    move-result v4

    if-nez v4, :cond_0

    .line 264
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp3()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    .line 265
    .end local v0    # "threshold4gRsrpRoveIn":I
    .local v4, "threshold4gRsrpRoveIn":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp1()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 266
    .end local v1    # "threshold4gRsrpRoveOut":I
    .local v0, "threshold4gRsrpRoveOut":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveIn()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    .line 267
    .end local v2    # "threshold4gRsrqRoveIn":I
    .local v1, "threshold4gRsrqRoveIn":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveOut()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .end local v3    # "threshold4gRsrqRoveOut":I
    .local v2, "threshold4gRsrqRoveOut":I
    goto :goto_0

    .line 269
    .end local v4    # "threshold4gRsrpRoveIn":I
    .local v0, "threshold4gRsrpRoveIn":I
    .local v1, "threshold4gRsrpRoveOut":I
    .local v2, "threshold4gRsrqRoveIn":I
    .restart local v3    # "threshold4gRsrqRoveOut":I
    :cond_0
    if-eqz p2, :cond_1

    .line 270
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp3()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    .line 271
    .end local v0    # "threshold4gRsrpRoveIn":I
    .restart local v4    # "threshold4gRsrpRoveIn":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp2()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 272
    .end local v1    # "threshold4gRsrpRoveOut":I
    .local v0, "threshold4gRsrpRoveOut":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveIn()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    .line 273
    .end local v2    # "threshold4gRsrqRoveIn":I
    .local v1, "threshold4gRsrqRoveIn":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveinWeak()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .end local v3    # "threshold4gRsrqRoveOut":I
    .local v2, "threshold4gRsrqRoveOut":I
    goto :goto_0

    .line 275
    .end local v4    # "threshold4gRsrpRoveIn":I
    .local v0, "threshold4gRsrpRoveIn":I
    .local v1, "threshold4gRsrpRoveOut":I
    .local v2, "threshold4gRsrqRoveIn":I
    .restart local v3    # "threshold4gRsrqRoveOut":I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp1()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    .line 276
    .end local v0    # "threshold4gRsrpRoveIn":I
    .restart local v4    # "threshold4gRsrpRoveIn":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrp2()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 277
    .end local v1    # "threshold4gRsrpRoveOut":I
    .local v0, "threshold4gRsrpRoveOut":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveOut()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    .line 278
    .end local v2    # "threshold4gRsrqRoveIn":I
    .local v1, "threshold4gRsrqRoveIn":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getLteRsrqRoveinWeak()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .line 282
    .end local v3    # "threshold4gRsrqRoveOut":I
    .local v2, "threshold4gRsrqRoveOut":I
    :goto_0
    if-nez p1, :cond_2

    .line 284
    const/16 v4, 0xff

    .line 285
    const/16 v0, 0xff

    .line 286
    const/16 v1, 0xff

    .line 287
    const/16 v2, 0xff

    .line 289
    :cond_2
    const/16 v3, 0xff

    .line 290
    .local v3, "threshold3gRoveIn":I
    const/16 v19, 0xff

    .line 291
    .local v19, "threshold3gRoveOut":I
    const/16 v20, 0xff

    .line 292
    .local v20, "threshold2gRoveIn":I
    const/16 v21, 0xff

    .line 293
    .local v21, "threshold2gRoveOut":I
    nop

    .line 295
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getEcioRoveIn()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getEcioRoveOut()I

    move-result v16

    .line 296
    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getSnrRoveIn()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Lcom/sec/epdg/DataType/EpdgCsThreshold;->getSnrRoveOut()I

    move-result v18

    .line 293
    move-object/from16 v5, p0

    move/from16 v6, p1

    move v7, v4

    move v8, v0

    move v9, v3

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move v13, v1

    move v14, v2

    invoke-virtual/range {v5 .. v18}, Lcom/sec/epdg/EpdgRilAdapter;->updateEpdgHoThreshold(ZIIIIIIIIIIII)V

    .line 297
    return-void
.end method

.method public updateEpdgMapcon(ILjava/lang/String;)Z
    .locals 4
    .param p1, "supportedTypes"    # I
    .param p2, "priority"    # Ljava/lang/String;

    .line 333
    new-instance v0, Lcom/sec/epdg/EpdgMapconInfo;

    invoke-direct {v0, p1, p2}, Lcom/sec/epdg/EpdgMapconInfo;-><init>(ILjava/lang/String;)V

    .line 334
    .local v0, "info":Lcom/sec/epdg/EpdgMapconInfo;
    iget-object v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgMapconInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgMapconInfo:Lcom/sec/epdg/EpdgMapconInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->OUTGOING_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New EpdgMapconInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgMapconInfo:Lcom/sec/epdg/EpdgMapconInfo;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgMapconInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iput-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgMapconInfo:Lcom/sec/epdg/EpdgMapconInfo;

    .line 338
    iget-object v1, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgIpcDispatcher:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendEpdgMapconInfo(ILjava/lang/String;)Z

    .line 339
    const/4 v1, 0x1

    return v1

    .line 341
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateSNSSAI(I[BII[B[B)Z
    .locals 8
    .param p1, "sst"    # I
    .param p2, "sd"    # [B
    .param p3, "mappedSstValid"    # I
    .param p4, "mappedSst"    # I
    .param p5, "mappedSd"    # [B
    .param p6, "plmnid"    # [B

    .line 345
    iget v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendSNSSAI(I[BII[B[B)Z

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public updateSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 158
    iput p1, p0, Lcom/sec/epdg/EpdgRilAdapter;->mSubId:I

    .line 159
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgConfigurationInfo:Lcom/sec/epdg/EpdgConfigurationInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgConfigurationInfo;->reset()V

    .line 160
    iget-object v0, p0, Lcom/sec/epdg/EpdgRilAdapter;->mEpdgMapconInfo:Lcom/sec/epdg/EpdgMapconInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgMapconInfo;->reset()V

    .line 161
    return-void
.end method
