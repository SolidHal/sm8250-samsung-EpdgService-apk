.class public Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
.super Ljava/lang/Object;
.source "EpdgDefinePdpContextInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[DEFINEPDPCONTEXTINFO]"


# instance fields
.field private mApnName:[Ljava/lang/String;

.field private mCid:I

.field private mIpv4Addr:Ljava/lang/String;

.field private mIpv6Addr:Ljava/lang/String;

.field private mPcscfReq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(I[B[B[BI)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "apnName"    # [B
    .param p3, "ipv6Addr"    # [B
    .param p4, "ipv4Addr"    # [B
    .param p5, "pcscfReq"    # I

    .line 20
    const-string v0, "[DEFINEPDPCONTEXTINFO]"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mCid:I

    .line 25
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 26
    .local v1, "data":Ljava/lang/String;
    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mApnName:[Ljava/lang/String;

    .line 30
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 31
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv6Addr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v2    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v3, "Unexpected problem creating IPv6 Address"

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_0
    :try_start_1
    invoke-static {p4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 39
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv4Addr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .end local v2    # "address":Ljava/net/InetAddress;
    goto :goto_1

    .line 40
    :catch_1
    move-exception v2

    .line 41
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v3, "Unexpected problem creating IPv4 Address"

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_1
    iput p5, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mPcscfReq:I

    .line 46
    return-void
.end method


# virtual methods
.method public getApnName()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mApnName:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mCid:I

    return v0
.end method

.method public getIpv4Addr()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6Addr()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfReq()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mPcscfReq:I

    return v0
.end method
