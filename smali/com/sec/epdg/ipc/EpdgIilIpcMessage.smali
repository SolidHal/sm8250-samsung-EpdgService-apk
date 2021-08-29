.class public Lcom/sec/epdg/ipc/EpdgIilIpcMessage;
.super Lcom/sec/epdg/ipc/EpdgIpcMessage;
.source "EpdgIilIpcMessage.java"


# static fields
.field private static final EPDG_CONFIGURATION_INFO_LENGTH:I = 0x24

.field private static final EPDG_MAPCON_INFO_LENGTH:I = 0xf

.field private static final LOG_TAG:Ljava/lang/String; = "[NETIPCMESSAGE]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    .line 21
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

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>([BI)V

    .line 25
    return-void
.end method

.method private intToBytes(I[BI)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "bytes"    # [B
    .param p3, "start"    # I

    .line 112
    const/16 v0, 0xff

    .line 113
    .local v0, "byteMask":I
    and-int v1, p1, v0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 114
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 115
    add-int/lit8 v1, p3, 0x2

    shr-int/lit8 v2, p1, 0x10

    and-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 116
    add-int/lit8 v1, p3, 0x3

    shr-int/lit8 v2, p1, 0x18

    and-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 117
    return-void
.end method


# virtual methods
.method public decodeIilSsacInfo()Lcom/sec/epdg/DataType/SsacInfo;
    .locals 7

    .line 28
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->mIpcBody:[B

    .line 29
    .local v0, "ipcBody":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    .line 30
    .local v2, "voiceFactor":I
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    .line 31
    .local v3, "voiceTime":I
    const/4 v4, 0x3

    aget-byte v4, v0, v4

    .line 32
    .local v4, "videoFactor":I
    const/4 v5, 0x5

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v1, v6, 0x0

    add-int/2addr v5, v1

    mul-int/lit16 v5, v5, 0x3e8

    .line 34
    .local v5, "videoTime":I
    new-instance v1, Lcom/sec/epdg/DataType/SsacInfo;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/epdg/DataType/SsacInfo;-><init>(IIII)V

    return-object v1
.end method

.method public decodeN1modeParam()I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->mIpcBody:[B

    .line 78
    .local v0, "ipcBody":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 79
    .local v1, "pdusessionid":I
    return v1
.end method

.method public encodeEpdgConfigurationInfo(IIIIIILjava/lang/String;)Z
    .locals 7
    .param p1, "wfcEnable"    # I
    .param p2, "wfcPrefMode"    # I
    .param p3, "wfcRoamPrefMode"    # I
    .param p4, "handoverEnable"    # I
    .param p5, "airplaneModeSupport"    # I
    .param p6, "roamingSupport"    # I
    .param p7, "mnoName"    # Ljava/lang/String;

    .line 39
    const/16 v0, 0x24

    new-array v1, v0, [B

    .line 40
    .local v1, "data":[B
    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 41
    int-to-byte v2, p2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 42
    int-to-byte v2, p3

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 43
    int-to-byte v2, p4

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 44
    int-to-byte v2, p5

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    .line 45
    int-to-byte v2, p6

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    .line 47
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string p7, "empty"

    .line 51
    :cond_0
    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 52
    .local v2, "name":[B
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x6

    .local v5, "index":I
    :goto_0
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    if-ge v5, v0, :cond_1

    .line 53
    aget-byte v6, v2, v4

    aput-byte v6, v1, v5

    .line 52
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_1
    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->mIpcBody:[B

    .line 57
    return v3
.end method

.method public encodeEpdgMapconInfo(ILjava/lang/String;)Z
    .locals 6
    .param p1, "supportedTypes"    # I
    .param p2, "priority"    # Ljava/lang/String;

    .line 61
    const/16 v0, 0xf

    new-array v1, v0, [B

    .line 62
    .local v1, "data":[B
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->intToBytes(I[BI)V

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 66
    .local v2, "pri":[B
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x4

    .local v4, "index":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    if-ge v4, v0, :cond_0

    .line 67
    aget-byte v5, v2, v3

    aput-byte v5, v1, v4

    .line 66
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "pri":[B
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_0
    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->mIpcBody:[B

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public encodeN1modeParam(I[BII[B[B)Z
    .locals 6
    .param p1, "sst"    # I
    .param p2, "sd"    # [B
    .param p3, "mappedSstValid"    # I
    .param p4, "mappedSst"    # I
    .param p5, "mappedSd"    # [B
    .param p6, "plmnid"    # [B

    .line 93
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 95
    .local v0, "data":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 96
    aget-byte v1, p2, v2

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 97
    aget-byte v1, p2, v3

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    .line 98
    aget-byte v1, p2, v4

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    .line 99
    int-to-byte v1, p3

    const/4 v5, 0x4

    aput-byte v1, v0, v5

    .line 100
    int-to-byte v1, p4

    const/4 v5, 0x5

    aput-byte v1, v0, v5

    .line 101
    aget-byte v1, p5, v2

    const/4 v5, 0x6

    aput-byte v1, v0, v5

    .line 102
    aget-byte v1, p5, v3

    const/4 v5, 0x7

    aput-byte v1, v0, v5

    .line 103
    aget-byte v1, p5, v4

    const/16 v5, 0x8

    aput-byte v1, v0, v5

    .line 104
    aget-byte v1, p6, v2

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    .line 105
    aget-byte v1, p6, v3

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    .line 106
    aget-byte v1, p6, v4

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    .line 107
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->mIpcBody:[B

    .line 108
    return v3
.end method
