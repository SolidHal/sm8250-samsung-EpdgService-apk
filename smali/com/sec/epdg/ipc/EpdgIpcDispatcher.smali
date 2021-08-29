.class public Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
.super Ljava/lang/Object;
.source "EpdgIpcDispatcher.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

.field private static mInstance2:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "[IPCDISPATCHER]"

    sput-object v0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->TAG:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mPhoneId:I

    .line 20
    return-void
.end method

.method public static declared-synchronized createInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    monitor-enter v0

    .line 23
    if-nez p0, :cond_0

    .line 24
    :try_start_0
    new-instance v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    invoke-direct {v1, p0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mInstance:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    return-object v1

    .line 27
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    invoke-direct {v1, p0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mInstance2:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit v0

    return-object v1

    .line 22
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    monitor-enter v0

    .line 33
    if-nez p0, :cond_0

    .line 34
    :try_start_0
    sget-object v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mInstance:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 36
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mInstance2:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 32
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .line 168
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 170
    const-string v0, "Suppressed"

    return-object v0

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z
    .locals 5
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;
    .param p2, "dump"    # Z

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Sub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Cmd Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getEpdgCmdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "header":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 46
    .local v1, "param":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance(I)Lcom/sec/epdg/ipc/EpdgModem;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/ipc/EpdgModem;->sendPacket([B)V

    .line 51
    if-eqz p2, :cond_1

    .line 52
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->addEpdgToRilMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public SendEpdgCtxtInfo(Ljava/util/ArrayList;I)Z
    .locals 4
    .param p2, "aSeq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 156
    .local p1, "epdgCtxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    .line 160
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
    invoke-virtual {v0, p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodePdpContext(Ljava/util/ArrayList;)Z

    .line 161
    invoke-virtual {v0, p2}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->setAsequence(I)V

    .line 163
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 164
    return v1
.end method

.method public SendGprsIPConfigs(ILcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 15
    .param p1, "cid"    # I
    .param p2, "iptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .param p3, "ipv4Addr"    # Ljava/lang/String;
    .param p4, "ipv4Dns"    # [Ljava/lang/String;
    .param p5, "ipv4Gateway"    # Ljava/lang/String;
    .param p6, "ipv4SubnetMask"    # Ljava/lang/String;
    .param p7, "ipv4Pcscf"    # [Ljava/lang/String;
    .param p8, "ipv6Addr"    # Ljava/lang/String;
    .param p9, "Ipv6Pcscf"    # [Ljava/lang/String;
    .param p10, "Ipv6Dns"    # [Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    .line 147
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
    move-object v4, v0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v4 .. v14}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsIPConfigs(ILcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 150
    const/4 v1, 0x1

    move-object v2, p0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 151
    return v1
.end method

.method public deinitialize()V
    .locals 2

    .line 209
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    sput-object v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mInstance:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    goto :goto_0

    .line 212
    :cond_0
    sput-object v1, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->mInstance2:Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    .line 214
    :goto_0
    return-void
.end method

.method public sendEpdgConfigurationInfo(IIIIIILjava/lang/String;)Z
    .locals 12
    .param p1, "wfcEnable"    # I
    .param p2, "wfcPrefMode"    # I
    .param p3, "wfcRoamPrefMode"    # I
    .param p4, "handoverEnable"    # I
    .param p5, "airplaneModeSupport"    # I
    .param p6, "roamingSupport"    # I
    .param p7, "mnoName"    # Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    const/16 v1, 0x70

    const/16 v2, 0x17

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;-><init>(III)V

    .line 181
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgIilIpcMessage;
    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->encodeEpdgConfigurationInfo(IIIIIILjava/lang/String;)Z

    .line 184
    const/4 v1, 0x1

    move-object v2, p0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 185
    return v1
.end method

.method public sendEpdgHoThreshold(IIIIIIIIIIIII)Z
    .locals 18
    .param p1, "state"    # I
    .param p2, "threhold4gRsrpRoveIn"    # I
    .param p3, "threhold4gRsrpRoveOut"    # I
    .param p4, "threhold3gRoveIn"    # I
    .param p5, "threhold3gRoveOut"    # I
    .param p6, "threhold2gRoveIn"    # I
    .param p7, "threhold2gRoveOut"    # I
    .param p8, "threhold4gRsrqRoveIn"    # I
    .param p9, "threhold4gRsrqRoveOut"    # I
    .param p10, "thresholdEcioRoveIn"    # I
    .param p11, "thresholdEcioRoveOut"    # I
    .param p12, "thresholdSnrRoveIn"    # I
    .param p13, "thresholdSnrRoveOut"    # I

    .line 107
    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/16 v2, 0x24

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    .line 110
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
    move-object v4, v0

    move/from16 v5, p1

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

    invoke-virtual/range {v4 .. v17}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeEpdgHoThreshold(IIIIIIIIIIIII)Z

    .line 115
    const/4 v1, 0x1

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 116
    return v1
.end method

.method public sendEpdgMapconInfo(ILjava/lang/String;)Z
    .locals 4
    .param p1, "supportedTypes"    # I
    .param p2, "priority"    # Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    const/16 v1, 0x70

    const/16 v2, 0x18

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;-><init>(III)V

    .line 192
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgIilIpcMessage;
    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->encodeEpdgMapconInfo(ILjava/lang/String;)Z

    .line 194
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 195
    return v1
.end method

.method public sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z
    .locals 4
    .param p1, "result"    # Z
    .param p2, "response"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .line 59
    new-instance v0, Lcom/sec/epdg/ipc/EpdgIpcMessage;

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    .line 62
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->encodeGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 63
    invoke-virtual {p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->setAsequence(I)V

    .line 65
    invoke-direct {p0, v0, v2}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 66
    return v2
.end method

.method public sendGprsCallStatus(IIZ)Z
    .locals 4
    .param p1, "cid"    # I
    .param p2, "data_call_state"    # I
    .param p3, "isPermanentFail"    # Z

    .line 120
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x10

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    .line 123
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsCallStatus(IIZ)Z

    .line 125
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 126
    return v1
.end method

.method public sendGprsEpdgStatus(II)Z
    .locals 4
    .param p1, "pdn_type"    # I
    .param p2, "status"    # I

    .line 130
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x16

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    .line 133
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsCallStatus(IIZ)Z

    .line 135
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 136
    return v1
.end method

.method public sendNetDataHandover(IIII)Z
    .locals 4
    .param p1, "cause"    # I
    .param p2, "state"    # I
    .param p3, "act"    # I
    .param p4, "pdntype"    # I

    .line 70
    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/16 v2, 0xf

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    .line 73
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeNetDataHandoverInfo(IIII)Z

    .line 75
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 76
    return v1
.end method

.method public sendNetRegist(III)Z
    .locals 3
    .param p1, "act"    # I
    .param p2, "reg_status"    # I
    .param p3, "mesg_type"    # I

    .line 81
    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    .line 84
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeNetRegist(II)Z

    .line 86
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 87
    const/4 v1, 0x1

    return v1
.end method

.method public sendNetRegist(IIII)Z
    .locals 3
    .param p1, "act"    # I
    .param p2, "reg_status"    # I
    .param p3, "mesg_type"    # I
    .param p4, "aSeq"    # I

    .line 92
    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    .line 95
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeNetRegist(II)Z

    .line 96
    invoke-virtual {v0, p4}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->setAsequence(I)V

    .line 98
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 99
    const/4 v1, 0x1

    return v1
.end method

.method public sendSNSSAI(I[BII[B[B)Z
    .locals 11
    .param p1, "sst"    # I
    .param p2, "sd"    # [B
    .param p3, "mappedSstValid"    # I
    .param p4, "mappedSst"    # I
    .param p5, "mappedSd"    # [B
    .param p6, "plmnid"    # [B

    .line 199
    new-instance v0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    const/16 v1, 0x70

    const/16 v2, 0x19

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;-><init>(III)V

    .line 202
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgIilIpcMessage;
    move-object v4, v0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->encodeN1modeParam(I[BII[B[B)Z

    .line 204
    const/4 v1, 0x1

    move-object v2, p0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 205
    return v1
.end method
