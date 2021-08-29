.class public Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMSRtpLossRateChange"
.end annotation


# instance fields
.field private final mForceW2L:I

.field private final mIsReachMax:Z

.field private final mRtpLossRate:F


# direct methods
.method public constructor <init>(ZIF)V
    .locals 0
    .param p1, "isReachMax"    # Z
    .param p2, "forceW2L"    # I
    .param p3, "rtpLossRate"    # F

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean p1, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mIsReachMax:Z

    .line 93
    iput p2, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mForceW2L:I

    .line 94
    iput p3, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mRtpLossRate:F

    .line 95
    return-void
.end method


# virtual methods
.method public getForceW2L()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mForceW2L:I

    return v0
.end method

.method public getIsReachMax()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mIsReachMax:Z

    return v0
.end method

.method public getRtpLossRate()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mRtpLossRate:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IMSRtpLossRateChange] mIsReachMax : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mIsReachMax:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mForceW2L : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mForceW2L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRtpLossRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;->mRtpLossRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
