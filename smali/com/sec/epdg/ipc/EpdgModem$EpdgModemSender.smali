.class Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;
.super Landroid/os/Handler;
.source "EpdgModem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ipc/EpdgModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgModemSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/ipc/EpdgModem;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/ipc/EpdgModem;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 210
    iput-object p1, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    .line 211
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 212
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 222
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 224
    .local v0, "data":[B
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v1}, Lcom/sec/epdg/ipc/EpdgModem;->access$000(Lcom/sec/epdg/ipc/EpdgModem;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgModemSender Handler received Unknown Message code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v1}, Lcom/sec/epdg/ipc/EpdgModem;->access$200(Lcom/sec/epdg/ipc/EpdgModem;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v1

    .line 227
    .local v1, "secChannelProxy":Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    if-eqz v1, :cond_1

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-static {v2}, Lcom/sec/epdg/ipc/EpdgModem;->access$000(Lcom/sec/epdg/ipc/EpdgModem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EpdgModemSender(): send"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgModem;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->send(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    const-string v4, "send"

    invoke-virtual {v3, v4, v2}, Lcom/sec/epdg/ipc/EpdgModem;->handleSecChannelProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 242
    .end local v1    # "secChannelProxy":Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 218
    return-void
.end method
