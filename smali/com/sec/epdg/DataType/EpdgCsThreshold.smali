.class public Lcom/sec/epdg/DataType/EpdgCsThreshold;
.super Ljava/lang/Object;
.source "EpdgCsThreshold.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    }
.end annotation


# instance fields
.field private m2gRoveIn:I

.field private m2gRoveOut:I

.field private m3gRoveIn:I

.field private m3gRoveOut:I

.field private m4gRsrpRoveIn:I

.field private m4gRsrpRoveOut:I

.field private mEcioRoveIn:I

.field private mEcioRoveOut:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mLteRsrqRoveIn:I

.field private mLteRsrqRoveOut:I

.field private mLteRsrqRoveinWeak:I

.field private mSnrRoveIn:I

.field private mSnrRoveOut:I


# direct methods
.method constructor <init>(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m4gRsrpRoveIn:I

    .line 5
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m4gRsrpRoveOut:I

    .line 6
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m3gRoveIn:I

    .line 7
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m3gRoveOut:I

    .line 8
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m2gRoveIn:I

    .line 9
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m2gRoveOut:I

    .line 10
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveIn:I

    .line 11
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveOut:I

    .line 12
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mEcioRoveIn:I

    .line 13
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mEcioRoveOut:I

    .line 14
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mSnrRoveIn:I

    .line 15
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mSnrRoveOut:I

    .line 16
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp1:I

    .line 17
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp2:I

    .line 18
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp3:I

    .line 19
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveinWeak:I

    .line 22
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$000(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m4gRsrpRoveIn:I

    .line 23
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$100(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m4gRsrpRoveOut:I

    .line 24
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$200(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m3gRoveIn:I

    .line 25
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$300(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m3gRoveOut:I

    .line 26
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$400(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m2gRoveIn:I

    .line 27
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$500(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m2gRoveOut:I

    .line 28
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$600(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveIn:I

    .line 29
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$700(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveOut:I

    .line 30
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$800(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mEcioRoveIn:I

    .line 31
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$900(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mEcioRoveOut:I

    .line 32
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$1000(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mSnrRoveIn:I

    .line 33
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$1100(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mSnrRoveOut:I

    .line 34
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$1200(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp1:I

    .line 35
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$1300(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp2:I

    .line 36
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$1400(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp3:I

    .line 37
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->access$1500(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveinWeak:I

    .line 38
    return-void
.end method


# virtual methods
.method public get2gRoveIn()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m2gRoveIn:I

    return v0
.end method

.method public get2gRoveOut()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m2gRoveOut:I

    return v0
.end method

.method public get3gRoveIn()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m3gRoveIn:I

    return v0
.end method

.method public get3gRoveOut()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m3gRoveOut:I

    return v0
.end method

.method public get4gRsrpRoveIn()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m4gRsrpRoveIn:I

    return v0
.end method

.method public get4gRsrpRoveOut()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m4gRsrpRoveOut:I

    return v0
.end method

.method public getEcioRoveIn()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mEcioRoveIn:I

    return v0
.end method

.method public getEcioRoveOut()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mEcioRoveOut:I

    return v0
.end method

.method public getLteRsrp1()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrp3:I

    return v0
.end method

.method public getLteRsrqRoveIn()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveIn:I

    return v0
.end method

.method public getLteRsrqRoveOut()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveOut:I

    return v0
.end method

.method public getLteRsrqRoveinWeak()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mLteRsrqRoveinWeak:I

    return v0
.end method

.method public getSnrRoveIn()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mSnrRoveIn:I

    return v0
.end method

.method public getSnrRoveOut()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->mSnrRoveOut:I

    return v0
.end method

.method public isEpdgCsThresholdEnable()Z
    .locals 1

    .line 90
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m4gRsrpRoveIn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m4gRsrpRoveOut:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m3gRoveIn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m3gRoveOut:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m2gRoveIn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold;->m2gRoveOut:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
