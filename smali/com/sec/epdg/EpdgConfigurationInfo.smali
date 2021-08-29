.class Lcom/sec/epdg/EpdgConfigurationInfo;
.super Ljava/lang/Object;
.source "EpdgRilAdapter.java"


# instance fields
.field private mAirplaneModeSupport:I

.field private mHandoverEnable:I

.field private mMnoName:Ljava/lang/String;

.field private mRoamingSupport:I

.field private mWfcEnable:I

.field private mWfcPrefMode:I

.field private mWfcRoamPrefMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcEnable:I

    .line 26
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcPrefMode:I

    .line 27
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcRoamPrefMode:I

    .line 28
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mHandoverEnable:I

    .line 29
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mAirplaneModeSupport:I

    .line 30
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mRoamingSupport:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mMnoName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "wfcEnable"    # I
    .param p2, "wfcPrefMode"    # I
    .param p3, "wfcRoamPrefMode"    # I
    .param p4, "handoverEnable"    # I
    .param p5, "airplaneModeSupport"    # I
    .param p6, "roamingSupport"    # I
    .param p7, "mnoName"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcEnable:I

    .line 37
    iput p2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcPrefMode:I

    .line 38
    iput p3, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcRoamPrefMode:I

    .line 39
    iput p4, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mHandoverEnable:I

    .line 40
    iput p5, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mAirplaneModeSupport:I

    .line 41
    iput p6, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mRoamingSupport:I

    .line 42
    iput-object p7, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mMnoName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p1, Lcom/sec/epdg/EpdgConfigurationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 61
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/epdg/EpdgConfigurationInfo;

    .line 62
    .local v0, "other":Lcom/sec/epdg/EpdgConfigurationInfo;
    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcEnable:I

    iget v3, v0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcEnable:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcPrefMode:I

    iget v3, v0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcPrefMode:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcRoamPrefMode:I

    iget v3, v0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcRoamPrefMode:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mHandoverEnable:I

    iget v3, v0, Lcom/sec/epdg/EpdgConfigurationInfo;->mHandoverEnable:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mAirplaneModeSupport:I

    iget v3, v0, Lcom/sec/epdg/EpdgConfigurationInfo;->mAirplaneModeSupport:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mRoamingSupport:I

    iget v3, v0, Lcom/sec/epdg/EpdgConfigurationInfo;->mRoamingSupport:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mMnoName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/epdg/EpdgConfigurationInfo;->mMnoName:Ljava/lang/String;

    .line 68
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 62
    :goto_0
    return v1
.end method

.method public reset()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcEnable:I

    .line 47
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcPrefMode:I

    .line 48
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcRoamPrefMode:I

    .line 49
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mHandoverEnable:I

    .line 50
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mAirplaneModeSupport:I

    .line 51
    iput v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mRoamingSupport:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mMnoName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcPrefMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mWfcRoamPrefMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mHandoverEnable:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mAirplaneModeSupport:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mRoamingSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgConfigurationInfo;->mMnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
