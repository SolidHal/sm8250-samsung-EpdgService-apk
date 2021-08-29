.class public Lcom/sec/epdg/mapcon/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final OPTI_TAG:Ljava/lang/String; = "[HO_OPTIMIZATION]"

.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

.field private static mInstance2:Lcom/sec/epdg/mapcon/PolicyManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

.field private mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

.field private mPhoneId:I

.field private mSubId:I

.field private mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "[PolicyMgr]"

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->SUB_TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    return-void
.end method

.method private constructor <init>(IILandroid/content/Context;Lcom/sec/epdg/interfaces/IEpdgSubScription;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    .line 24
    iput-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    .line 56
    iput p1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    .line 57
    iput p2, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 58
    iput-object p3, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconTable;->createInstance(I)Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    .line 60
    iget v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/mapcon/IfomTable;->createInstance(I)Lcom/sec/epdg/mapcon/IfomTable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    .line 61
    iput-object p4, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 62
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 63
    return-void
.end method

.method public static declared-synchronized createInstance(IILandroid/content/Context;Lcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/mapcon/PolicyManager;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "subId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;

    const-class v0, Lcom/sec/epdg/mapcon/PolicyManager;

    monitor-enter v0

    .line 32
    if-nez p0, :cond_0

    .line 33
    :try_start_0
    new-instance v1, Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/mapcon/PolicyManager;-><init>(IILandroid/content/Context;Lcom/sec/epdg/interfaces/IEpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    return-object v1

    .line 36
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/mapcon/PolicyManager;-><init>(IILandroid/content/Context;Lcom/sec/epdg/interfaces/IEpdgSubScription;)V

    sput-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance2:Lcom/sec/epdg/mapcon/PolicyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit v0

    return-object v1

    .line 31
    .end local p0    # "phoneId":I
    .end local p1    # "subId":I
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "subscription":Lcom/sec/epdg/interfaces/IEpdgSubScription;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/mapcon/PolicyManager;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/mapcon/PolicyManager;

    monitor-enter v0

    .line 42
    if-nez p0, :cond_0

    .line 43
    :try_start_0
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance2:Lcom/sec/epdg/mapcon/PolicyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getIsCellularAvailable()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/interfaces/INetworkChangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/INetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    return v0
.end method

.method private getIsLteAvailable()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getIsLteAvailable()Z

    move-result v0

    return v0
.end method

.method private getIsVoLteEnabled()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isVolteEnabled()Z

    move-result v0

    return v0
.end method

.method private getIsVoWifiEnabled()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isVoWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private getMobileDataRat()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/interfaces/INetworkChangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/INetworkChangeController;->getMobileDataRat()I

    move-result v0

    return v0
.end method

.method private getVoiceRat()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/interfaces/INetworkChangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/INetworkChangeController;->getVoiceRat()I

    move-result v0

    return v0
.end method

.method private isIfomResultToLte(Ljava/lang/String;)Z
    .locals 6
    .param p1, "rule"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HO_OPTIMIZATION]isW2LRecommended(): LTE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") VoWIFI ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") call ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") roaming ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 93
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") VoLTE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") voice rat ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getVoiceRat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") mobile data rat ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMobileDataRat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    .line 99
    .local v0, "result":Z
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMobileDataRat()I

    move-result v1

    const/16 v3, 0xd

    const-string v4, " goes to CS ("

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 101
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isW2LRecommended: weak LTE/CS, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/IfomTable;->shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isW2LRecommended: no LTE, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isW2LRecommended: LTE (good) + VoLTE off + VoWIFI on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 113
    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/interfaces/INetworkChangeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/epdg/interfaces/INetworkChangeController;->isPsOnlyReg()Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    const/4 v0, 0x1

    .line 117
    :cond_3
    :goto_0
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    const/4 v0, 0x0

    .line 120
    :cond_4
    return v0
.end method

.method private isIfomResultToWifi(Ljava/lang/String;)Z
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HO_OPTIMIZATION]isL2WRecommended: LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") roaming ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 181
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") VoLTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") voice rat ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getVoiceRat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") mobile data rat ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMobileDataRat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " should go to WLAN"

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isL2WRecommended: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToWifiInNoLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isL2WRecommended: No LTE but vowifi disabled. WLAN not allowed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getImsCallCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isL2WRecommended: No LTE ,vowifi disabled but not established call exist. WLAN not allowed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isL2WRecommended: No LTE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 203
    :cond_3
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v3, 0xd

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    .line 204
    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/IfomTable;->shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMobileDataRat()I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 207
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v4, 0x12

    if-ne v1, v4, :cond_5

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isL2WRecommended: No LTE&CS or weak LTE&CS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :cond_5
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 211
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 212
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 213
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMobileDataRat()I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 215
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isL2WRecommended: LTE (good) + VoLTE off + no CS + VoWIFI on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_7
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "LTE weak, IPME on L2W recommended for ATT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x1

    .line 221
    :cond_8
    :goto_0
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 222
    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getRtpHandoverCnt()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_9

    .line 223
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "RTP Handover occured over 3 times in same call. block L2W handover and keep LTE"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    .line 226
    :cond_9
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "e911call"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 227
    const/4 v0, 0x1

    .line 230
    :cond_a
    return v0
.end method

.method private isMapconResultToLte(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    .line 125
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HO_OPTIMIZATION]isW2LRecommended(): LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") roaming ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 128
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") VoLTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") voice rat ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getVoiceRat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") data rat ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 131
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") result ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0xd

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 136
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMobileDataRat()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 137
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_0
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    .line 140
    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isStgCdmaOperators()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 146
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMobileDataRat()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 147
    const/4 v0, 0x0

    .line 150
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 151
    const/4 v0, 0x0

    .line 153
    :cond_5
    return v0
.end method

.method private isMapconResultToWifi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v0

    .line 235
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HO_OPTIMIZATION]isL2WRecommended: LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") roaming ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 238
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") VoLTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") voice rat ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getVoiceRat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") data rat ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 241
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") result ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "e911call"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "LTE weak and during e911, L2W recommended for ATT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x1

    .line 248
    :cond_0
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 250
    const/4 v0, 0x1

    .line 252
    :cond_1
    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    .line 253
    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isStgCdmaOperators()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-nez v0, :cond_4

    .line 255
    const/4 v0, 0x1

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 258
    const/4 v0, 0x1

    .line 260
    :cond_5
    return v0
.end method

.method private isWifiCallingEnabled()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public IsLteOnlyAllowedByMapconTable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsWifiOnlyAllowedByMapconTable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized createPolicyTable(Landroid/content/Context;ZZ)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mapcon"    # Z
    .param p3, "appPolicy"    # Z

    monitor-enter p0

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "result":Z
    if-eqz p2, :cond_0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->createMapconTable(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    .line 337
    if-nez v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "error to create MAPCON table"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return v0

    .line 333
    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/sec/epdg/mapcon/PolicyManager;
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "mapcon":Z
    .end local p3    # "appPolicy":Z
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 342
    .restart local v0    # "result":Z
    .restart local p1    # "ctx":Landroid/content/Context;
    .restart local p2    # "mapcon":Z
    .restart local p3    # "appPolicy":Z
    :cond_0
    if-eqz p3, :cond_1

    .line 343
    :try_start_1
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/IfomTable;->createIfomTable(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    .line 344
    if-nez v0, :cond_1

    .line 345
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "error to create IFOM table"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 333
    .end local v0    # "result":Z
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "mapcon":Z
    .end local p3    # "appPolicy":Z
    :goto_0
    monitor-exit p0

    throw p1

    .line 348
    .restart local v0    # "result":Z
    .restart local p0    # "this":Lcom/sec/epdg/mapcon/PolicyManager;
    .restart local p1    # "ctx":Landroid/content/Context;
    .restart local p2    # "mapcon":Z
    .restart local p3    # "appPolicy":Z
    :cond_1
    :goto_1
    monitor-exit p0

    return v0
.end method

.method public deinitialize()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/IfomTable;->deinitialize()V

    .line 440
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconTable;->deinitialize()V

    .line 441
    iget v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 442
    sput-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    goto :goto_0

    .line 444
    :cond_0
    sput-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance2:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 446
    :goto_0
    return-void
.end method

.method public getApnRatPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .line 264
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 265
    .local v0, "result":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    if-nez p1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "getApnRatPolicy(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    return-object v1

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "getApnRatPolicy(): only LTE is allowed RAT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    return-object v1

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->isWifiCallingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "getApnRatPolicy(): Setting disable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    return-object v1

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, " should go to LTE"

    const-string v3, " rule : "

    const-string v4, "getApnRatPolicy: apnType : "

    if-eqz v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HO_OPTIMIZATION]getApnRatPolicy: apnType ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") LTE ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsLteAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") VoWIFI ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") call ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") roaming ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mTelManager:Landroid/telephony/TelephonyManager;

    iget v7, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubId:I

    .line 280
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") VoLTE ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoLteEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") voice rat ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getVoiceRat()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") mobile data rat ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getMobileDataRat()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-static {v1, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    goto :goto_0

    .line 289
    :cond_3
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    goto :goto_0

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 293
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    goto :goto_0

    .line 296
    :cond_5
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 300
    :goto_0
    return-object v0
.end method

.method public getMapconMode()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapconPolicy()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconPolicy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "result":Z
    if-nez p1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isL2WRecommended(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isEpdgAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isL2WRecommended(): EPDG not available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getIsAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isL2WRecommended(): Airplane mode ON"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    invoke-direct {p0, p2}, Lcom/sec/epdg/mapcon/PolicyManager;->isIfomResultToWifi(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 169
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/mapcon/PolicyManager;->isMapconResultToWifi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HO_OPTIMIZATION]isL2WRecommended(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return v0
.end method

.method public isVoWifiPrefByMapconTable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->isVoWifiPref(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "result":Z
    if-nez p1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isW2LRecommended(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsCellularAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isW2LRecommended(): TELEPHONY in service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/epdg/mapcon/PolicyManager;->getIsCellularAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isEpdgAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isW2LRecommended(): EPDG not available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "isW2LRecommended(): only LTE is allowed RAT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-direct {p0, p2}, Lcom/sec/epdg/mapcon/PolicyManager;->isIfomResultToLte(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 82
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/mapcon/PolicyManager;->isMapconResultToLte(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HO_OPTIMIZATION]isW2LRecommended(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return v0
.end method

.method public shouldMoveToLteByMapconTable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldMoveToWifiByMapconTable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/MapconTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/IfomTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 51
    .end local p0    # "this":Lcom/sec/epdg/mapcon/PolicyManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appType"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/IfomTable;->updateIfomTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/Constants/MapconConstants$IfomMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appTypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 407
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/IfomTable;->updateIfomTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/Constants/MapconConstants$IfomMode;)V

    .line 408
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apntype"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/Constants/MapconConstants$MapconMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apntypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 399
    iget-object v0, p0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/Constants/MapconConstants$MapconMode;)V

    .line 400
    return-void
.end method

.method public updatePolicyTable(Ljava/lang/String;IIIZZ[Ljava/lang/String;)V
    .locals 16
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "vowifiSetting"    # I
    .param p3, "wificallpreferred"    # I
    .param p4, "Roamingpreferred"    # I
    .param p5, "volteOn"    # Z
    .param p6, "isRoaming"    # Z
    .param p7, "apnList"    # [Ljava/lang/String;

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-object v4, v0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "updatePolicyTable()"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v4, 0x2

    const/4 v5, 0x1

    move/from16 v6, p2

    if-eq v6, v5, :cond_0

    .line 355
    const/4 v5, 0x4

    .end local p3    # "wificallpreferred":I
    .local v5, "wificallpreferred":I
    goto :goto_1

    .line 356
    .end local v5    # "wificallpreferred":I
    .restart local p3    # "wificallpreferred":I
    :cond_0
    if-eqz p6, :cond_2

    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 357
    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    .line 358
    .end local p3    # "wificallpreferred":I
    .restart local v5    # "wificallpreferred":I
    :goto_0
    if-ne v2, v4, :cond_3

    .line 359
    const/4 v5, 0x5

    goto :goto_1

    .line 362
    .end local v5    # "wificallpreferred":I
    .restart local p3    # "wificallpreferred":I
    :cond_2
    move/from16 v5, p3

    .end local p3    # "wificallpreferred":I
    .restart local v5    # "wificallpreferred":I
    :cond_3
    :goto_1
    invoke-static {v1, v5, v3}, Lcom/sec/epdg/mapcon/PolicyTable;->getMapconPolicy(Ljava/lang/String;IZ)Landroid/content/ContentValues;

    move-result-object v7

    .line 363
    .local v7, "mValues":Landroid/content/ContentValues;
    const-string v8, " is "

    const-string v9, "updatePolicyTable() prefered Order for "

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 364
    invoke-virtual {v7}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 365
    .local v10, "apn":Ljava/lang/String;
    iget-object v11, v0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v11, v0, Lcom/sec/epdg/mapcon/PolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v10, v12}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v10    # "apn":Ljava/lang/String;
    goto :goto_2

    :cond_4
    move-object/from16 v11, p7

    goto :goto_4

    .line 370
    :cond_5
    if-ne v5, v4, :cond_6

    .line 371
    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .local v4, "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    goto :goto_3

    .line 372
    .end local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    :cond_6
    const/4 v4, 0x3

    if-ne v5, v4, :cond_7

    .line 373
    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .restart local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    goto :goto_3

    .line 374
    .end local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    :cond_7
    const/4 v4, 0x4

    if-ne v5, v4, :cond_8

    .line 375
    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .restart local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    goto :goto_3

    .line 376
    .end local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    :cond_8
    const/4 v4, 0x5

    if-ne v5, v4, :cond_9

    .line 377
    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .restart local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    goto :goto_3

    .line 379
    .end local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    :cond_9
    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 381
    .restart local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    :goto_3
    iget-object v10, v0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v10, v0, Lcom/sec/epdg/mapcon/PolicyManager;->mContext:Landroid/content/Context;

    move-object/from16 v11, p7

    invoke-virtual {v0, v10, v11, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/Constants/MapconConstants$MapconMode;)V

    .line 385
    .end local v4    # "preferOrder":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    :goto_4
    invoke-static {v1, v5, v3}, Lcom/sec/epdg/mapcon/PolicyTable;->getIfomPolicy(Ljava/lang/String;IZ)Landroid/content/ContentValues;

    move-result-object v4

    .line 386
    .local v4, "iValues":Landroid/content/ContentValues;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 387
    invoke-virtual {v4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 388
    .local v12, "app":Ljava/lang/String;
    iget-object v13, v0, Lcom/sec/epdg/mapcon/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v13, v0, Lcom/sec/epdg/mapcon/PolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v12, v14}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v12    # "app":Ljava/lang/String;
    goto :goto_5

    .line 392
    :cond_a
    return-void
.end method
