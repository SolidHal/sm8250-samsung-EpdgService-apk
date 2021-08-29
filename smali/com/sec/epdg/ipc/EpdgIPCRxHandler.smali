.class public Lcom/sec/epdg/ipc/EpdgIPCRxHandler;
.super Ljava/lang/Object;
.source "EpdgIPCRxHandler.java"

# interfaces
.implements Lcom/sec/epdg/ipc/RilToEpdgInterface;


# static fields
.field private static SUB_TAG:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "[RILRECEIVER]"

    sput-object v0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "hdr"    # Landroid/os/Handler;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    .line 36
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    .line 37
    iput-object p2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    return-void
.end method

.method private getEpdgContextInfo()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v0, "mpdpCtxInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 258
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getNewEpdgContextInfo()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v3

    .line 259
    .local v3, "ctxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    invoke-virtual {v3, v2}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setCid(I)V

    .line 260
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setDataCallRsn(I)V

    .line 261
    invoke-virtual {v3, v4}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setDataCallType(I)V

    .line 262
    invoke-direct {p0, v2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getIWlanApnState(I)I

    move-result v4

    .line 263
    .local v4, "iWlanApnState":I
    const/4 v5, 0x4

    const-string v6, ") state: "

    if-ne v5, v4, :cond_0

    .line 264
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    .line 265
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RX [IPC_CMD_GET] -- RESPONSE -- connected-- (cid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :cond_0
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    .line 271
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RX [IPC_CMD_GET] -- RESPONSE -- not connected-- (cid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v3    # "ctxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    .end local v4    # "iWlanApnState":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private getIWlanApnState(I)I
    .locals 2
    .param p1, "cid"    # I

    .line 347
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v0

    return v0
.end method

.method private static getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .line 334
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 336
    const-string v0, "Suppressed"

    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleHandOverStatus(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V
    .locals 5
    .param p1, "netIpcMsg"    # Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .line 42
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->isEpdgInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v1, "RX [NET_DATA_HANDOVER] -- RESPONSE -- not initialized"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 45
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v1, "RX [NET_DATA_HANDOVER] -- RESPONSE -- true(always)"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->decodeHandoverResult()Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;

    move-result-object v0

    .line 49
    .local v0, "handoverResult":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    if-nez v0, :cond_1

    return-void

    .line 50
    :cond_1
    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 51
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;

    .line 52
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->getPdnType()I

    move-result v3

    .line 53
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->getAct()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;-><init>(II)V

    .line 51
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnHandoverResult(Landroid/os/Handler;Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;)V

    .line 54
    return-void
.end method

.method private handleIILHOParamEvent(Lcom/sec/epdg/ipc/EpdgIilIpcMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    .line 242
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->decodeN1modeParam()I

    move-result v0

    .line 243
    .local v0, "pdusessionid":I
    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getEpdgInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v2, "Incorrect EpdgIilIpcMessage IPC Message -- not initialized"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pdu session id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onPduSessionIdUpdate(Landroid/os/Handler;I)V

    .line 251
    :cond_1
    return-void
.end method

.method private handleIILSsacEvent(Lcom/sec/epdg/ipc/EpdgIilIpcMessage;)V
    .locals 6
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    .line 224
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->decodeIilSsacInfo()Lcom/sec/epdg/DataType/SsacInfo;

    move-result-object v0

    .line 225
    .local v0, "ssacInfo":Lcom/sec/epdg/DataType/SsacInfo;
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->isEpdgInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v2, "Incorrect EpdgIilIpcMessage IPC Message -- not initialized"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSAC info received. Voice Factor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/SsacInfo;->getVoiceFactor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Voice Time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/SsacInfo;->getVoiceTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Video Factor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/SsacInfo;->getVideoFactor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Video Time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/SsacInfo;->getVideoTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v1, Lcom/sec/epdg/DataType/SsacInfo;

    .line 234
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/SsacInfo;->getVoiceFactor()I

    move-result v2

    .line 235
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/SsacInfo;->getVoiceTime()I

    move-result v3

    .line 236
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/SsacInfo;->getVideoFactor()I

    move-result v4

    .line 237
    invoke-virtual {v0}, Lcom/sec/epdg/DataType/SsacInfo;->getVideoTime()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/epdg/DataType/SsacInfo;-><init>(IIII)V

    .line 238
    .local v1, "ssacUpdate":Lcom/sec/epdg/DataType/SsacInfo;
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvIilSsacUpdate(Landroid/os/Handler;Lcom/sec/epdg/DataType/SsacInfo;)V

    .line 239
    return-void
.end method

.method private handleIPSecConnectionInitRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .line 75
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->decodeDefinePdpContext()Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    move-result-object v0

    .line 76
    .local v0, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->isEpdgInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v3, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- not initialized"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 80
    return-void

    .line 82
    :cond_1
    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getIwlanPsState()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 83
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v3, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- not available"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 85
    return-void

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getCid()I

    move-result v1

    .line 88
    .local v1, "cid":I
    const-string v4, ")"

    if-lez v1, :cond_9

    .line 89
    iget v5, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "apnType":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIPSecConnectionInitRequest getApnTypeByName apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " apnName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getIWlanApnState(I)I

    move-result v6

    .line 92
    .local v6, "iWlanApnState":I
    if-eqz v6, :cond_5

    if-eq v3, v6, :cond_5

    const/4 v3, 0x3

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    .line 95
    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 124
    :cond_3
    const/4 v3, 0x4

    if-ne v3, v6, :cond_4

    .line 126
    const/16 v3, 0x1f4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",abnormal IWlanState cid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    invoke-direct {v7, v1}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;-><init>(I)V

    invoke-static {v3, v7}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnDetachRequest(Landroid/os/Handler;Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;)V

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid IWlan state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") (cid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v5    # "apnType":Ljava/lang/String;
    .end local v6    # "iWlanApnState":I
    goto/16 :goto_3

    .line 96
    .restart local v5    # "apnType":Ljava/lang/String;
    .restart local v6    # "iWlanApnState":I
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 101
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- falseDuplicate define pdp context for Cid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 107
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void

    .line 110
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 112
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- true -- Received Values: Cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getCid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "APNName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "v4: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v4

    const-string v7, "Suppressed"

    if-eqz v4, :cond_7

    move-object v4, v7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "v6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pcscfreq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 136
    .end local v5    # "apnType":Ljava/lang/String;
    .end local v6    # "iWlanApnState":I
    :cond_9
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid Cid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_3
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 140
    return-void
.end method

.method private handleIPSecConnectionToggleRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V
    .locals 12
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .line 143
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->decodePdpContext()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v0

    .line 144
    .local v0, "pdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->isEpdgInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v3, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- not initialized"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 148
    return-void

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getCid()I

    move-result v1

    .line 151
    .local v1, "cid":I
    if-lez v1, :cond_a

    .line 152
    invoke-direct {p0, v1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getIWlanApnState(I)I

    move-result v9

    .line 153
    .local v9, "iWlanApnState":I
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const-string v6, ")"

    if-eq v3, v5, :cond_6

    .line 154
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_6

    .line 155
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v3

    if-ne v3, v4, :cond_2

    goto/16 :goto_1

    .line 198
    :cond_2
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 199
    const/16 v3, 0x8

    if-eq v9, v3, :cond_4

    const/4 v3, 0x6

    if-eq v9, v3, :cond_4

    if-nez v9, :cond_3

    goto :goto_0

    .line 207
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for disconnect -- RESPONSE -- true-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v2

    invoke-virtual {v2, v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 211
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    invoke-direct {v3, v1}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;-><init>(I)V

    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnDetachRequest(Landroid/os/Handler;Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;)V

    goto/16 :goto_3

    .line 202
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_PDP_CONTEXT] for disconnect -- RESPONSE -- false-- (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") in Disconnected/Disconnecting/Idle state."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_3

    .line 215
    :cond_5
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid State : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_3

    .line 156
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 156
    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    .line 158
    .local v10, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    if-nez v10, :cond_7

    .line 159
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- false-- (previously missing [IPC_GPRS_DEFINE_PDP_CONTEXT]) (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_3

    .line 164
    :cond_7
    if-ne v9, v4, :cond_8

    .line 165
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_PDP_CONTEXT] for connect -- RESPONSE -- false-- (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") in connected state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_3

    .line 170
    :cond_8
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RX [IPC_GPRS_PDP_CONTEXT] for connect -- RESPONSE -- true-- (cid : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v2

    invoke-virtual {v2, v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 177
    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 178
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    const-string v3, "emergency"

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgUtils;->getRemoteUriByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "remoteUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emergency PDN use remoteUri of epdgsetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v11, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    .line 182
    invoke-virtual {v10}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual {v10}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-virtual {v10}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v8

    move-object v3, v11

    move v4, v1

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v11

    .line 185
    .local v2, "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    goto :goto_2

    .line 186
    .end local v2    # "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    :cond_9
    new-instance v2, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    .line 187
    invoke-virtual {v10}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v10}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-virtual {v10}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-virtual {v10}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v8

    move-object v3, v2

    move v4, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    .restart local v2    # "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    :goto_2
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mHandler:Landroid/os/Handler;

    .line 195
    invoke-static {v3, v2}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnAttachRequest(Landroid/os/Handler;Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;)V

    .line 221
    .end local v2    # "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    .end local v9    # "iWlanApnState":I
    .end local v10    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    :cond_a
    :goto_3
    return-void
.end method

.method private handleNetRegQuery(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V
    .locals 6
    .param p1, "netIpcMsg"    # Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .line 57
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->isEpdgInitialized()Z

    move-result v0

    const/16 v1, 0x30

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v3, "RX [NET_REGIST] -- RESPONSE -- not initialized"

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v0

    const/4 v3, 0x1

    .line 60
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->getSequence()I

    move-result v4

    .line 59
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetRegist(IIII)Z

    .line 61
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getIwlanPsState()I

    move-result v0

    .line 64
    .local v0, "state":I
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [NET_REGIST] -- RESPONSE -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    if-ne v0, v2, :cond_1

    const-string v5, "EPDG AVAILABLE"

    goto :goto_0

    .line 67
    :cond_1
    const-string v5, "EPDG NOT AVAILABLE"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v3

    .line 69
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->getSequence()I

    move-result v4

    .line 68
    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetRegist(IIII)Z

    .line 70
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvEpdgStatusQuery(Landroid/os/Handler;I)V

    .line 71
    return-void
.end method

.method private isEpdgInitialized()Z
    .locals 1

    .line 343
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getEpdgInitialized()Z

    move-result v0

    return v0
.end method

.method private processIpcMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Sub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "header":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 286
    .local v1, "param":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Rx]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x5

    if-eq v2, v3, :cond_7

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    const/16 v3, 0x70

    if-eq v2, v3, :cond_1

    .line 328
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CRITICAL : Unknown IPC Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 314
    :cond_1
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getcmdType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 315
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    .line 316
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object v2, p1

    check-cast v2, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    invoke-direct {p0, v2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIILSsacEvent(Lcom/sec/epdg/ipc/EpdgIilIpcMessage;)V

    goto/16 :goto_1

    .line 318
    :cond_2
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_9

    .line 319
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    move-object v2, p1

    check-cast v2, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    invoke-direct {p0, v2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIILHOParamEvent(Lcom/sec/epdg/ipc/EpdgIilIpcMessage;)V

    goto/16 :goto_1

    .line 324
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown IPC Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    goto/16 :goto_1

    .line 298
    :cond_4
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getcmdType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 299
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getEpdgContextInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 301
    .local v2, "epdgCtxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getInstance(I)Lcom/sec/epdg/ipc/EpdgIpcDispatcher;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSequence()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->SendEpdgCtxtInfo(Ljava/util/ArrayList;I)Z

    .line 302
    .end local v2    # "epdgCtxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    goto :goto_1

    .line 303
    :cond_5
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 304
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object v2, p1

    check-cast v2, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    invoke-direct {p0, v2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIPSecConnectionInitRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V

    goto :goto_1

    .line 306
    :cond_6
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 307
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object v2, p1

    check-cast v2, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    invoke-direct {p0, v2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIPSecConnectionToggleRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V

    goto :goto_1

    .line 290
    :cond_7
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_8

    .line 291
    iget v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object v2, p1

    check-cast v2, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    invoke-direct {p0, v2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleHandOverStatus(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V

    goto :goto_1

    .line 293
    :cond_8
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 294
    move-object v2, p1

    check-cast v2, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    invoke-direct {p0, v2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleNetRegQuery(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V

    .line 331
    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method public receive([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .line 352
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessageFactory;->fromByteArray([BI)Lcom/sec/epdg/ipc/EpdgIpcMessage;

    move-result-object v0

    .line 353
    .local v0, "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0, v0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->processIpcMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v0    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_0
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->TAG:Ljava/lang/String;

    const-string v2, "Could not parse IPC message"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
