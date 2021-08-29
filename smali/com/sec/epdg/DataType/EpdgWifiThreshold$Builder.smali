.class public Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
.super Ljava/lang/Object;
.source "EpdgWifiThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/EpdgWifiThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    .line 51
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiRoveIn:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    .line 51
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiRoveOut:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    .line 51
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiHandoverTh:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    .line 51
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiRoveInInWifiOnly:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    .line 51
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiRoveOutInWifiOnly:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    .line 51
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiEdgeRoveIn:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;

    .line 51
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiEdgeRoveOut:I

    return v0
.end method


# virtual methods
.method public build()Lcom/sec/epdg/DataType/EpdgWifiThreshold;
    .locals 1

    .line 97
    new-instance v0, Lcom/sec/epdg/DataType/EpdgWifiThreshold;

    invoke-direct {v0, p0}, Lcom/sec/epdg/DataType/EpdgWifiThreshold;-><init>(Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;)V

    return-object v0
.end method

.method public setWifiEdgeRoveIn(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
    .locals 0
    .param p1, "wifiEdgeRoveIn"    # I

    .line 87
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiEdgeRoveIn:I

    .line 88
    return-object p0
.end method

.method public setWifiEdgeRoveOut(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
    .locals 0
    .param p1, "wifiEdgeRoveOut"    # I

    .line 92
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiEdgeRoveOut:I

    .line 93
    return-object p0
.end method

.method public setWifiHandoverTh(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
    .locals 0
    .param p1, "wifiHandoverTh"    # I

    .line 72
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiHandoverTh:I

    .line 73
    return-object p0
.end method

.method public setWifiRoveIn(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
    .locals 0
    .param p1, "wifiRoveIn"    # I

    .line 62
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiRoveIn:I

    .line 63
    return-object p0
.end method

.method public setWifiRoveInInWifiOnly(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
    .locals 0
    .param p1, "wifiRoveInInWifiOnly"    # I

    .line 77
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiRoveInInWifiOnly:I

    .line 78
    return-object p0
.end method

.method public setWifiRoveOut(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
    .locals 0
    .param p1, "wifiRoveOut"    # I

    .line 67
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiRoveOut:I

    .line 68
    return-object p0
.end method

.method public setWifiRoveOutInWifiOnly(I)Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;
    .locals 0
    .param p1, "wifiRoveOutInWifiOnly"    # I

    .line 82
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgWifiThreshold$Builder;->mWifiRoveOutInWifiOnly:I

    .line 83
    return-object p0
.end method
