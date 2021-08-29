.class public Lcom/sec/epdg/TelephonyAdapter;
.super Ljava/lang/Object;
.source "TelephonyAdapter.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/TelephonyAdapter;

.field private static mInstance2:Lcom/sec/epdg/TelephonyAdapter;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDataCallList:[Landroid/telephony/data/DataCallResponse;

.field private mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

.field private mDataRegistrationStateChangedRegistrants:Landroid/os/RegistrantList;

.field private mEpdgAvailable:I

.field private mEpdgHandler:Landroid/os/Handler;

.field private mHandoverEnableChangedRegistrants:Landroid/os/RegistrantList;

.field private mHandoverEnabledApnType:I

.field private mInterfaceName:Ljava/lang/String;

.field private mMapconInfo:Lcom/sec/epdg/DataType/MapconInformation;

.field private mPhoneId:I

.field private mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

.field private mReqId:I

.field private mSetupDataReqMsgMapforCid:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "[TelephonyAdapter]"

    sput-object v0, Lcom/sec/epdg/TelephonyAdapter;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mReqId:I

    .line 43
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/TelephonyAdapter;->mSetupDataReqMsgMapforCid:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/telephony/data/DataCallResponse;

    iput-object v1, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallList:[Landroid/telephony/data/DataCallResponse;

    .line 46
    iput v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgAvailable:I

    .line 486
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataRegistrationStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 487
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

    .line 488
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    .line 489
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnableChangedRegistrants:Landroid/os/RegistrantList;

    .line 53
    iput p1, p0, Lcom/sec/epdg/TelephonyAdapter;->mPhoneId:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/TelephonyAdapter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->TAG:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_EMERGENCY:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getIntValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 58
    .local v0, "index":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    sget-object v3, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->getIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/sec/epdg/DataType/MapconInformation;

    const/16 v3, 0xff

    invoke-direct {v2, v3, v1}, Lcom/sec/epdg/DataType/MapconInformation;-><init>(ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/epdg/TelephonyAdapter;->mMapconInfo:Lcom/sec/epdg/DataType/MapconInformation;

    .line 64
    const-string v2, "ril.data.intfprefix"

    const-string v3, "rmnet"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/epdg/TelephonyAdapter;->mInterfaceName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static declared-synchronized createInstance(I)Lcom/sec/epdg/TelephonyAdapter;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/TelephonyAdapter;

    monitor-enter v0

    .line 68
    if-nez p0, :cond_0

    .line 69
    :try_start_0
    new-instance v1, Lcom/sec/epdg/TelephonyAdapter;

    invoke-direct {v1, p0}, Lcom/sec/epdg/TelephonyAdapter;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/TelephonyAdapter;->mInstance:Lcom/sec/epdg/TelephonyAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-object v1

    .line 72
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/TelephonyAdapter;

    invoke-direct {v1, p0}, Lcom/sec/epdg/TelephonyAdapter;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/TelephonyAdapter;->mInstance2:Lcom/sec/epdg/TelephonyAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit v0

    return-object v1

    .line 67
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private generateGatewayAddress(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 242
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "gatewayAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 245
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-direct {p0, v2}, Lcom/sec/epdg/TelephonyAdapter;->generateIpv4Gateway(Landroid/net/LinkAddress;)Ljava/net/Inet4Address;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    invoke-virtual {v2}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/sec/epdg/TelephonyAdapter;->generateIpv6Gateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "la":Landroid/net/LinkAddress;
    :cond_1
    goto :goto_0

    .line 253
    :cond_2
    return-object v0
.end method

.method private generateIpv4Gateway(Landroid/net/LinkAddress;)Ljava/net/Inet4Address;
    .locals 8
    .param p1, "la"    # Landroid/net/LinkAddress;

    .line 203
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 205
    .local v0, "ipv4Addr":Ljava/net/Inet4Address;
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v1

    .line 207
    .local v1, "prefixLength":I
    invoke-static {v1}, Lcom/android/net/module/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTH(I)I

    move-result v2

    .line 208
    .local v2, "prefix":I
    invoke-static {v0}, Lcom/android/net/module/util/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result v3

    .line 210
    .local v3, "ip":I
    add-int/lit8 v4, v3, 0x1

    not-int v5, v2

    and-int/2addr v4, v5

    not-int v5, v2

    if-ne v4, v5, :cond_0

    .line 211
    not-int v4, v2

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v4, v5

    .local v4, "host":I
    goto :goto_0

    .line 213
    .end local v4    # "host":I
    :cond_0
    not-int v4, v2

    add-int/lit8 v5, v3, 0x1

    and-int/2addr v4, v5

    .line 215
    .restart local v4    # "host":I
    :goto_0
    and-int v5, v2, v3

    .line 216
    .local v5, "network":I
    or-int v6, v5, v4

    .line 217
    .local v6, "gateway":I
    invoke-static {v6}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTH(I)Ljava/net/Inet4Address;

    move-result-object v7

    .line 218
    .local v7, "gatewayAddr":Ljava/net/Inet4Address;
    return-object v7

    .line 220
    .end local v0    # "ipv4Addr":Ljava/net/Inet4Address;
    .end local v1    # "prefixLength":I
    .end local v2    # "prefix":I
    .end local v3    # "ip":I
    .end local v4    # "host":I
    .end local v5    # "network":I
    .end local v6    # "gateway":I
    .end local v7    # "gatewayAddr":Ljava/net/Inet4Address;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private generateIpv6Gateway()Ljava/net/InetAddress;
    .locals 3

    .line 227
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 228
    .local v0, "ipv6Gateway":[B
    const/4 v1, 0x0

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    .line 229
    const/16 v1, -0x80

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 230
    const/16 v1, 0xf

    aput-byte v2, v0, v1

    .line 232
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v1, "gatewayAddr":Ljava/net/InetAddress;
    return-object v1

    .line 234
    .end local v1    # "gatewayAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 236
    const/4 v2, 0x0

    return-object v2
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/TelephonyAdapter;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/TelephonyAdapter;

    monitor-enter v0

    .line 86
    if-nez p0, :cond_1

    .line 87
    :try_start_0
    sget-object v1, Lcom/sec/epdg/TelephonyAdapter;->mInstance:Lcom/sec/epdg/TelephonyAdapter;

    if-nez v1, :cond_0

    .line 88
    invoke-static {p0}, Lcom/sec/epdg/TelephonyAdapter;->createInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    .line 90
    :cond_0
    sget-object v1, Lcom/sec/epdg/TelephonyAdapter;->mInstance:Lcom/sec/epdg/TelephonyAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 92
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sec/epdg/TelephonyAdapter;->mInstance2:Lcom/sec/epdg/TelephonyAdapter;

    if-nez v1, :cond_2

    .line 93
    invoke-static {p0}, Lcom/sec/epdg/TelephonyAdapter;->createInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    .line 95
    :cond_2
    sget-object v1, Lcom/sec/epdg/TelephonyAdapter;->mInstance2:Lcom/sec/epdg/TelephonyAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 85
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSetupDataReqMsgByCid(I)Landroid/os/Message;
    .locals 3
    .param p1, "cid"    # I

    .line 100
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mSetupDataReqMsgMapforCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 101
    .local v0, "reqMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/epdg/TelephonyAdapter;->mSetupDataReqMsgMapforCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v0
.end method

.method private isDuringSetupDataCallByCid(I)Z
    .locals 2
    .param p1, "cid"    # I

    .line 107
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mSetupDataReqMsgMapforCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setDataListForCid(ILandroid/telephony/data/DataCallResponse;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "dcallresp"    # Landroid/telephony/data/DataCallResponse;

    .line 130
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallList:[Landroid/telephony/data/DataCallResponse;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallList:[Landroid/telephony/data/DataCallResponse;

    add-int/lit8 v2, p1, -0x1

    aput-object p2, v1, v2

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSetupDataReqMsgMapForCid(ILandroid/os/Message;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "reqMsg"    # Landroid/os/Message;

    .line 111
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mSetupDataReqMsgMapforCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method


# virtual methods
.method public convertDataCallResponse(Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)Landroid/telephony/data/DataCallResponse;
    .locals 16
    .param p1, "data"    # Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    .line 265
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_3

    .line 266
    iget-object v0, v1, Lcom/sec/epdg/TelephonyAdapter;->TAG:Ljava/lang/String;

    const-string v4, "convertDataCallResponse, getLinkProp is null"

    invoke-static {v0, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v0, 0x26

    .line 268
    .local v0, "cause":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isHandover()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    const/16 v0, 0x8cb

    .line 273
    :cond_1
    :goto_0
    new-instance v4, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v4}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 274
    invoke-virtual {v4, v0}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getSuggestedRetryTime()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getCid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v2

    const/4 v3, 0x5

    .line 278
    invoke-virtual {v2, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v2

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getMtu()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v2

    .line 286
    .local v2, "dataCallResp":Landroid/telephony/data/DataCallResponse;
    return-object v2

    .line 288
    .end local v0    # "cause":I
    .end local v2    # "dataCallResp":Landroid/telephony/data/DataCallResponse;
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 289
    .local v4, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv4addr()Ljava/lang/String;

    move-result-object v0

    const-string v5, "/"

    if-eqz v0, :cond_4

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv4addr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv4prefixlen()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "ipv4":Ljava/lang/StringBuilder;
    new-instance v6, Landroid/net/LinkAddress;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    .line 293
    .local v6, "ipv4Addr":Landroid/net/LinkAddress;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v0    # "ipv4":Ljava/lang/StringBuilder;
    .end local v6    # "ipv4Addr":Landroid/net/LinkAddress;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv6addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv6addr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv6prefixlen()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "ipv6":Ljava/lang/StringBuilder;
    new-instance v5, Landroid/net/LinkAddress;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    .line 300
    .local v5, "ipv6Addr":Landroid/net/LinkAddress;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v0    # "ipv6":Ljava/lang/StringBuilder;
    .end local v5    # "ipv6Addr":Landroid/net/LinkAddress;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-result-object v5

    .line 305
    .local v5, "ipType":Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    sget-object v0, Lcom/sec/epdg/TelephonyAdapter$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IPSecIpType:[I

    invoke-virtual {v5}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const/4 v6, 0x1

    if-eq v0, v6, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v7, 0x3

    if-eq v0, v7, :cond_6

    .line 316
    const/4 v0, 0x5

    move v7, v0

    .local v0, "proto":I
    goto :goto_1

    .line 313
    .end local v0    # "proto":I
    :cond_6
    const/4 v0, 0x1

    .line 314
    .restart local v0    # "proto":I
    move v7, v0

    goto :goto_1

    .line 310
    .end local v0    # "proto":I
    :cond_7
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "proto":I
    move v7, v0

    goto :goto_1

    .line 307
    .end local v0    # "proto":I
    :cond_8
    const/4 v0, 0x2

    .line 308
    .restart local v0    # "proto":I
    move v7, v0

    .line 319
    .end local v0    # "proto":I
    .local v7, "proto":I
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 320
    .local v8, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getmIpv4Dnses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 321
    .local v9, "ipv4DnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 323
    .local v11, "dns":Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    goto :goto_3

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 327
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v11    # "dns":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .line 328
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getmIpv6Dnses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 329
    .local v10, "ipv6DnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 331
    .local v12, "dns":Ljava/lang/String;
    :try_start_1
    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    goto :goto_5

    .line 332
    :catch_1
    move-exception v0

    .line 333
    .restart local v0    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 335
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v12    # "dns":Ljava/lang/String;
    :goto_5
    goto :goto_4

    .line 337
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 338
    .local v11, "pcscfAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv4PcscfAddr()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 339
    .local v12, "ipv4PcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 341
    .local v14, "pcscf":Ljava/lang/String;
    :try_start_2
    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 344
    goto :goto_7

    .line 342
    :catch_2
    move-exception v0

    .line 343
    .restart local v0    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 345
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v14    # "pcscf":Ljava/lang/String;
    :goto_7
    goto :goto_6

    .line 346
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->getIpv6PcscfAddr()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 347
    .local v13, "ipv6PcsfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 349
    .local v15, "pcscf":Ljava/lang/String;
    :try_start_3
    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3

    .line 352
    goto :goto_9

    .line 350
    :catch_3
    move-exception v0

    .line 351
    .restart local v0    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 353
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v15    # "pcscf":Ljava/lang/String;
    :goto_9
    goto :goto_8

    .line 355
    :cond_c
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v14

    if-eqz v14, :cond_d

    move v14, v2

    goto :goto_a

    :cond_d
    const/16 v14, 0x26

    :goto_a
    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getSuggestedRetryTime()I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getCid()I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v14

    if-eqz v14, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/sec/epdg/TelephonyAdapter;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getCid()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v4}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 364
    invoke-direct {v1, v4}, Lcom/sec/epdg/TelephonyAdapter;->generateGatewayAddress(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v11}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->getMtu()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    .line 368
    .local v0, "dataCallResp":Landroid/telephony/data/DataCallResponse;
    return-object v0
.end method

.method public deactivateDataCall(IIILandroid/os/Message;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 373
    iget v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mPhoneId:I

    if-eq v0, p1, :cond_0

    .line 374
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateDataCall, cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    invoke-direct {v0, p2}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;-><init>(I)V

    .line 379
    .local v0, "disconnectReqObj":Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 380
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;->setIsHandover(Z)V

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgHandler:Landroid/os/Handler;

    const/16 v2, 0x2c

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    invoke-virtual {p0, p4, p2}, Lcom/sec/epdg/TelephonyAdapter;->responseDeactivateDataCall(Landroid/os/Message;I)V

    .line 387
    return-void
.end method

.method public deinitialize()V
    .locals 2

    .line 571
    iget v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 572
    sput-object v1, Lcom/sec/epdg/TelephonyAdapter;->mInstance:Lcom/sec/epdg/TelephonyAdapter;

    goto :goto_0

    .line 574
    :cond_0
    sput-object v1, Lcom/sec/epdg/TelephonyAdapter;->mInstance2:Lcom/sec/epdg/TelephonyAdapter;

    .line 576
    :goto_0
    return-void
.end method

.method public getDataRegistrationState(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 424
    invoke-virtual {p0, p2}, Lcom/sec/epdg/TelephonyAdapter;->responseDataRegistrationState(Landroid/os/Message;)V

    .line 425
    return-void
.end method

.method public getMapconInfo()Lcom/sec/epdg/DataType/MapconInformation;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mMapconInfo:Lcom/sec/epdg/DataType/MapconInformation;

    return-object v0
.end method

.method public getQualifedNetworks(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 429
    invoke-virtual {p0, p2}, Lcom/sec/epdg/TelephonyAdapter;->responseQualifedNetworks(Landroid/os/Message;)V

    .line 430
    return-void
.end method

.method public notifyConnectionStateChanged(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # I
    .param p3, "state"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 390
    iget v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mPhoneId:I

    if-eq v0, p1, :cond_0

    .line 391
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConnectionStateChanged, apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, "HOMsg":Landroid/os/Message;
    const/16 v2, 0x3ef

    iput v2, v0, Landroid/os/Message;->what:I

    .line 405
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 406
    invoke-static {p2}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    .end local v0    # "HOMsg":Landroid/os/Message;
    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v2, 0x4

    if-ne p3, v2, :cond_1

    :cond_3
    const/16 v2, 0x40

    if-ne p2, v2, :cond_1

    .line 409
    iget-object v2, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 410
    .local v2, "HOResultMsg":Landroid/os/Message;
    const/16 v3, 0x2a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 411
    if-ne p3, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 412
    invoke-static {p2}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    .end local v2    # "HOResultMsg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public notifyDataCallListChanged(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 544
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/DataCallResponse;>;"
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 545
    return-void
.end method

.method public notifyDataRegistrationStateChange(I)V
    .locals 1
    .param p1, "available"    # I

    .line 504
    iput p1, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgAvailable:I

    .line 505
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataRegistrationStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 506
    return-void
.end method

.method public notifyHandoverEnableChanged(IZ)V
    .locals 4
    .param p1, "apnType"    # I
    .param p2, "enable"    # Z

    .line 561
    if-eqz p2, :cond_0

    .line 562
    iget v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnabledApnType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnabledApnType:I

    goto :goto_0

    .line 564
    :cond_0
    iget v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnabledApnType:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnabledApnType:I

    .line 566
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyHandoverEnableChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnabledApnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnableChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget v2, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnabledApnType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 568
    return-void
.end method

.method public notifyQualifiedNetworksChange(Lcom/sec/epdg/DataType/MapconInformation;)V
    .locals 3
    .param p1, "mapconInfo"    # Lcom/sec/epdg/DataType/MapconInformation;

    .line 525
    iput-object p1, p0, Lcom/sec/epdg/TelephonyAdapter;->mMapconInfo:Lcom/sec/epdg/DataType/MapconInformation;

    .line 526
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 527
    return-void
.end method

.method public registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 530
    if-eqz p1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 533
    :cond_0
    return-void
.end method

.method public registerForDataRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 492
    if-eqz p1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataRegistrationStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 495
    :cond_0
    return-void
.end method

.method public registerForHandoverEnableChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 548
    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnableChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 551
    :cond_0
    return-void
.end method

.method public registerForQualifiedNetworksChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 509
    if-eqz p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 512
    :cond_0
    return-void
.end method

.method public responseDataRegistrationState(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 474
    if-nez p1, :cond_0

    return-void

    .line 475
    :cond_0
    iget v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgAvailable:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 477
    return-void
.end method

.method public responseDeactivateDataCall(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "cid"    # I

    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/sec/epdg/TelephonyAdapter;->setDataListForCid(ILandroid/telephony/data/DataCallResponse;)V

    .line 468
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 469
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 471
    return-void
.end method

.method public responseQualifedNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 480
    if-nez p1, :cond_0

    return-void

    .line 481
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/sec/epdg/TelephonyAdapter;->mMapconInfo:Lcom/sec/epdg/DataType/MapconInformation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 482
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 483
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 484
    return-void
.end method

.method public responseSetupDataCall(ILcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "data"    # Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    .line 456
    invoke-direct {p0, p1}, Lcom/sec/epdg/TelephonyAdapter;->getSetupDataReqMsgByCid(I)Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, p2}, Lcom/sec/epdg/TelephonyAdapter;->convertDataCallResponse(Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)Landroid/telephony/data/DataCallResponse;

    move-result-object v1

    .line 458
    .local v1, "dcallResp":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {p2}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-direct {p0, p1, v1}, Lcom/sec/epdg/TelephonyAdapter;->setDataListForCid(ILandroid/telephony/data/DataCallResponse;)V

    .line 461
    :cond_0
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 462
    .local v2, "ar":Landroid/os/AsyncResult;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 464
    return-void
.end method

.method public setEpdgHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "epdgHandler"    # Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "result"    # Landroid/os/Message;

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    iget v2, v0, Lcom/sec/epdg/TelephonyAdapter;->mPhoneId:I

    move/from16 v3, p1

    if-eq v2, v3, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "apn":Ljava/lang/String;
    iget-object v4, v0, Lcom/sec/epdg/TelephonyAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataCall, apn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v11

    .line 146
    .local v11, "pcscfReq":I
    const-string v4, "0.0.0.0"

    .line 147
    .local v4, "ipv4Addr":Ljava/lang/String;
    const-string v5, "::"

    .line 149
    .local v5, "ipv6Addr":Ljava/lang/String;
    if-eqz p6, :cond_4

    .line 150
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 151
    .local v7, "address":Landroid/net/LinkAddress;
    invoke-virtual {v7}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 153
    .local v8, "addr":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 154
    goto :goto_0

    .line 156
    .end local v8    # "addr":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {v7}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 158
    .restart local v8    # "addr":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 159
    goto :goto_0

    .line 161
    .end local v7    # "address":Landroid/net/LinkAddress;
    .end local v8    # "addr":Ljava/net/InetAddress;
    :cond_2
    goto :goto_0

    .line 150
    :cond_3
    move-object v12, v4

    move-object v13, v5

    goto :goto_1

    .line 149
    :cond_4
    move-object v12, v4

    move-object v13, v5

    .line 163
    .end local v4    # "ipv4Addr":Ljava/lang/String;
    .end local v5    # "ipv6Addr":Ljava/lang/String;
    .local v12, "ipv4Addr":Ljava/lang/String;
    .local v13, "ipv6Addr":Ljava/lang/String;
    :goto_1
    const/4 v14, 0x0

    .line 189
    .local v14, "cid":I
    invoke-direct {v0, v14, v1}, Lcom/sec/epdg/TelephonyAdapter;->setSetupDataReqMsgMapForCid(ILandroid/os/Message;)V

    .line 191
    new-instance v15, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    move-object v4, v15

    move v5, v14

    move-object v6, v2

    move-object v7, v12

    move-object v8, v13

    move v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    .local v4, "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    iget-object v5, v0, Lcom/sec/epdg/TelephonyAdapter;->mEpdgHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    new-instance v7, Landroid/os/AsyncResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v4, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    return-void
.end method

.method public unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 536
    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 539
    :cond_0
    return-void
.end method

.method public unregisterForDataRegistrationStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 498
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataRegistrationStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 501
    :cond_0
    return-void
.end method

.method public unregisterForHandoverEnableChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 554
    if-eqz p1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mHandoverEnableChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 557
    :cond_0
    return-void
.end method

.method public unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 515
    if-eqz p1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 518
    :cond_0
    return-void
.end method

.method public updateApnConnStatus(ILcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V
    .locals 6
    .param p1, "cid"    # I
    .param p2, "data"    # Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    .line 433
    invoke-direct {p0, p1}, Lcom/sec/epdg/TelephonyAdapter;->isDuringSetupDataCallByCid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sec/epdg/TelephonyAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateApnConnStatus, need to responseSetupDataCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/sec/epdg/TelephonyAdapter;->responseSetupDataCall(ILcom/sec/epdg/DataType/ApnData$ApnConnStatusData;)V

    .line 437
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/DataCallResponse;>;"
    iget-object v1, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallList:[Landroid/telephony/data/DataCallResponse;

    monitor-enter v1

    .line 439
    :try_start_0
    invoke-virtual {p2}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->isConnSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallList:[Landroid/telephony/data/DataCallResponse;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 441
    iget-object v2, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallList:[Landroid/telephony/data/DataCallResponse;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/TelephonyAdapter;->mDataCallList:[Landroid/telephony/data/DataCallResponse;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 446
    .local v5, "dCallResp":Landroid/telephony/data/DataCallResponse;
    if-eqz v5, :cond_2

    .line 447
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v5    # "dCallResp":Landroid/telephony/data/DataCallResponse;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 449
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-virtual {p0, v0}, Lcom/sec/epdg/TelephonyAdapter;->notifyDataCallListChanged(Ljava/util/ArrayList;)V

    .line 453
    return-void

    .line 449
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
