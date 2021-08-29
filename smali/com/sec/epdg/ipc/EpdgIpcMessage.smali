.class public Lcom/sec/epdg/ipc/EpdgIpcMessage;
.super Ljava/lang/Object;
.source "EpdgIpcMessage.java"


# static fields
.field static final GEN_RESP_BYTE_2:I = 0x80

.field static final GEN_RESP_FAILURE:I = 0x5

.field private static final GEN_RESP_LENGTH:I = 0x5

.field static final GEN_RESP_SUCCESS:I = 0x0

.field public static final IPC_CMD_EVENT:I = 0x5

.field public static final IPC_CMD_EXEC:I = 0x1

.field public static final IPC_CMD_GET:I = 0x2

.field public static final IPC_CMD_INDI:I = 0x1

.field public static final IPC_CMD_NOTI:I = 0x3

.field public static final IPC_CMD_RESP:I = 0x2

.field public static final IPC_CMD_SET:I = 0x3

.field public static final IPC_DEBUG_HDR_SIZE:I = 0xc

.field public static final IPC_GEN_CMD:I = 0x80

.field public static final IPC_GEN_PHONE_RES:I = 0x1

.field public static final IPC_GPRS_CALL_STATUS:I = 0x10

.field public static final IPC_GPRS_CMD:I = 0xd

.field public static final IPC_GPRS_DEFINE_PDP_CONTEXT:I = 0x1

.field public static final IPC_GPRS_DEFINE_SEC_PDP_CONTEXT:I = 0xa

.field public static final IPC_GPRS_EPDG_STATUS:I = 0x16

.field public static final IPC_GPRS_IP_CONFIGURATION:I = 0x9

.field public static final IPC_GPRS_PDP_CONTEXT:I = 0x4

.field public static final IPC_HDR_SIZE:I = 0x7

.field public static final IPC_IIL_CMD:I = 0x70

.field public static final IPC_IIL_EPDG_CONFIGURATION:I = 0x17

.field public static final IPC_IIL_EPDG_HANDOVER_PARAM:I = 0x19

.field public static final IPC_IIL_EPDG_MAPCON:I = 0x18

.field public static final IPC_IIL_SSAC_INFO:I = 0xe

.field public static final IPC_NET_CMD:I = 0x8

.field public static final IPC_NET_DATA_HANDOVER:I = 0xf

.field public static final IPC_NET_EPDG_HO_THRESHOLD:I = 0x24

.field public static final IPC_NET_REGIST:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "[IPCMESSAGE]"

.field public static final MAX_IPC_HEADER:I = 0x13

.field private static sGlobalIpcSeq:I


# instance fields
.field protected mAsequence:I

.field protected mCmdType:I

.field protected mIpcBody:[B

.field protected mIpcData:[B

.field protected mIpcHeader:[B

.field protected mLength:I

.field protected mMainCmd:I

.field protected mNetworkType:I

.field protected mSequence:I

.field protected mSubCmd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    .line 87
    iput p2, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    .line 88
    iput p3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    .line 90
    sget v0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->sGlobalIpcSeq:I

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSequence:I

    .line 91
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->sGlobalIpcSeq:I

    .line 92
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-string v0, "IOException while closing stream "

    const-string v1, "[IPCMESSAGE]"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 96
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSequence:I

    .line 100
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mAsequence:I

    .line 101
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    .line 102
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    .line 103
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    .line 105
    const/4 v4, 0x7

    if-le p2, v4, :cond_0

    .line 106
    add-int/lit8 v4, p2, -0x7

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    .line 107
    const/4 v5, 0x0

    add-int/lit8 v6, p2, -0x7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 110
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    goto :goto_0

    .line 117
    :catch_0
    move-exception v4

    .line 118
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 122
    :goto_0
    return-void

    .line 115
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 111
    :catch_1
    move-exception v4

    .line 112
    .local v4, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse, IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    nop

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    .end local p1    # "data":[B
    .end local p2    # "length":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    .restart local p1    # "data":[B
    .restart local p2    # "length":I
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 120
    goto :goto_2

    .line 117
    :catch_2
    move-exception v5

    .line 118
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    throw v4
.end method


# virtual methods
.method public dumpHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    .line 211
    const-string v0, ""

    .line 213
    .local v0, "str":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 214
    return-object v0

    .line 216
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02X "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public encode()[B
    .locals 1

    .line 315
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public encodeGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z
    .locals 7
    .param p1, "result"    # Z
    .param p2, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .line 320
    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 321
    .local v1, "data":[B
    iget v2, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 322
    iget v2, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 323
    iget v2, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    int-to-byte v2, v2

    const/4 v5, 0x2

    aput-byte v2, v1, v5

    .line 325
    const/16 v2, -0x80

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz p1, :cond_0

    .line 326
    aput-byte v3, v1, v6

    .line 327
    aput-byte v2, v1, v5

    goto :goto_0

    .line 329
    :cond_0
    aput-byte v0, v1, v6

    .line 330
    aput-byte v2, v1, v5

    .line 333
    :goto_0
    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    .line 334
    return v4
.end method

.method public encodeNotification()Z
    .locals 1

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public getBody()[B
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    return-object v0
.end method

.method public getEpdgCmdType()Ljava/lang/String;
    .locals 2

    .line 239
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    const-string v0, "IPC_CMD_NOTI"

    return-object v0

    .line 243
    :cond_1
    const-string v0, "IPC_CMD_RESP"

    return-object v0

    .line 241
    :cond_2
    const-string v0, "IPC_CMD_INDI"

    return-object v0
.end method

.method public getIncomingEpdgCmdType()Ljava/lang/String;
    .locals 2

    .line 252
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    const-string v0, "IPC_CMD_SET"

    return-object v0

    .line 256
    :cond_1
    const-string v0, "IPC_CMD_GET"

    return-object v0

    .line 254
    :cond_2
    const-string v0, "IPC_CMD_INDI"

    return-object v0
.end method

.method public getMainCmd()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSequence:I

    return v0
.end method

.method public getSubCmd()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    return v0
.end method

.method public getcmdType()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    return v0
.end method

.method public mainCmdStr()Ljava/lang/String;
    .locals 2

    .line 224
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    const-string v0, "IPC_GEN_CMD"

    return-object v0

    .line 230
    :cond_1
    const-string v0, "IPC_IIL_CMD"

    return-object v0

    .line 226
    :cond_2
    const-string v0, "IPC_GPRS_CMD"

    return-object v0

    .line 228
    :cond_3
    const-string v0, "IPC_NET_CMD"

    return-object v0
.end method

.method protected makeHeader()Z
    .locals 7

    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 125
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 126
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x1

    .line 128
    .local v2, "result":Z
    :try_start_0
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSequence:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 129
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mAsequence:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 130
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 131
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 132
    iget v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_0
    goto :goto_1

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    const/4 v2, 0x0

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 137
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 133
    :catch_1
    move-exception v3

    .line 134
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "[IPCMESSAGE]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed in makeHeader() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    const/4 v2, 0x0

    .line 138
    .end local v3    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 145
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcHeader:[B

    .line 146
    return v2

    .line 138
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 142
    goto :goto_3

    .line 139
    :catch_2
    move-exception v4

    .line 140
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    const/4 v2, 0x0

    .line 143
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    throw v3
.end method

.method public setAsequence(I)V
    .locals 0
    .param p1, "aSeq"    # I

    .line 207
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mAsequence:I

    .line 208
    return-void
.end method

.method public subCmdStr()Ljava/lang/String;
    .locals 4

    .line 265
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/4 v1, 0x1

    const-string v2, "Unknown: "

    const/16 v3, 0xd

    if-ne v0, v3, :cond_4

    .line 266
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    const-string v0, "IPC_GPRS_CALL_STATUS"

    return-object v0

    .line 272
    :cond_1
    const-string v0, "IPC_GPRS_IP_CONFIGURATION"

    return-object v0

    .line 270
    :cond_2
    const-string v0, "IPC_GPRS_PDP_CONTEXT"

    return-object v0

    .line 268
    :cond_3
    const-string v0, "IPC_GPRS_DEFINE_PDP_CONTEXT"

    return-object v0

    .line 278
    :cond_4
    const/16 v3, 0x8

    if-ne v0, v3, :cond_8

    .line 279
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/16 v1, 0xf

    if-eq v0, v1, :cond_6

    const/16 v1, 0x24

    if-eq v0, v1, :cond_5

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :cond_5
    const-string v0, "IPC_NET_EPDG_HO_THRESHOLD"

    return-object v0

    .line 283
    :cond_6
    const-string v0, "IPC_NET_DATA_HANDOVER"

    return-object v0

    .line 281
    :cond_7
    const-string v0, "IPC_NET_REGIST"

    return-object v0

    .line 289
    :cond_8
    const/16 v3, 0x70

    if-ne v0, v3, :cond_a

    .line 290
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :pswitch_0
    const-string v0, "IPC_IIL_EPDG_HANDOVER_PARAM"

    return-object v0

    .line 296
    :pswitch_1
    const-string v0, "IPC_IIL_EPDG_MAPCON"

    return-object v0

    .line 294
    :pswitch_2
    const-string v0, "IPC_IIL_EPDG_CONFIGURATION"

    return-object v0

    .line 292
    :cond_9
    const-string v0, "IPC_IIL_SSAC_INFO"

    return-object v0

    .line 302
    :cond_a
    const/16 v3, 0x80

    if-ne v0, v3, :cond_c

    .line 303
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    if-eq v0, v1, :cond_b

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_b
    const-string v0, "IPC_GEN_PHONE_RES"

    return-object v0

    .line 310
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toByteArray()[B
    .locals 7

    .line 151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 152
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x7

    .line 154
    .local v2, "totalLength":I
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    if-eqz v3, :cond_0

    .line 155
    array-length v3, v3

    add-int/2addr v2, v3

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->makeHeader()Z

    .line 160
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    .line 162
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 163
    shr-int/lit8 v3, v2, 0x8

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 164
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcHeader:[B

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 165
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    iget-object v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    array-length v4, v4

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 168
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :goto_0
    goto :goto_1

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 172
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 169
    :catch_1
    move-exception v3

    .line 170
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "[IPCMESSAGE]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed in createIpcMessage() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v3    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 179
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    return-object v3

    .line 173
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 176
    goto :goto_3

    .line 174
    :catch_2
    move-exception v4

    .line 175
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    throw v3
.end method
