.class public Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;
.super Ljava/lang/Object;
.source "ApnData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/ApnData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnHandoverResponse"
.end annotation


# instance fields
.field private final mCid:I

.field private final mRat:I

.field private final mWifiOrMobile:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "rat"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->mCid:I

    .line 124
    iput p2, p0, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->mRat:I

    .line 125
    const/16 v0, 0x30

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->mWifiOrMobile:Z

    .line 126
    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->mCid:I

    return v0
.end method

.method public getRat()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->mRat:I

    return v0
.end method

.method public isWifiOrMobile()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;->mWifiOrMobile:Z

    return v0
.end method
