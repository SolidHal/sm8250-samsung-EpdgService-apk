.class public Lcom/sec/epdg/VodaProvisionManager;
.super Ljava/lang/Object;
.source "VodaProvisionManager.java"


# static fields
.field private static final NOT_PROVISION:Ljava/lang/String; = "NoEpdgServerIp"

.field private static PHONE_SIZE:I = 0x0

.field private static final SP_SMS_PROVISION:Ljava/lang/String; = "sms_provision"

.field private static SUB_TAG:Ljava/lang/String; = null

.field private static final VODA_UK_MCCMNC:Ljava/lang/String; = "23415"

.field private static mInstance:[Lcom/sec/epdg/VodaProvisionManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    const-string v0, "[VodaProvisionManager]"

    sput-object v0, Lcom/sec/epdg/VodaProvisionManager;->SUB_TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x2

    sput v0, Lcom/sec/epdg/VodaProvisionManager;->PHONE_SIZE:I

    .line 19
    new-array v0, v0, [Lcom/sec/epdg/VodaProvisionManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/epdg/VodaProvisionManager;->mInstance:[Lcom/sec/epdg/VodaProvisionManager;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/VodaProvisionManager;->TAG:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/sec/epdg/VodaProvisionManager;->mContext:Landroid/content/Context;

    .line 29
    iput p1, p0, Lcom/sec/epdg/VodaProvisionManager;->mPhoneId:I

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/VodaProvisionManager;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/VodaProvisionManager;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private deInit()V
    .locals 0

    .line 81
    return-void
.end method

.method public static deinitialize(I)V
    .locals 2
    .param p0, "phoneId"    # I

    .line 84
    sget-object v0, Lcom/sec/epdg/VodaProvisionManager;->mInstance:[Lcom/sec/epdg/VodaProvisionManager;

    aget-object v1, v0, p0

    if-eqz v1, :cond_0

    .line 85
    aget-object v0, v0, p0

    invoke-direct {v0}, Lcom/sec/epdg/VodaProvisionManager;->deInit()V

    .line 86
    sget-object v0, Lcom/sec/epdg/VodaProvisionManager;->mInstance:[Lcom/sec/epdg/VodaProvisionManager;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    .line 88
    :cond_0
    return-void
.end method

.method public static getInstance(ILandroid/content/Context;)Lcom/sec/epdg/VodaProvisionManager;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    sget v0, Lcom/sec/epdg/VodaProvisionManager;->PHONE_SIZE:I

    if-lt p0, v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/sec/epdg/VodaProvisionManager;->getInstance(ILandroid/content/Context;)Lcom/sec/epdg/VodaProvisionManager;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcom/sec/epdg/VodaProvisionManager;->mInstance:[Lcom/sec/epdg/VodaProvisionManager;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Lcom/sec/epdg/VodaProvisionManager;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/VodaProvisionManager;-><init>(ILandroid/content/Context;)V

    aput-object v1, v0, p0

    .line 44
    :cond_1
    sget-object v0, Lcom/sec/epdg/VodaProvisionManager;->mInstance:[Lcom/sec/epdg/VodaProvisionManager;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public getFqdn()Ljava/lang/String;
    .locals 4

    .line 67
    iget v0, p0, Lcom/sec/epdg/VodaProvisionManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/sec/epdg/VodaProvisionManager;->TAG:Ljava/lang/String;

    const-string v2, "getFqdn : null IMSI"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, ""

    return-object v1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/VodaProvisionManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "sms_provision"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "NoEpdgServerIp"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "fqdn":Ljava/lang/String;
    return-object v2
.end method

.method public getIsProvisioning()Z
    .locals 7

    .line 48
    iget v0, p0, Lcom/sec/epdg/VodaProvisionManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    iget-object v2, p0, Lcom/sec/epdg/VodaProvisionManager;->TAG:Ljava/lang/String;

    const-string v3, "getIsProvisioning : null IMSI"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v1

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/VodaProvisionManager;->mContext:Landroid/content/Context;

    const-string v3, "sms_provision"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 57
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "NoEpdgServerIp"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "fqdn":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 59
    .local v2, "result":Z
    iget-object v4, p0, Lcom/sec/epdg/VodaProvisionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIsProvisioning : imsi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Suppressed"

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", fqdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", provisioning : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v2
.end method
