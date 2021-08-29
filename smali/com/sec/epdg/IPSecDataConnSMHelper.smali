.class public Lcom/sec/epdg/IPSecDataConnSMHelper;
.super Ljava/lang/Object;
.source "IPSecDataConnSMHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;
    }
.end annotation


# static fields
.field private static final TIMER_QUALITY_DPD_EXPIRED:I = 0x3e8

.field private static mDpdHandler:[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

.field private static mHandlerThread:[Landroid/os/HandlerThread;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDpdBegin:J

.field private final mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

.field private mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

.field private mIsHandOver:Z

.field private mIsNeedLteTimer:Z

.field mIsWifiConnected:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mPhoneId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private final mePdgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    sput-object v1, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdHandler:[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    .line 48
    new-array v0, v0, [Landroid/os/HandlerThread;

    sput-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mHandlerThread:[Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/EpdgSubScription;Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I
    .param p4, "subscription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p5, "ipsecSM"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsNeedLteTimer:Z

    .line 44
    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsHandOver:Z

    .line 46
    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsWifiConnected:Z

    .line 427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdBegin:J

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [IPSECDATACONNSM_HP]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    .line 54
    iput p3, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    .line 55
    iput-object p4, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 56
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/IPSecAdapterForEris;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    .line 57
    invoke-virtual {v0, p3, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->setHandler(ILandroid/os/Handler;)V

    .line 58
    iput-object p5, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    .line 59
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mNMService:Landroid/os/INetworkManagementService;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/EpdgSubScription;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 34
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/IPSecDataConnSMHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 34
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdHandler:[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 34
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/IPSecDataConnSMHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 34
    iget-wide v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdBegin:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/epdg/IPSecDataConnSMHelper;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSMHelper;
    .param p1, "x1"    # J

    .line 34
    iput-wide p1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdBegin:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 34
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/IPSecDataConnSMHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 34
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/epdg/IPSecDataConnSMHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 34
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;
    .locals 1
    .param p1, "phoneId"    # I

    .line 298
    invoke-static {p1}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    return-object v0
.end method

.method private handleRfcIkeErrorForCarrier(I)V
    .locals 5
    .param p1, "ikeError"    # I

    .line 323
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRfcIkeErrorForCarrier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const/16 v0, 0x2001

    if-ne p1, v0, :cond_4

    .line 326
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->setIsEpdgConnBlocked()V

    goto :goto_0

    .line 328
    :cond_0
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2af9

    if-eqz v0, :cond_2

    .line 329
    if-ne p1, v2, :cond_1

    .line 330
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->setNeedToResetThrottle(Z)V

    goto :goto_0

    .line 331
    :cond_1
    const/16 v0, 0x2af8

    if-ne p1, v0, :cond_4

    .line 332
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->setRoamingNotAllowedError(Z)V

    goto :goto_0

    .line 334
    :cond_2
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v3, "Telefonica_DE"

    const-string v4, "SFR_FR"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    const/16 v0, 0x232e

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_3

    const/16 v0, 0x2b03

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 343
    :cond_3
    :pswitch_0
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->setNeedToResetThrottle(Z)V

    .line 349
    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method InternalConnectRequest(I)V
    .locals 7
    .param p1, "conncid"    # I

    .line 369
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    .line 370
    .local v0, "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 371
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 372
    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getPduSessionId()I

    move-result v6

    .line 370
    move-object v1, p0

    move v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/epdg/IPSecDataConnSMHelper;->postConnectMessage(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    return-void
.end method

.method InternalDisconnectRequest(I)V
    .locals 0
    .param p1, "conncid"    # I

    .line 365
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->postDisconnectMessage(I)V

    .line 366
    return-void
.end method

.method checkConnection(II)V
    .locals 0
    .param p1, "timeout"    # I
    .param p2, "rilCid"    # I

    .line 106
    invoke-virtual {p0, p2, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->postCheckConnectionMessage(II)V

    .line 107
    return-void
.end method

.method checkDnsRetryRequired(ZI)Z
    .locals 5
    .param p1, "dnsCheck"    # Z
    .param p2, "rilcid"    # I

    .line 265
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    .line 266
    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->checkCachedEpdgServerIpForDnsQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    return v1

    .line 271
    :cond_0
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleCount(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "count":I
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throttle Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    .line 274
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    const-string v3, "mCurrentTimer not correctly updated inside Throttle Manager."

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    sget v2, Lcom/sec/epdg/Constants/EpdgConstants;->DNS_RETRY_THROTTLE_COUNTER:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 277
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p2, v2}, Lcom/sec/epdg/Constants/EpdgCommands;->postDnsRetryRequest(Landroid/os/Handler;ILjava/lang/Boolean;)V

    .line 278
    return v3

    .line 279
    :cond_2
    if-eqz p1, :cond_3

    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    const-string v2, "DNS TTL check might be REQUIRED."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p2, v2}, Lcom/sec/epdg/Constants/EpdgCommands;->postDnsRetryRequest(Landroid/os/Handler;ILjava/lang/Boolean;)V

    .line 282
    return v3

    .line 284
    :cond_3
    return v1
.end method

.method public deInitialize()V
    .locals 4

    .line 534
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdHandler:[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 535
    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 536
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdHandler:[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    aput-object v3, v0, v1

    .line 538
    :cond_0
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mHandlerThread:[Landroid/os/HandlerThread;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 539
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 540
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mHandlerThread:[Landroid/os/HandlerThread;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    aput-object v3, v0, v1

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecAdapterForEris;->deinitialize()V

    .line 543
    return-void
.end method

.method disconnectEpdgConnection(ZI)V
    .locals 3
    .param p1, "w2lhandover"    # Z
    .param p2, "rilcid"    # I

    .line 288
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnect Epdg Connection after W2L : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, p2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->postLocalDisconnectMessage(I)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->postDisconnectMessage(I)V

    .line 295
    :goto_0
    return-void
.end method

.method public getDPDHandler()Landroid/os/Handler;
    .locals 2

    .line 64
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdHandler:[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method getEnableHwKeepalive()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecAdapterForEris;->getEnableHwKeepalive()Z

    move-result v0

    return v0
.end method

.method getPermanentErrorCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 352
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->getPermanentErrorCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getThrottleInterval()I
    .locals 2

    .line 302
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleInterval(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method handleDnsResolutionFail(I)V
    .locals 1
    .param p1, "conncid"    # I

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 377
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/sec/epdg/Constants/EpdgCommands;->postEpdgNotAvailableForDnsFailure(Landroid/os/Handler;)V

    .line 378
    return-void
.end method

.method handleEnableEpdgFailure(III)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "handoverAct"    # I
    .param p3, "handoverState"    # I

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleTCRules(ZI)Z

    .line 240
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/sec/epdg/Constants/EpdgCommands;->postEnableEpdgFailure(Landroid/os/Handler;I)V

    .line 241
    return-void
.end method

.method handleTCRules(ZI)Z
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "cid"    # I

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "error":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    const-string v2, "mIWlanApnContext null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending iptables rules mIWlanApnContext.getbIprulesStatus() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v3, v3, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 193
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 196
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v2, v2, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    const-string v2, "TCRules are enable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 200
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 201
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mNMService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    .line 202
    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 203
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->isRmnetMhiInterfaceModel()Z

    move-result v4

    .line 201
    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->enableEpdg(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while enabling epdg routes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    const/4 v0, 0x1

    .line 209
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v1

    if-nez v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    const-string v2, "TCRules are not enable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v1, v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 220
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mNMService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    .line 221
    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    goto :goto_1

    .line 222
    :catch_1
    move-exception v1

    .line 223
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while disabling epdg routes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method handleUpdateL2WHandoverDoneWithoutTcFailed()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/sec/epdg/Constants/EpdgCommands;->postUpdateL2WHandoverDoneWithoutTcFailed(Landroid/os/Handler;)V

    .line 248
    return-void
.end method

.method handleUpdateL2WHandoverFailByNoResponse()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/sec/epdg/Constants/EpdgCommands;->postUpdateL2WHandoverFailByNoResponse(Landroid/os/Handler;)V

    .line 255
    return-void
.end method

.method handleUpdateL2WHandoverFailByThrottleState()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/sec/epdg/Constants/EpdgCommands;->postUpdateL2WHandoverFailByThrottleState(Landroid/os/Handler;)V

    .line 262
    return-void
.end method

.method handleWifiStateChange(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 360
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 361
    .local v0, "isWifiConnected":Z
    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsWifiConnected:Z

    .line 362
    return-void
.end method

.method informHandoverFailureToRilAndFramework(IZ)V
    .locals 9
    .param p1, "cid"    # I
    .param p2, "skipNoti"    # Z

    .line 164
    new-instance v8, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;-><init>(Landroid/os/Handler;ILjava/lang/String;ZZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;I)V

    .line 165
    invoke-virtual {v8}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->post()V

    .line 166
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 174
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 176
    :cond_1
    return-void
.end method

.method informHandoverFailureToRilAndFrameworkWOIntent(I)V
    .locals 9
    .param p1, "cid"    # I

    .line 179
    new-instance v8, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;-><init>(Landroid/os/Handler;ILjava/lang/String;ZZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;I)V

    .line 180
    invoke-virtual {v8}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->post()V

    .line 181
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method isHandOver()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsHandOver:Z

    return v0
.end method

.method isNeedLteTimer()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsNeedLteTimer:Z

    return v0
.end method

.method isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError;

    .line 311
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)Z

    move-result v0

    return v0
.end method

.method isThrottleTimerRunning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 356
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method makeAttachReq()Landroid/os/Message;
    .locals 7

    .line 126
    new-instance v6, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    .line 127
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 128
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 129
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    .local v0, "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    .line 132
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 133
    .local v1, "apnAttachReq":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 134
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 136
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 137
    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    const-string v3, "RJIL_IN"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    const-string v3, "Setting arg2 as 1 to avoid DNS query"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 141
    :cond_0
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    return-object v1
.end method

.method notifyEpdgStatusToHandoverW2M(Ljava/lang/String;)V
    .locals 3
    .param p1, "apntype"    # Ljava/lang/String;

    .line 419
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyEpdgStatusToHandoverW2M: getApnType() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 422
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x56

    iput v1, v0, Landroid/os/Message;->what:I

    .line 423
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 425
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method notifyL2WRegistrant(Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 158
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    .line 160
    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v0, p1, v1, v2}, Lcom/sec/epdg/Constants/EpdgCommands;->postNotifyRegistrants(Landroid/os/Handler;IILjava/lang/String;)V

    .line 161
    return-void
.end method

.method notifyW2LRegistrant(Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 152
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    .line 154
    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v0, p1, v1, v2}, Lcom/sec/epdg/Constants/EpdgCommands;->postNotifyRegistrants(Landroid/os/Handler;IILjava/lang/String;)V

    .line 155
    return-void
.end method

.method postCheckConnectionMessage(II)V
    .locals 2
    .param p1, "rilCid"    # I
    .param p2, "timeout"    # I

    .line 102
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/epdg/IPSecAdapterForEris;->postCheckConnectionMessage(IILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method postConnectMessage(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "rilCid"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "ipv4addr"    # Ljava/lang/String;
    .param p4, "ipv6addr"    # Ljava/lang/String;
    .param p5, "pdusessionid"    # I

    .line 110
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/epdg/IPSecAdapterForEris;->postConnectMessage(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    return-void
.end method

.method postDisconnectMessage(I)V
    .locals 3
    .param p1, "rilCid"    # I

    .line 98
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->postDisconnectMessage(IILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method postLocalDisconnectMessage(I)V
    .locals 3
    .param p1, "rilCid"    # I

    .line 94
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->postLocalDisconnectMessage(IILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method resetThrottleState()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    const-string v1, "Reset throttle state of State Machine"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecDataConnSM:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method sendEventForTepdgLteTimerStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "apntype"    # Ljava/lang/String;

    .line 400
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x5d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 403
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 406
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 407
    return-void
.end method

.method sendEventForTepdgTimerStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "apntype"    # Ljava/lang/String;

    .line 410
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 412
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 413
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 416
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method setEpdgInterfaceDropRule(ZI)V
    .locals 4
    .param p1, "add"    # Z
    .param p2, "cid"    # I

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mNMService:Landroid/os/INetworkManagementService;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " while setEpdgInterfaceDropRule"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method setIsHandOver(Z)V
    .locals 3
    .param p1, "isHandOver"    # Z

    .line 147
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsHandOver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsHandOver:Z

    .line 149
    return-void
.end method

.method setIsNeedLteTimer(Z)V
    .locals 0
    .param p1, "isNeedLteTimer"    # Z

    .line 118
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIsNeedLteTimer:Z

    .line 119
    return-void
.end method

.method public startDPDHandler()V
    .locals 5

    .line 68
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mHandlerThread:[Landroid/os/HandlerThread;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "DpdHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 69
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mHandlerThread:[Landroid/os/HandlerThread;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdHandler:[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    new-instance v2, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    sget-object v3, Lcom/sec/epdg/IPSecDataConnSMHelper;->mHandlerThread:[Landroid/os/HandlerThread;

    iget v4, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;-><init>(Lcom/sec/epdg/IPSecDataConnSMHelper;Landroid/os/Looper;)V

    aput-object v2, v0, v1

    .line 71
    return-void
.end method

.method startEspCheck(II)V
    .locals 2
    .param p1, "interval"    # I
    .param p2, "rilCid"    # I

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/sec/epdg/IPSecAdapterForEris;->postStartCheckEspMessage(IILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public stopDPDHandler()V
    .locals 3

    .line 74
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mHandlerThread:[Landroid/os/HandlerThread;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 75
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 76
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mHandlerThread:[Landroid/os/HandlerThread;

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 77
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mDpdHandler:[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    aput-object v2, v0, v1

    .line 79
    :cond_0
    return-void
.end method

.method stopEspCheck(I)V
    .locals 2
    .param p1, "rilCid"    # I

    .line 86
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/epdg/IPSecAdapterForEris;->postStopCheckEspMessage(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method updatePermanentFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePermanentFail, apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/sec/epdg/Constants/EpdgCommands;->postEpdgNotAvailableForOnDemandFailure(Landroid/os/Handler;Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method

.method updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "iwlanError"    # Lcom/sec/epdg/ErrorCode/IWlanError;
    .param p3, "backoffTimer"    # I

    .line 315
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v0

    .line 317
    .local v0, "ikeErrorCode":I
    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleRfcIkeErrorForCarrier(I)V

    .line 319
    .end local v0    # "ikeErrorCode":I
    :cond_0
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleController(I)Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    .line 320
    return-void
.end method
