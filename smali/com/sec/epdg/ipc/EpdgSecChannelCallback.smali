.class public Lcom/sec/epdg/ipc/EpdgSecChannelCallback;
.super Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback$Stub;
.source "EpdgSecChannelCallback.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "EpdgSecChannelCallback"


# instance fields
.field private final mEpdgModem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/epdg/ipc/EpdgModem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/epdg/ipc/EpdgModem;)V
    .locals 1
    .param p1, "epdgModem"    # Lcom/sec/epdg/ipc/EpdgModem;

    .line 12
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback$Stub;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;->mEpdgModem:Ljava/lang/ref/WeakReference;

    .line 14
    return-void
.end method


# virtual methods
.method public deInitialize()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;->mEpdgModem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 18
    return-void
.end method

.method public receive(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "EpdgSecChannelCallback"

    const-string v1, "receive"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;->mEpdgModem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 23
    return-void

    .line 26
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/sec/epdg/ipc/EpdgModem;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 28
    .local v1, "response":[B
    if-eqz v1, :cond_1

    .line 29
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;->mEpdgModem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/ipc/EpdgModem;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/sec/epdg/ipc/EpdgModem;->receive([BI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "response":[B
    :cond_1
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
