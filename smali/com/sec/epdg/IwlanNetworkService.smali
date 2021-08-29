.class public Lcom/sec/epdg/IwlanNetworkService;
.super Landroid/telephony/NetworkService;
.source "IwlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final GET_PS_REGISTRATION_STATE_DONE:I = 0x1

.field private static final NETWORK_REGISTRATION_STATE_CHANGED:I = 0x2

.field private static SUB_TAG:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/epdg/IwlanNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/IwlanNetworkService;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/telephony/NetworkService;-><init>()V

    .line 32
    sget-object v0, Lcom/sec/epdg/IwlanNetworkService;->SUB_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/epdg/IwlanNetworkService;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/IwlanNetworkService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IwlanNetworkService;

    .line 28
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/epdg/IwlanNetworkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IwlanNetworkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/sec/epdg/IwlanNetworkService;->TAG:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/sec/epdg/IwlanNetworkService;->SUB_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
    .locals 3
    .param p1, "slotIndex"    # I

    .line 201
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWlan network service created for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sec/epdg/IwlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to IWlan network service with invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/IwlanNetworkService$IwlanNetworkServiceProvider;-><init>(Lcom/sec/epdg/IwlanNetworkService;I)V

    return-object v0
.end method
