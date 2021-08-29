.class public Lcom/sec/epdg/DataType/EpdgWifiThreshold;
.super Ljava/lang/Object;
.source "EpdgWifiThreshold.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
    }
.end annotation


# instance fields
.field private mWifiEdgeRoveIn:I

.field private mWifiEdgeRoveOut:I

.field private mWifiHandoverTh:I

.field private mWifiRoveIn:I

.field private mWifiRoveInInWifiOnly:I

.field private mWifiRoveOut:I

.field private mWifiRoveOutInWifiOnly:I


# direct methods
.method constructor <init>(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->access$000(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiRoveIn:I

    .line 15
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->access$100(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiRoveOut:I

    .line 16
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->access$200(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiHandoverTh:I

    .line 17
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->access$300(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiRoveInInWifiOnly:I

    .line 18
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->access$400(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiRoveOutInWifiOnly:I

    .line 19
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->access$500(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiEdgeRoveIn:I

    .line 20
    invoke-static {p1}, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->access$600(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiEdgeRoveOut:I

    .line 21
    return-void
.end method


# virtual methods
.method public getWifiEdgeRoveIn()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiEdgeRoveIn:I

    return v0
.end method

.method public getWifiEdgeRoveOut()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiEdgeRoveOut:I

    return v0
.end method

.method public getWifiHandoverTh()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiHandoverTh:I

    return v0
.end method

.method public getWifiRoveIn()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiRoveIn:I

    return v0
.end method

.method public getWifiRoveInInWifiOnly()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiRoveInInWifiOnly:I

    return v0
.end method

.method public getWifiRoveOut()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiRoveOut:I

    return v0
.end method

.method public getWifiRoveOutInWifiOnly()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;->mWifiRoveOutInWifiOnly:I

    return v0
.end method
