.class Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider$1;
.super Landroid/os/Handler;
.source "EpdgQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;-><init>(Lcom/sec/epdg/EpdgQualifiedNetworksService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;

.field final synthetic val$this$0:Lcom/sec/epdg/EpdgQualifiedNetworksService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;Landroid/os/Looper;Lcom/sec/epdg/EpdgQualifiedNetworksService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 67
    iput-object p1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider$1;->this$1:Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;

    iput-object p3, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider$1;->val$this$0:Lcom/sec/epdg/EpdgQualifiedNetworksService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 72
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 81
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider$1;->this$1:Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->access$300(Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;I)V

    .line 79
    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider$1;->this$1:Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/epdg/DataType/MapconInformation;

    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;->access$200(Lcom/sec/epdg/EpdgQualifiedNetworksService$EpdgNetworkAvailabilityProvider;Lcom/sec/epdg/DataType/MapconInformation;)V

    .line 76
    nop

    .line 83
    :goto_0
    return-void
.end method
