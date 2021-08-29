.class Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;
.super Landroid/os/Handler;
.source "EpdgModem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ipc/EpdgModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecChannelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/ipc/EpdgModem;


# direct methods
.method constructor <init>(Lcom/sec/epdg/ipc/EpdgModem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/ipc/EpdgModem;

    .line 44
    iput-object p1, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgModem;->access$000(Lcom/sec/epdg/ipc/EpdgModem;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_SEC_CHANNEL_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSecChannelProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    iget-object v2, v2, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    iget-object v2, v2, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgModem;->access$100(Lcom/sec/epdg/ipc/EpdgModem;)V

    .line 55
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgModem;->access$200(Lcom/sec/epdg/ipc/EpdgModem;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 59
    :cond_1
    :goto_0
    return-void
.end method
