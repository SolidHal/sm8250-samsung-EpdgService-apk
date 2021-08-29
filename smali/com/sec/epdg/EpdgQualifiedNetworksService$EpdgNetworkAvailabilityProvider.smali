.class Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;
.super Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.source "EpdgQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgQualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgNetworkAvailabilityProvider"
.end annotation


# instance fields
.field private final mAdapter:Lcom/sec/epdg/TelephonyAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/sec/epdg/EpdgQualifiedNetworksService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgQualifiedNetworksService;I)V
    .locals 4
    .param p2, "slotId"    # I

    .line 58
    iput-object p1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->this$0:Lcom/sec/epdg/EpdgQualifiedNetworksService;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;-><init>(Landroid/telephony/data/QualifiedNetworksService;I)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->getSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/TelephonyAdapter;->getInstance(I)Lcom/sec/epdg/TelephonyAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/epdg/EpdgQualifiedNetworksService;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/epdg/EpdgQualifiedNetworksService;->access$002(Lcom/sec/epdg/EpdgQualifiedNetworksService;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/sec/epdg/EpdgQualifiedNetworksService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 65
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mLooper:Landroid/os/Looper;

    .line 67
    new-instance v0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider$1;

    iget-object v1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider$1;-><init>(Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;Landroid/os/Looper;Lcom/sec/epdg/EpdgQualifiedNetworksService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    .line 86
    const/4 p1, 0x1

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 87
    .local p1, "message":Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->getSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/TelephonyAdapter;->getQualifedNetworks(ILandroid/os/Message;)V

    .line 88
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    iget-object v1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/TelephonyAdapter;->registerForQualifiedNetworksChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    iget-object v1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/TelephonyAdapter;->registerForHandoverEnableChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;Lcom/sec/epdg/DataType/MapconInformation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;
    .param p1, "x1"    # Lcom/sec/epdg/DataType/MapconInformation;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->updateQualifiedNetworks(Lcom/sec/epdg/DataType/MapconInformation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->updateHandOverEnabled(I)V

    return-void
.end method

.method private getAvailableNetworks(ILjava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 133
    .local p2, "priority":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "networks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 135
    .local v1, "mode":I
    const/4 v2, 0x5

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 135
    const/4 v3, 0x3

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 135
    packed-switch v1, :pswitch_data_0

    .line 159
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :pswitch_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    goto :goto_0

    .line 149
    :pswitch_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_0

    .line 142
    :pswitch_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    goto :goto_0

    .line 137
    :pswitch_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    nop

    .line 162
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateHandOverEnabled(I)V
    .locals 0
    .param p1, "apnType"    # I

    .line 130
    return-void
.end method

.method private updateQualifiedNetworks(Lcom/sec/epdg/DataType/MapconInformation;)V
    .locals 8
    .param p1, "mapconInfo"    # Lcom/sec/epdg/DataType/MapconInformation;

    .line 108
    sget-object v0, Lcom/sec/epdg/DataType/MapconInformation;->SUPPORTED_APN_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 109
    .local v3, "supportedApnType":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v4, "qualifiedNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v5, p1, Lcom/sec/epdg/DataType/MapconInformation;->supportedTypes:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_2

    .line 111
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    iget-object v6, p1, Lcom/sec/epdg/DataType/MapconInformation;->priority:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 112
    const/4 v6, 0x1

    shl-int/2addr v6, v5

    .line 113
    .local v6, "mask":I
    and-int v7, v3, v6

    if-ne v7, v6, :cond_0

    .line 114
    iget-object v7, p1, Lcom/sec/epdg/DataType/MapconInformation;->priority:Ljava/util/List;

    invoke-direct {p0, v5, v7}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->getAvailableNetworks(ILjava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 115
    goto :goto_2

    .line 111
    .end local v6    # "mask":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 119
    .end local v5    # "index":I
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 120
    invoke-virtual {p0, v3, v4}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->updateQualifiedNetworkTypes(ILjava/util/List;)V

    .line 108
    .end local v3    # "supportedApnType":I
    .end local v4    # "qualifiedNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 168
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    iget-object v1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/TelephonyAdapter;->unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V

    .line 169
    iget-object v0, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mAdapter:Lcom/sec/epdg/TelephonyAdapter;

    iget-object v1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/TelephonyAdapter;->unregisterForHandoverEnableChanged(Landroid/os/Handler;)V

    .line 170
    return-void
.end method
