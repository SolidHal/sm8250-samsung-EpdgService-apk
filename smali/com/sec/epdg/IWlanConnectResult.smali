.class public Lcom/sec/epdg/IWlanConnectResult;
.super Ljava/lang/Object;
.source "IWlanConnectResult.java"


# instance fields
.field private mBackoffTimer:I

.field private mCId:I

.field private mIpSecConnection:Ljava/lang/Object;

.field private mIwlanError:Lcom/sec/epdg/ErrorCode/IWlanError;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lcom/sec/epdg/ErrorCode/IWlanError;I)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "conn"    # Ljava/lang/Object;
    .param p3, "iwlanError"    # Lcom/sec/epdg/ErrorCode/IWlanError;
    .param p4, "backoffTimer"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sec/epdg/IWlanConnectResult;->mCId:I

    .line 15
    iput-object p2, p0, Lcom/sec/epdg/IWlanConnectResult;->mIpSecConnection:Ljava/lang/Object;

    .line 16
    iput-object p3, p0, Lcom/sec/epdg/IWlanConnectResult;->mIwlanError:Lcom/sec/epdg/ErrorCode/IWlanError;

    .line 17
    iput p4, p0, Lcom/sec/epdg/IWlanConnectResult;->mBackoffTimer:I

    .line 18
    return-void
.end method


# virtual methods
.method public getBackoffTimer()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mBackoffTimer:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mCId:I

    return v0
.end method

.method public getIPSecConnection()Ljava/lang/Object;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mIpSecConnection:Ljava/lang/Object;

    return-object v0
.end method

.method public getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mIwlanError:Lcom/sec/epdg/ErrorCode/IWlanError;

    return-object v0
.end method
