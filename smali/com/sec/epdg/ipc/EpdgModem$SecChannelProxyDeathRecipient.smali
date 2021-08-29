.class final Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;
.super Ljava/lang/Object;
.source "EpdgModem.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ipc/EpdgModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecChannelProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/ipc/EpdgModem;


# direct methods
.method constructor <init>(Lcom/sec/epdg/ipc/EpdgModem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/ipc/EpdgModem;

    .line 62
    iput-object p1, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 65
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgModem;->access$000(Lcom/sec/epdg/ipc/EpdgModem;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v2}, Lcom/sec/epdg/ipc/EpdgModem;->access$300(Lcom/sec/epdg/ipc/EpdgModem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgModem;->access$000(Lcom/sec/epdg/ipc/EpdgModem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serviceDied"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    iget-object v0, v0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    iget-object v1, v1, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 69
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    return-void
.end method
