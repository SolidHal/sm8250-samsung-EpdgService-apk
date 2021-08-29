.class public Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
.super Lcom/sec/epdg/ipc/EpdgIpcMessage;
.source "EpdgNetIpcMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[NETIPCMESSAGE]"

.field private static final NET_EPDG_HANDOVER_THRESHOLD_LENGTH:I = 0xf

.field private static final NET_HANDOVER_LENGTH:I = 0x4

.field private static final NET_REGIST_LENGTH:I = 0x14


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    .line 19
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>([BI)V

    .line 23
    return-void
.end method

.method private intToBytes(I[BI)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "bytes"    # [B
    .param p3, "start"    # I

    .line 70
    const/16 v0, 0xff

    .line 71
    .local v0, "byteMask":I
    and-int v1, p1, v0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 72
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 73
    return-void
.end method


# virtual methods
.method public decodeHandoverResult()Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .locals 10

    .line 77
    const-string v0, "decodeHandoverResult: IOException while closing stream"

    const-string v1, "[NETIPCMESSAGE]"

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v3, "dis":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 82
    .local v4, "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 83
    .local v5, "cause":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 84
    .local v6, "state":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    .line 85
    .local v7, "act":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 86
    .local v8, "pdnType":I
    new-instance v9, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;

    invoke-direct {v9, v6, v7, v8, v5}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;-><init>(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v9

    .line 93
    .end local v5    # "cause":I
    .end local v6    # "state":I
    .end local v7    # "act":I
    .end local v8    # "pdnType":I
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :goto_0
    goto :goto_1

    .line 94
    :catch_0
    move-exception v5

    .line 95
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 88
    :catch_1
    move-exception v5

    .line 89
    .local v5, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v6, "decodeHandoverResult: IOException "

    invoke-static {v1, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .end local v5    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 99
    :goto_1
    return-object v4

    .line 93
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 97
    goto :goto_3

    .line 94
    :catch_2
    move-exception v6

    .line 95
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    throw v5
.end method

.method public encodeEpdgHoThreshold(IIIIIIIIIIIII)Z
    .locals 18
    .param p1, "state"    # I
    .param p2, "roveInLteRsrp"    # I
    .param p3, "roveOutLteRsrp"    # I
    .param p4, "roveIn3g"    # I
    .param p5, "roveOut3g"    # I
    .param p6, "roveIn2g"    # I
    .param p7, "roveOut2g"    # I
    .param p8, "roveInLteRsrq"    # I
    .param p9, "roveOutLteRsrq"    # I
    .param p10, "thresholdEcioRoveIn"    # I
    .param p11, "thresholdEcioRoveOut"    # I
    .param p12, "thresholdSnrRoveIn"    # I
    .param p13, "thresholdSnrRoveOut"    # I

    .line 51
    move-object/from16 v0, p0

    const/16 v1, 0xf

    new-array v1, v1, [B

    .line 52
    .local v1, "data":[B
    move/from16 v2, p1

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 53
    move/from16 v3, p2

    int-to-byte v4, v3

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    .line 54
    move/from16 v4, p3

    int-to-byte v6, v4

    const/4 v7, 0x2

    aput-byte v6, v1, v7

    .line 55
    move/from16 v6, p4

    int-to-byte v7, v6

    const/4 v8, 0x3

    aput-byte v7, v1, v8

    .line 56
    move/from16 v7, p5

    int-to-byte v8, v7

    const/4 v9, 0x4

    aput-byte v8, v1, v9

    .line 57
    move/from16 v8, p6

    int-to-byte v9, v8

    const/4 v10, 0x5

    aput-byte v9, v1, v10

    .line 58
    move/from16 v9, p7

    int-to-byte v10, v9

    const/4 v11, 0x6

    aput-byte v10, v1, v11

    .line 59
    move/from16 v10, p10

    int-to-byte v11, v10

    const/4 v12, 0x7

    aput-byte v11, v1, v12

    .line 60
    move/from16 v11, p11

    int-to-byte v12, v11

    const/16 v13, 0x8

    aput-byte v12, v1, v13

    .line 61
    const/16 v12, 0x9

    move/from16 v13, p12

    invoke-direct {v0, v13, v1, v12}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->intToBytes(I[BI)V

    .line 62
    const/16 v12, 0xb

    move/from16 v14, p13

    invoke-direct {v0, v14, v1, v12}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->intToBytes(I[BI)V

    .line 63
    move/from16 v12, p8

    int-to-byte v15, v12

    const/16 v16, 0xd

    aput-byte v15, v1, v16

    .line 64
    move/from16 v15, p9

    int-to-byte v5, v15

    const/16 v17, 0xe

    aput-byte v5, v1, v17

    .line 65
    iput-object v1, v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    .line 66
    const/4 v5, 0x1

    return v5
.end method

.method public encodeNetDataHandoverInfo(IIII)Z
    .locals 4
    .param p1, "cause"    # I
    .param p2, "state"    # I
    .param p3, "act"    # I
    .param p4, "pdntype"    # I

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 27
    .local v0, "data":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 28
    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 29
    int-to-byte v1, p3

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 30
    int-to-byte v1, p4

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 31
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    .line 32
    return v2
.end method

.method public encodeNetRegist(II)Z
    .locals 4
    .param p1, "act"    # I
    .param p2, "reg_status"    # I

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 38
    .local v0, "data":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 39
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 40
    int-to-byte v1, p2

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 42
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    .line 43
    return v2
.end method
