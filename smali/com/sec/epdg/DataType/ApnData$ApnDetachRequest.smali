.class public Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;
.super Ljava/lang/Object;
.source "ApnData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/ApnData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnDetachRequest"
.end annotation


# instance fields
.field private final mCid:I

.field private mIsHandover:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cid"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;->mIsHandover:Z

    .line 104
    iput p1, p0, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;->mCid:I

    .line 105
    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;->mCid:I

    return v0
.end method

.method public getIsHandover()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;->mIsHandover:Z

    return v0
.end method

.method public setIsHandover(Z)V
    .locals 0
    .param p1, "isHandover"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;->mIsHandover:Z

    .line 111
    return-void
.end method
