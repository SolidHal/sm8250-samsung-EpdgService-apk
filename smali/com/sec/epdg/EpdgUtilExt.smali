.class public final Lcom/sec/epdg/EpdgUtilExt;
.super Ljava/lang/Object;
.source "EpdgUtilExt.java"


# static fields
.field private static final INVALID_PHONE_ID:I = -0x1

.field private static mInstance:Lcom/sec/epdg/EpdgUtilExt;

.field private static mIsHandoverBlockForDSDS_DI:Z

.field private static mTriggerIdHandoverBlockForDSDS_DI:I

.field private static sim1Initialized:Z

.field private static sim2Initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgUtilExt;->mInstance:Lcom/sec/epdg/EpdgUtilExt;

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->mIsHandoverBlockForDSDS_DI:Z

    .line 11
    const/4 v1, -0x1

    sput v1, Lcom/sec/epdg/EpdgUtilExt;->mTriggerIdHandoverBlockForDSDS_DI:I

    .line 12
    sput-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->sim1Initialized:Z

    .line 13
    sput-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->sim2Initialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static createInstance()Lcom/sec/epdg/EpdgUtilExt;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/epdg/EpdgUtilExt;->mInstance:Lcom/sec/epdg/EpdgUtilExt;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/sec/epdg/EpdgUtilExt;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgUtilExt;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgUtilExt;->mInstance:Lcom/sec/epdg/EpdgUtilExt;

    .line 22
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgUtilExt;->mInstance:Lcom/sec/epdg/EpdgUtilExt;

    return-object v0
.end method

.method public static deinitialize()V
    .locals 2

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgUtilExt;->mInstance:Lcom/sec/epdg/EpdgUtilExt;

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->mIsHandoverBlockForDSDS_DI:Z

    .line 106
    const/4 v1, -0x1

    sput v1, Lcom/sec/epdg/EpdgUtilExt;->mTriggerIdHandoverBlockForDSDS_DI:I

    .line 107
    sput-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->sim1Initialized:Z

    .line 108
    sput-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->sim2Initialized:Z

    .line 109
    return-void
.end method

.method public static getHandoverBlockTriggerIdForDSDS_DI()I
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHOBlockTriggerIdForDSDS_DI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/EpdgUtilExt;->mTriggerIdHandoverBlockForDSDS_DI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[UtilExt]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget v0, Lcom/sec/epdg/EpdgUtilExt;->mTriggerIdHandoverBlockForDSDS_DI:I

    return v0
.end method

.method public static getInstance()Lcom/sec/epdg/EpdgUtilExt;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/epdg/EpdgUtilExt;->mInstance:Lcom/sec/epdg/EpdgUtilExt;

    return-object v0
.end method

.method public static is2simInserted()Z
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is2simInserted : sim1Initialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/epdg/EpdgUtilExt;->sim1Initialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sim2Initialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/epdg/EpdgUtilExt;->sim2Initialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[UtilExt]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->sim1Initialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->sim2Initialized:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHandoverBlockForDSDS_DI()Z
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHandoverBlockForDSDS_DI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/epdg/EpdgUtilExt;->mIsHandoverBlockForDSDS_DI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[UtilExt]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-boolean v0, Lcom/sec/epdg/EpdgUtilExt;->mIsHandoverBlockForDSDS_DI:Z

    return v0
.end method

.method public static setHandoverBlockForDSDS_DI(ZI)V
    .locals 2
    .param p0, "blockHO"    # Z
    .param p1, "phoneId"    # I

    .line 68
    sput-boolean p0, Lcom/sec/epdg/EpdgUtilExt;->mIsHandoverBlockForDSDS_DI:Z

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHOBlockForDSDS_DI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[UtilExt]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz p0, :cond_0

    .line 71
    sput p1, Lcom/sec/epdg/EpdgUtilExt;->mTriggerIdHandoverBlockForDSDS_DI:I

    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/sec/epdg/EpdgUtilExt;->mTriggerIdHandoverBlockForDSDS_DI:I

    .line 75
    :goto_0
    return-void
.end method

.method public static setSimInitialized(IZ)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "initialized"    # Z

    .line 30
    if-nez p0, :cond_0

    .line 31
    sput-boolean p1, Lcom/sec/epdg/EpdgUtilExt;->sim1Initialized:Z

    goto :goto_0

    .line 33
    :cond_0
    sput-boolean p1, Lcom/sec/epdg/EpdgUtilExt;->sim2Initialized:Z

    .line 35
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimInitialized : sim1Initialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/epdg/EpdgUtilExt;->sim1Initialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sim2Initialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/epdg/EpdgUtilExt;->sim2Initialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[UtilExt]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public isCallStartedOrConnected(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "isconnected":Z
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    const-string v2, "[UtilExt]"

    if-nez v1, :cond_0

    .line 49
    const-string v1, "no EpdgUtils instance. only one sim card or error"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return v0

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isCallConnected()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isCallStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallStartedOrConnected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v0
.end method

.method public setHandoverPropForDSDS_DI(ZI)V
    .locals 3
    .param p1, "blockHO"    # Z
    .param p2, "oppositePhoneid"    # I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHOBlockProp phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " blockHO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[UtilExt]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "no EpdgUtils instance. only one sim card or error"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 88
    :cond_0
    if-eqz p1, :cond_2

    .line 89
    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isImsPdnConnectedOverWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgUtils;->updateHandoverEnableSetting(Z)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set block handover for DSDS_DI phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdn is not connected over wifi for phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->getProperHOProperty()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgUtils;->updateHandoverEnableSetting(Z)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release block handover for DSDS_DI phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void
.end method
