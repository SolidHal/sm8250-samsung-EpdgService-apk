.class Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;
.super Ljava/lang/Object;
.source "EpdgImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OmadmEpdgSettings"
.end annotation


# instance fields
.field private mCdmaRssi:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mTepdg1xTimer:I

.field private mTepdgLteTimer:I

.field private mTepdgWifiTimer:I

.field private mWifiRssiA:I

.field private mWifiRssiB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    .line 234
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    .line 235
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    .line 236
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    .line 237
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    .line 238
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    .line 239
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    .line 240
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    .line 241
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    .line 242
    return-void
.end method


# virtual methods
.method public getCdmaRssi()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    return v0
.end method

.method public getLteRsrp1()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .locals 1

    .line 385
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    return v0
.end method

.method public getTepdgWifiTimer()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    return v0
.end method

.method public getWifiRssiA()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    return v0
.end method

.method public setCdmaRssi(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public setLteRsrp1(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public setLteRsrp2(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public setLteRsrp3(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public setTepdg1xTimer(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public setTepdgLteTimer(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public setTepdgWifiTimer(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 420
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public setWifiRssiA(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method

.method public setWifiRssiB(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 286
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    return-void
.end method
