.class Lcom/sec/epdg/NetworkChangeController$6;
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

    .line 1127
    iput-object p1, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1130
    if-eqz p1, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    iget-object v0, v0, Lcom/sec/epdg/NetworkChangeController;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1132
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1134
    .local v1, "networkType":I
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 1135
    .local v2, "networkState":Landroid/net/NetworkInfo$State;
    iget-object v3, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v3}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEntitlementCallback() networkType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " networkState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_0

    .line 1137
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v4}, Lcom/sec/epdg/NetworkChangeController;->access$400(Lcom/sec/epdg/NetworkChangeController;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->checkMDN()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    .line 1138
    invoke-static {v4}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgEntitlement;->getEntitlementStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 1139
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v4}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgEntitlement;->resetEntitlementCount()V

    .line 1140
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v4}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgEntitlement;->startCheckEntitlement()I

    .line 1141
    iget-object v4, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v4}, Lcom/sec/epdg/NetworkChangeController;->access$300(Lcom/sec/epdg/NetworkChangeController;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/epdg/EpdgEntitlement;->setEntitlementStatus(I)V

    .line 1146
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    .end local v1    # "networkType":I
    .end local v2    # "networkState":Landroid/net/NetworkInfo$State;
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1150
    iget-object v0, p0, Lcom/sec/epdg/NetworkChangeController$6;->this$0:Lcom/sec/epdg/NetworkChangeController;

    invoke-static {v0}, Lcom/sec/epdg/NetworkChangeController;->access$200(Lcom/sec/epdg/NetworkChangeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mEntitlementCallback onLost()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    return-void
.end method
