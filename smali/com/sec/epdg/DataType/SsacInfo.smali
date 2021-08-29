.class public Lcom/sec/epdg/DataType/SsacInfo;
.super Ljava/lang/Object;
.source "SsacInfo.java"


# instance fields
.field private mVideoFactor:I

.field private mVideoTime:I

.field private mVoiceFactor:I

.field private mVoiceTime:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "voiceFactor"    # I
    .param p2, "voiceTime"    # I
    .param p3, "videoFactor"    # I
    .param p4, "videoTime"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/sec/epdg/DataType/SsacInfo;->mVoiceFactor:I

    .line 11
    iput p2, p0, Lcom/sec/epdg/DataType/SsacInfo;->mVoiceTime:I

    .line 12
    iput p3, p0, Lcom/sec/epdg/DataType/SsacInfo;->mVideoFactor:I

    .line 13
    iput p4, p0, Lcom/sec/epdg/DataType/SsacInfo;->mVideoTime:I

    .line 14
    return-void
.end method


# virtual methods
.method public getVideoFactor()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/sec/epdg/DataType/SsacInfo;->mVideoFactor:I

    return v0
.end method

.method public getVideoTime()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/sec/epdg/DataType/SsacInfo;->mVideoTime:I

    return v0
.end method

.method public getVoiceFactor()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/sec/epdg/DataType/SsacInfo;->mVoiceFactor:I

    return v0
.end method

.method public getVoiceTime()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/sec/epdg/DataType/SsacInfo;->mVoiceTime:I

    return v0
.end method
