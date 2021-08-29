.class Lcom/sec/erisclient/ErisClient$4;
.super Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;


# direct methods
.method constructor <init>(Lcom/sec/erisclient/ErisClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/erisclient/ErisClient;

    .line 1332
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 5
    .param p1, "error"    # I

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error NAT keepalive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v1, p1}, Lcom/sec/erisclient/ErisClient;->access$1000(Lcom/sec/erisclient/ErisClient;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/erisclient/ErisClient;->access$802(Lcom/sec/erisclient/ErisClient;Z)Z

    .line 1350
    const/16 v0, -0x1e

    if-eq p1, v0, :cond_0

    const/16 v0, -0x1f

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    .line 1351
    invoke-static {v0}, Lcom/sec/erisclient/ErisClient;->access$1100(Lcom/sec/erisclient/ErisClient;)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v0}, Lcom/sec/erisclient/ErisClient;->access$1100(Lcom/sec/erisclient/ErisClient;)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/erisclient/IPSecConnection;->getGateway()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v3}, Lcom/sec/erisclient/ErisClient;->access$1100(Lcom/sec/erisclient/ErisClient;)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/erisclient/ErisClient;->setSwNatKeepalive(Ljava/lang/String;IZ)V

    .line 1353
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/erisclient/ErisClient;->access$1102(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/IPSecConnection;

    .line 1354
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v0, v1}, Lcom/sec/erisclient/ErisClient;->access$902(Lcom/sec/erisclient/ErisClient;Z)Z

    .line 1356
    :cond_1
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 1335
    const-string v0, "ErisClient"

    const-string v1, "start NAT keepalive"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/erisclient/ErisClient;->access$802(Lcom/sec/erisclient/ErisClient;Z)Z

    .line 1337
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-static {v0, v1}, Lcom/sec/erisclient/ErisClient;->access$902(Lcom/sec/erisclient/ErisClient;Z)Z

    .line 1338
    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 1342
    const-string v0, "ErisClient"

    const-string v1, "stop NAT keepalive"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$4;->this$0:Lcom/sec/erisclient/ErisClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/erisclient/ErisClient;->access$802(Lcom/sec/erisclient/ErisClient;Z)Z

    .line 1344
    return-void
.end method
