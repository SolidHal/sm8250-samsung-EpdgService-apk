.class public Lcom/sec/epdg/EpdgQualifiedNetworksService;
.super Landroid/telephony/data/QualifiedNetworksService;
.source "EpdgQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;
    }
.end annotation


# static fields
.field private static final GET_QUALIFIED_NETWORKS_DONE:I = 0x1

.field private static final HANDOVER_ENABLE_CHANGED:I = 0x3

.field private static final IWLAN:I = 0x0

.field private static final IWLAN_LTE:I = 0x1

.field private static final IWLAN_LTE_EHRPD:I = 0x2

.field private static final LTE:I = 0x5

.field private static final LTE_EHRPD:I = 0x6

.field private static final LTE_EHRPD_IWLAN:I = 0x7

.field private static final LTE_IWLAN:I = 0x3

.field private static final LTE_IWLAN_EHRPD:I = 0x4

.field private static final QUALIFIED_NETWORKS_CHANGED:I = 0x2

.field private static SUB_TAG:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/epdg/EpdgQualifiedNetworksService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgQualifiedNetworksService;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/telephony/data/QualifiedNetworksService;-><init>()V

    .line 25
    sget-object v0, Lcom/sec/epdg/EpdgQualifiedNetworksService;->SUB_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/epdg/EpdgQualifiedNetworksService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgQualifiedNetworksService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService;->TAG:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/sec/epdg/EpdgQualifiedNetworksService;->SUB_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
    .locals 3
    .param p1, "slotIndex"    # I

    .line 184
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Qualified Network Availability Provider created for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to Qualified Network Availability Provider with invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;-><init>(Lcom/sec/epdg/EpdgQualifiedNetworksService;I)V

    return-object v0
.end method
