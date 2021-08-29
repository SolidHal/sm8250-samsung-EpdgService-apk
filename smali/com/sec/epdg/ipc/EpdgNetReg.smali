.class public Lcom/sec/epdg/ipc/EpdgNetReg;
.super Ljava/lang/Object;
.source "EpdgNetReg.java"


# instance fields
.field private act:B

.field private srvdomain:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->act:B

    .line 10
    iput-byte v0, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->srvdomain:B

    .line 11
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 0
    .param p1, "act"    # B
    .param p2, "srvdomain"    # B

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-byte p1, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->act:B

    .line 15
    iput-byte p2, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->srvdomain:B

    .line 16
    return-void
.end method


# virtual methods
.method public getAct()I
    .locals 1

    .line 19
    iget-byte v0, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->act:B

    return v0
.end method

.method public getSrvdomain()I
    .locals 1

    .line 27
    iget-byte v0, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->srvdomain:B

    return v0
.end method

.method public setAct(B)V
    .locals 0
    .param p1, "act"    # B

    .line 23
    iput-byte p1, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->act:B

    .line 24
    return-void
.end method

.method public setSrvdomain(B)V
    .locals 0
    .param p1, "srvdomain"    # B

    .line 31
    iput-byte p1, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->srvdomain:B

    .line 32
    return-void
.end method
