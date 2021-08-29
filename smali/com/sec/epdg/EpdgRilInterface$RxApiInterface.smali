.class public Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;
.super Ljava/lang/Object;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RxApiInterface"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPduSessionIdUpdate(Landroid/os/Handler;I)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "pduSessionId"    # I

    .line 53
    nop

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    const/16 v1, 0x3f0

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    return-void
.end method

.method public static onRecvApnAttachRequest(Landroid/os/Handler;Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "req"    # Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    .line 28
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0x2b

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    return-void
.end method

.method public static onRecvApnDetachRequest(Landroid/os/Handler;Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "req"    # Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    .line 34
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0x2c

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    return-void
.end method

.method public static onRecvApnHandoverResult(Landroid/os/Handler;Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "resp"    # Lcom/sec/epdg/DataType/ApnData$ApnHandoverResponse;

    .line 22
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0x2a

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    return-void
.end method

.method public static onRecvEpdgStatusQuery(Landroid/os/Handler;I)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "epdgAvailable"    # I

    .line 40
    const/16 v0, 0x35

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    return-void
.end method

.method public static onRecvIilSsacUpdate(Landroid/os/Handler;Lcom/sec/epdg/DataType/SsacInfo;)V
    .locals 2
    .param p0, "hdr"    # Landroid/os/Handler;
    .param p1, "ssacInfo"    # Lcom/sec/epdg/DataType/SsacInfo;

    .line 46
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0x4a

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    return-void
.end method
