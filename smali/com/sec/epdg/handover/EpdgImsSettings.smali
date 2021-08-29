.class public Lcom/sec/epdg/handover/EpdgImsSettings;
.super Ljava/lang/Object;
.source "EpdgImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;
    }
.end annotation


# static fields
.field private static final DEFAULT_INT_SETTING_VALUE:I = -0x80000000

.field private static SUB_TAG:Ljava/lang/String;

.field private static mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

.field private static mEpdgImsSettings2:Lcom/sec/epdg/handover/EpdgImsSettings;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsVoWifiProvisioned:I

.field private mIsVolteProvisioned:I

.field private mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

.field private mPhoneId:I

.field private final mSettingFieldsStr:[Ljava/lang/String;

.field private mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

.field private final mePdgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "[EpdgImsSettings]"

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->SUB_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 26
    sput-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings2:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;
    .param p4, "phoneId"    # I
    .param p5, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sec/epdg/interfaces/IEpdgSubScription;",
            ")V"
        }
    .end annotation

    .line 39
    .local p3, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsSettings;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mePdgHandler:Landroid/os/Handler;

    .line 44
    iput p4, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mPhoneId:I

    .line 45
    iput-object p5, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mPhoneId:I

    .line 47
    invoke-static {v1, v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->getDmSettingWithSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mPhoneId:I

    .line 48
    invoke-static {v1, v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->getDmSettingWithSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mSettingFieldsStr:[Ljava/lang/String;

    .line 51
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    .line 52
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    .line 54
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    .line 55
    if-eqz p3, :cond_0

    .line 56
    invoke-direct {p0, p3, v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->update(Landroid/util/SparseArray;Z)V

    .line 58
    :cond_0
    return-void
.end method

.method private static getDmSettingWithSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#simslot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;ILcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I
    .param p4, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sec/epdg/interfaces/IEpdgSubScription;",
            ")",
            "Lcom/sec/epdg/handover/EpdgImsSettings;"
        }
    .end annotation

    .line 73
    .local p2, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    .line 74
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsSettings;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/handover/EpdgImsSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 76
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0

    .line 78
    :cond_1
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings2:Lcom/sec/epdg/handover/EpdgImsSettings;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsSettings;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/handover/EpdgImsSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings2:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 80
    :cond_2
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings2:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 438
    const/high16 v0, -0x80000000

    .line 439
    .local v0, "ret":I
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/4 v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    const/4 v0, 0x0

    .line 445
    :cond_1
    :goto_0
    return v0
.end method

.method private postImsReadyToEpdgService(Z)V
    .locals 3
    .param p1, "bootup"    # Z

    .line 459
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postImsReadyToEpdgService: bootup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    if-eqz p1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 462
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 463
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 465
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private postToEpdgService(ZII)V
    .locals 1
    .param p1, "bootup"    # Z
    .param p2, "event"    # I
    .param p3, "arg1"    # I

    .line 449
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 452
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 453
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 454
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 456
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private update(Landroid/util/SparseArray;Z)V
    .locals 2
    .param p2, "bootup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 182
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateOmadmSettings(Landroid/util/SparseArray;)V

    .line 213
    invoke-direct {p0, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->postImsReadyToEpdgService(Z)V

    .line 214
    return-void

    .line 183
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->TAG:Ljava/lang/String;

    const-string v1, "updateEpdgImsSettings : Invalid params"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "bootup"    # Z

    .line 151
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " bootup: "

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "isVolteProvisioned":I
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOLTE_PROVISIONED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIsVolteProvisioned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    if-eq v0, v2, :cond_0

    .line 156
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    .line 157
    const/16 v2, 0x42

    invoke-direct {p0, p3, v2, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->postToEpdgService(ZII)V

    .line 160
    .end local v0    # "isVolteProvisioned":I
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "isVoWifiProvisioned":I
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOWIFI_PROVISIONED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIsVoWifiProvisioned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    if-eq v0, v1, :cond_1

    .line 165
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    .line 166
    const/16 v1, 0x43

    invoke-direct {p0, p3, v1, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->postToEpdgService(ZII)V

    .line 178
    .end local v0    # "isVoWifiProvisioned":I
    :cond_1
    invoke-direct {p0, p3}, Lcom/sec/epdg/handover/EpdgImsSettings;->postImsReadyToEpdgService(Z)V

    .line 179
    return-void
.end method

.method private updateOmadmSettings(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 426
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdg1xTimer(Landroid/util/SparseArray;)V

    .line 427
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdgLteTimer(Landroid/util/SparseArray;)V

    .line 428
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdgWifiTimer(Landroid/util/SparseArray;)V

    .line 429
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setCdmaRssi(Landroid/util/SparseArray;)V

    .line 430
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp1(Landroid/util/SparseArray;)V

    .line 431
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp2(Landroid/util/SparseArray;)V

    .line 432
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp3(Landroid/util/SparseArray;)V

    .line 433
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setWifiRssiA(Landroid/util/SparseArray;)V

    .line 434
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setWifiRssiB(Landroid/util/SparseArray;)V

    .line 435
    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 468
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 469
    sput-object v1, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    goto :goto_0

    .line 471
    :cond_0
    sput-object v1, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings2:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 473
    :goto_0
    return-void
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mSettingFieldsStr:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initImsSettings(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public readVolteProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 1

    .line 85
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    invoke-static {v0}, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v0

    return-object v0
.end method

.method public readVowifiProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 1

    .line 89
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    invoke-static {v0}, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->update(Landroid/util/SparseArray;Z)V

    .line 148
    return-void
.end method

.method public updateImsSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    return-void
.end method
