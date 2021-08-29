.class public Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
.super Lcom/sec/epdg/ipc/EpdgIpcMessage;
.source "EpdgGprsIpcMessage.java"


# static fields
.field private static final APN_NAME_LENGTH:I = 0x65

.field private static final CALL_STATUS_FAILURE:B = 0x0t

.field private static final CALL_STATUS_SUCCESS:B = 0x1t

.field private static final GPRS_CALL_STATUS_LENGTH:I = 0x9

.field private static final GPRS_IPCONFIG_LENGTH:I = 0x101

.field private static final IPV4_ADDR_LENGTH:I = 0x4

.field private static final IPV6_ADDR_LENGTH:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "[GPRSIPCMESSAGE]"

.field private static final USER_AUTHENTICATION_FAILED:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    .line 32
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

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>([BI)V

    .line 36
    return-void
.end method

.method private copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z
    .locals 6
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "byteIndex"    # I
    .param p4, "maxLen"    # I

    .line 58
    const-string v0, "[GPRSIPCMESSAGE]"

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 59
    return v2

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 62
    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string v3, "loopback address. skip "

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return v2

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 67
    .local v3, "ipAddrByteArray":[B
    array-length v4, v3

    .line 69
    .local v4, "ipAddrLen":I
    if-le v4, p4, :cond_2

    move v5, p4

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    move v4, v5

    .line 70
    const/4 v5, 0x0

    invoke-static {v3, v5, p2, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .end local v3    # "ipAddrByteArray":[B
    .end local v4    # "ipAddrLen":I
    goto :goto_1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warning : Code should not hit here. Now checking for ipAddr, ipAddr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 76
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_1
    return v2
.end method

.method private updateIpv4Information([BLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "ipv4Addr"    # Ljava/lang/String;
    .param p3, "ipv4Dns"    # [Ljava/lang/String;
    .param p4, "ipv4Gateway"    # Ljava/lang/String;
    .param p5, "ipv4SubnetMask"    # Ljava/lang/String;
    .param p6, "ipv4Pcscf"    # [Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p2, :cond_0

    .line 83
    const/4 v2, 0x3

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 84
    aget-byte v2, p1, v0

    or-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 88
    :cond_0
    if-eqz p3, :cond_2

    .line 89
    array-length v2, p3

    .line 90
    .local v2, "dnslen":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x7

    .local v4, "index":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 91
    aget-object v5, p3, v3

    invoke-direct {p0, v5, p1, v4, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 92
    if-nez v3, :cond_1

    .line 93
    aget-byte v5, p1, v0

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    goto :goto_1

    .line 95
    :cond_1
    aget-byte v5, p1, v0

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 90
    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 100
    .end local v2    # "dnslen":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_2
    if-eqz p4, :cond_3

    .line 101
    const/16 v2, 0xf

    invoke-direct {p0, p4, p1, v2, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 102
    aget-byte v2, p1, v0

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 105
    :cond_3
    if-eqz p5, :cond_4

    .line 106
    const/16 v2, 0x13

    invoke-direct {p0, p5, p1, v2, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 107
    aget-byte v2, p1, v0

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 110
    :cond_4
    if-eqz p6, :cond_5

    .line 111
    array-length v2, p6

    .line 112
    .local v2, "pcscflen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/16 v4, 0x17

    .restart local v4    # "index":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 113
    aget-object v5, p6, v3

    invoke-direct {p0, v5, p1, v4, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 114
    aget-byte v5, p1, v0

    or-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 112
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    .line 119
    .end local v2    # "pcscflen":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_5
    if-eqz p6, :cond_6

    .line 120
    array-length v0, p6

    .line 121
    .local v0, "pcscflenforext":I
    const/4 v2, 0x3

    .local v2, "i":I
    const/16 v3, 0x9d

    .local v3, "index":I
    :goto_3
    if-ge v2, v0, :cond_6

    .line 122
    aget-object v4, p6, v2

    invoke-direct {p0, v4, p1, v3, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 121
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 125
    .end local v0    # "pcscflenforext":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    :cond_6
    return-void
.end method

.method private updateIpv6Information([BLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "ipv6Addr"    # Ljava/lang/String;
    .param p3, "ipv6Pcscf"    # [Ljava/lang/String;
    .param p4, "ipv6Dns"    # [Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    const/16 v1, 0x10

    if-eqz p2, :cond_0

    .line 131
    const/16 v2, 0x23

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 132
    aget-byte v2, p1, v0

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 135
    :cond_0
    if-eqz p3, :cond_2

    .line 136
    array-length v2, p3

    .line 137
    .local v2, "pcscflen":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/16 v4, 0x33

    .local v4, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 138
    aget-object v5, p3, v3

    invoke-direct {p0, v5, p1, v4, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 137
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 139
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_1
    aget-byte v3, p1, v0

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 142
    .end local v2    # "pcscflen":I
    :cond_2
    if-eqz p4, :cond_4

    .line 143
    array-length v2, p4

    .line 144
    .local v2, "dnslen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/16 v4, 0x63

    .restart local v4    # "index":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 145
    aget-object v5, p4, v3

    invoke-direct {p0, v5, p1, v4, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 146
    const/4 v5, 0x2

    if-nez v3, :cond_3

    .line 147
    aget-byte v6, p1, v5

    or-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    goto :goto_2

    .line 149
    :cond_3
    aget-byte v6, p1, v5

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 144
    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x10

    goto :goto_1

    .line 153
    .end local v2    # "dnslen":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_4
    if-eqz p3, :cond_5

    .line 154
    array-length v0, p3

    .line 155
    .local v0, "pcscflenforext":I
    const/4 v2, 0x3

    .local v2, "i":I
    const/16 v3, 0xb1

    .local v3, "index":I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 156
    aget-object v4, p3, v2

    invoke-direct {p0, v4, p1, v3, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    .line 155
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x10

    goto :goto_3

    .line 158
    .end local v0    # "pcscflenforext":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    :cond_5
    return-void
.end method


# virtual methods
.method public decodeDefinePdpContext()Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    .locals 13

    .line 183
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 184
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 186
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 188
    .local v2, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    const/16 v3, 0x65

    :try_start_0
    new-array v4, v3, [B

    .line 189
    .local v4, "apnName":[B
    const/4 v5, 0x4

    new-array v6, v5, [B

    move-object v11, v6

    .line 190
    .local v11, "ipv4Addr":[B
    const/16 v7, 0x10

    new-array v6, v7, [B

    move-object v12, v6

    .line 192
    .local v12, "ipv6Addr":[B
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 193
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 194
    .local v6, "cid":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 195
    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 196
    invoke-virtual {v1, v12, v8, v7}, Ljava/io/DataInputStream;->read([BII)I

    .line 197
    invoke-virtual {v1, v11, v8, v5}, Ljava/io/DataInputStream;->read([BII)I

    .line 198
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 199
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 200
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    .line 202
    .local v10, "pcscfReq":I
    new-instance v3, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    move-object v5, v3

    move-object v7, v4

    move-object v8, v12

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;-><init>(I[B[B[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 208
    .end local v4    # "apnName":[B
    .end local v6    # "cid":I
    .end local v10    # "pcscfReq":I
    .end local v11    # "ipv4Addr":[B
    .end local v12    # "ipv6Addr":[B
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :goto_0
    goto :goto_1

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 207
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 204
    :catch_1
    move-exception v3

    .line 205
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .end local v3    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 213
    :goto_1
    return-object v2

    .line 208
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 211
    goto :goto_3

    .line 209
    :catch_2
    move-exception v4

    .line 210
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    throw v3
.end method

.method public decodePdpContext()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    .locals 6

    .line 217
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 218
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 222
    .local v2, "pdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 223
    .local v3, "state":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 225
    .local v4, "cid":I
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getNewEpdgContextInfo()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v5

    move-object v2, v5

    .line 226
    invoke-virtual {v2, v3}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    .line 227
    invoke-virtual {v2, v4}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setCid(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v3    # "state":I
    .end local v4    # "cid":I
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    :goto_0
    goto :goto_1

    .line 233
    :catch_0
    move-exception v3

    .line 234
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 231
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 228
    :catch_1
    move-exception v3

    .line 229
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    .end local v3    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 237
    :goto_1
    return-object v2

    .line 232
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 235
    goto :goto_3

    .line 233
    :catch_2
    move-exception v4

    .line 234
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    throw v3
.end method

.method public encodeGprsCallStatus(IIZ)Z
    .locals 4
    .param p1, "cid"    # I
    .param p2, "data_call_state"    # I
    .param p3, "isPermanentFail"    # Z

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 42
    .local v0, "data":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 43
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 44
    aput-byte v1, v0, v1

    goto :goto_0

    .line 46
    :cond_0
    aput-byte v2, v0, v1

    .line 47
    if-eqz p3, :cond_1

    .line 48
    const/4 v2, 0x2

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    .line 51
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    .line 52
    return v1
.end method

.method public encodeGprsIPConfigs(ILcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .param p1, "cid"    # I
    .param p2, "iptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .param p3, "ipv4Addr"    # Ljava/lang/String;
    .param p4, "ipv4Dns"    # [Ljava/lang/String;
    .param p5, "ipv4Gateway"    # Ljava/lang/String;
    .param p6, "ipv4SubnetMask"    # Ljava/lang/String;
    .param p7, "ipv4Pcscf"    # [Ljava/lang/String;
    .param p8, "ipv6Addr"    # Ljava/lang/String;
    .param p9, "ipv6Pcscf"    # [Ljava/lang/String;
    .param p10, "ipv6Dns"    # [Ljava/lang/String;

    .line 164
    move-object v7, p0

    move-object v8, p2

    const/16 v0, 0x101

    new-array v9, v0, [B

    .line 165
    .local v9, "data":[B
    move v10, p1

    int-to-byte v0, v10

    const/4 v1, 0x0

    aput-byte v0, v9, v1

    .line 166
    const/4 v11, 0x1

    aput-byte v1, v9, v11

    .line 167
    const/4 v0, 0x2

    aput-byte v1, v9, v0

    .line 169
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    if-eq v8, v0, :cond_0

    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    if-ne v8, v0, :cond_1

    .line 171
    :cond_0
    move-object v0, p0

    move-object v1, v9

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->updateIpv4Information([BLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    :cond_1
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    if-eq v8, v0, :cond_3

    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    if-ne v8, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    goto :goto_1

    .line 176
    :cond_3
    :goto_0
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->updateIpv6Information([BLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    :goto_1
    iput-object v9, v7, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    .line 179
    return v11
.end method

.method public encodePdpContext(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;)Z"
        }
    .end annotation

    .line 242
    .local p1, "ctxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    const/16 v0, 0x11

    .line 243
    .local v0, "length":I
    new-array v1, v0, [B

    .line 245
    .local v1, "data":[B
    const/4 v2, 0x0

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    .line 246
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 247
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    .line 248
    .local v5, "mCtxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    invoke-virtual {v5}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getCid()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 249
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 246
    .end local v5    # "mCtxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 251
    :cond_0
    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    .line 252
    const/4 v3, 0x1

    return v3
.end method
