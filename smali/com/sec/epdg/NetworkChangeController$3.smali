.class Lcom/sec/epdg/NetworkChangeController$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/NetworkChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/NetworkChangeController;


# direct methods
.method constructor <init>(Lcom/sec/epdg/NetworkChangeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/NetworkChangeController;

    .line 1031
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$3;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1034
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$3;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAvailable(): Epdn connected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$3;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setEpdnConnected(Z)V

    .line 1036
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1040
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$3;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLost(): Epdn disconnected"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$3;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setEpdnConnected(Z)V

    .line 1042
    return-void
.end method
