.class public Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;
.super Ljava/lang/Object;
.source "ApnData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/ApnData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnConnStatusData"
.end annotation


# instance fields
.field private final mApnType:Ljava/lang/String;

.field private final mCid:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsConnSuccess:Z

.field private final mIsHandover:Z

.field private final mLinkProp:Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

.field private final mMtu:I

.field private mSuggestedRetryTime:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;ZZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;I)V
    .locals 1
    .param p1, "hdr"    # Landroid/os/Handler;
    .param p2, "cid"    # I
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "isConnSuccess"    # Z
    .param p5, "isHandover"    # Z
    .param p6, "prop"    # Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
    .param p7, "mtu"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p2, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mCid:I

    .line 27
    iput-object p3, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mApnType:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mIsConnSuccess:Z

    .line 29
    iput-boolean p5, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mIsHandover:Z

    .line 30
    iput-object p6, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mLinkProp:Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    .line 31
    iput-object p1, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mHandler:Landroid/os/Handler;

    .line 32
    iput p7, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mMtu:I

    .line 33
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mSuggestedRetryTime:I

    .line 34
    return-void
.end method


# virtual methods
.method public getApnType()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mCid:I

    return v0
.end method

.method public getLinkProp()Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mLinkProp:Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mMtu:I

    return v0
.end method

.method public getSuggestedRetryTime()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mSuggestedRetryTime:I

    return v0
.end method

.method public isConnSuccess()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mIsConnSuccess:Z

    return v0
.end method

.method public isHandover()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mIsHandover:Z

    return v0
.end method

.method public post()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public setSuggestedRetryTime(I)I
    .locals 0
    .param p1, "time"    # I

    .line 39
    iput p1, p0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->mSuggestedRetryTime:I

    return p1
.end method
