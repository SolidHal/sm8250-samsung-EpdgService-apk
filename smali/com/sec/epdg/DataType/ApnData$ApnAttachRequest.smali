.class public Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
.super Ljava/lang/Object;
.source "ApnData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/ApnData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnAttachRequest"
.end annotation


# instance fields
.field private final mApnName:Ljava/lang/String;

.field private final mCid:I

.field private final mIpv4Addr:Ljava/lang/String;

.field private final mIpv6Addr:Ljava/lang/String;

.field private final mPcscfReq:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "apnName"    # Ljava/lang/String;
    .param p3, "ipv4Addr"    # Ljava/lang/String;
    .param p4, "ipv6Addr"    # Ljava/lang/String;
    .param p5, "pcscfReq"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mCid:I

    .line 77
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mApnName:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mIpv4Addr:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mIpv6Addr:Ljava/lang/String;

    .line 80
    iput p5, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mPcscfReq:I

    .line 81
    return-void
.end method


# virtual methods
.method public getApnName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mApnName:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mCid:I

    return v0
.end method

.method public getIpv4Addr()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6Addr()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfReq()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->mPcscfReq:I

    return v0
.end method
