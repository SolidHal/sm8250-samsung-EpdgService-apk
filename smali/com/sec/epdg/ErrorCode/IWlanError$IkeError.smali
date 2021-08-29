.class public Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;
.super Ljava/lang/Object;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ErrorCode/IWlanError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeError"
.end annotation


# instance fields
.field private final mIkeErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "ikeErrorCode"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->mIkeErrorCode:I

    .line 44
    return-void
.end method


# virtual methods
.method public getIkeErrorCode()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->mIkeErrorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    iget v0, p0, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->mIkeErrorCode:I

    invoke-static {v0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->printRfcIkeErrorCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
