.class public Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
.super Ljava/lang/Object;
.source "EpdgCsThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/EpdgCsThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m4gRsrpRoveIn:I

    .line 96
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m4gRsrpRoveOut:I

    .line 97
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m3gRoveIn:I

    .line 98
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m3gRoveOut:I

    .line 99
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m2gRoveIn:I

    .line 100
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m2gRoveOut:I

    .line 101
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveIn:I

    .line 102
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveOut:I

    .line 103
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mEcioRoveIn:I

    .line 104
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mEcioRoveOut:I

    .line 105
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mSnrRoveIn:I

    .line 106
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mSnrRoveOut:I

    .line 107
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp1:I

    .line 108
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp2:I

    .line 109
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp3:I

    .line 110
    iput v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveinWeak:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m4gRsrpRoveIn:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m4gRsrpRoveOut:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mSnrRoveIn:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mSnrRoveOut:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp1:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp2:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp3:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveinWeak:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m3gRoveIn:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m3gRoveOut:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m2gRoveIn:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m2gRoveOut:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveIn:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveOut:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mEcioRoveIn:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;

    .line 94
    iget v0, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mEcioRoveOut:I

    return v0
.end method


# virtual methods
.method public build()Lcom/sec/epdg/DataType/EpdgCsThreshold;
    .locals 1

    .line 177
    new-instance v0, Lcom/sec/epdg/DataType/EpdgCsThreshold;

    invoke-direct {v0, p0}, Lcom/sec/epdg/DataType/EpdgCsThreshold;-><init>(Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;)V

    return-object v0
.end method

.method public set2gRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "p2gRoveIn"    # I

    .line 129
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m2gRoveIn:I

    .line 130
    return-object p0
.end method

.method public set2gRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "p2gRoveOut"    # I

    .line 133
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m2gRoveOut:I

    .line 134
    return-object p0
.end method

.method public set3gRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "p3gRoveIn"    # I

    .line 121
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m3gRoveIn:I

    .line 122
    return-object p0
.end method

.method public set3gRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "p3gRoveOut"    # I

    .line 125
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m3gRoveOut:I

    .line 126
    return-object p0
.end method

.method public set4gRsrpRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "p4gRsrpRoveIn"    # I

    .line 113
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m4gRsrpRoveIn:I

    .line 114
    return-object p0
.end method

.method public set4gRsrpRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "p4gRsrpRoveOut"    # I

    .line 117
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->m4gRsrpRoveOut:I

    .line 118
    return-object p0
.end method

.method public setEcioRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pEcioRoveIn"    # I

    .line 145
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mEcioRoveIn:I

    .line 146
    return-object p0
.end method

.method public setEcioRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pEcioRoveOut"    # I

    .line 149
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mEcioRoveOut:I

    .line 150
    return-object p0
.end method

.method public setLteRsrp1(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pLteRsrp1"    # I

    .line 161
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp1:I

    .line 162
    return-object p0
.end method

.method public setLteRsrp2(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pLteRsrp2"    # I

    .line 165
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp2:I

    .line 166
    return-object p0
.end method

.method public setLteRsrp3(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pLteRsrp3"    # I

    .line 169
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrp3:I

    .line 170
    return-object p0
.end method

.method public setLteRsrqRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pLteRsrqRoveIn"    # I

    .line 137
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveIn:I

    .line 138
    return-object p0
.end method

.method public setLteRsrqRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pLteRsrqRoveOut"    # I

    .line 141
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveOut:I

    .line 142
    return-object p0
.end method

.method public setLteRsrqRoveinWeak(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pLteRsrqRoveinWeak"    # I

    .line 173
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mLteRsrqRoveinWeak:I

    .line 174
    return-object p0
.end method

.method public setSnrRoveIn(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pSnrRoveIn"    # I

    .line 153
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mSnrRoveIn:I

    .line 154
    return-object p0
.end method

.method public setSnrRoveOut(I)Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;
    .locals 0
    .param p1, "pSnrRoveOut"    # I

    .line 157
    iput p1, p0, Lcom/sec/epdg/DataType/EpdgCsThreshold$Builder;->mSnrRoveOut:I

    .line 158
    return-object p0
.end method
