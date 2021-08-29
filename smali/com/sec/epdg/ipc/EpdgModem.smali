.class public Lcom/sec/epdg/ipc/EpdgModem;
.super Ljava/lang/Object;
.source "EpdgModem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;,
        Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;,
        Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;
    }
.end annotation


# static fields
.field static final EVENT_SEC_CHANNEL_PROXY_DEAD:I = 0x1

.field private static final EVENT_SEND:I = 0x1

.field static final ISECCHANNEL_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field private static final SERVICE_NAME_EPDG:Ljava/lang/String; = "epdgd"

.field private static final SERVICE_NAME_EPDG2:Ljava/lang/String; = "epdgd2"

.field private static SUB_TAG:Ljava/lang/String;

.field private static mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

.field private static mEpdgModemInstance2:Lcom/sec/epdg/ipc/EpdgModem;


# instance fields
.field private TAG:Ljava/lang/String;

.field mEpdgSecChannelCallback:Lcom/sec/epdg/ipc/EpdgSecChannelCallback;

.field private mHandler:Lcom/sec/epdg/ipc/RilToEpdgInterface;

.field private mPhoneId:I

.field final mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

.field volatile mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

.field final mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mSecChannelProxyDeathRecipient:Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;

.field private mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

.field private mSenderThread:Landroid/os/HandlerThread;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "[MODEM]"

    sput-object v0, Lcom/sec/epdg/ipc/EpdgModem;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/os/Handler;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "hdr"    # Landroid/os/Handler;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/ipc/EpdgModem;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->TAG:Ljava/lang/String;

    .line 158
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mPhoneId:I

    .line 159
    if-nez p1, :cond_0

    .line 160
    const-string v0, "epdgd"

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mServiceName:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_0
    const-string v0, "epdgd2"

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mServiceName:Ljava/lang/String;

    .line 164
    :goto_0
    new-instance v0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mPhoneId:I

    invoke-direct {v0, v1, p2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;-><init>(ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mHandler:Lcom/sec/epdg/ipc/RilToEpdgInterface;

    .line 166
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgModemSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSenderThread:Landroid/os/HandlerThread;

    .line 167
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 170
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    invoke-direct {v1, p0, v0}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;-><init>(Lcom/sec/epdg/ipc/EpdgModem;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    .line 172
    new-instance v1, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;

    invoke-direct {v1, p0}, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;-><init>(Lcom/sec/epdg/ipc/EpdgModem;)V

    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgSecChannelCallback:Lcom/sec/epdg/ipc/EpdgSecChannelCallback;

    .line 173
    new-instance v1, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    invoke-direct {v1, p0}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;-><init>(Lcom/sec/epdg/ipc/EpdgModem;)V

    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    .line 174
    new-instance v1, Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;

    invoke-direct {v1, p0}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;-><init>(Lcom/sec/epdg/ipc/EpdgModem;)V

    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyDeathRecipient:Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;

    .line 176
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgModem;->getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/ipc/EpdgModem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/ipc/EpdgModem;

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/ipc/EpdgModem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/ipc/EpdgModem;

    .line 17
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgModem;->resetProxy()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/ipc/EpdgModem;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/ipc/EpdgModem;

    .line 17
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgModem;->getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/ipc/EpdgModem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/ipc/EpdgModem;

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 126
    .local p0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 128
    .local v0, "messageLength":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 130
    .local v1, "lower":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 132
    .local v3, "higher":I
    if-nez v3, :cond_0

    .line 133
    move v0, v1

    goto :goto_0

    .line 135
    :cond_0
    shl-int/lit8 v4, v3, 0x8

    add-int v0, v1, v4

    .line 137
    .end local v1    # "lower":I
    .end local v3    # "higher":I
    :goto_0
    nop

    .line 141
    new-array v1, v0, [B

    .line 142
    .local v1, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    .line 143
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v3

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "i":I
    :cond_1
    return-object v1

    .line 138
    .end local v1    # "ret":[B
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static createInstance(ILandroid/os/Handler;)Lcom/sec/epdg/ipc/EpdgModem;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "hdr"    # Landroid/os/Handler;

    .line 180
    if-nez p0, :cond_1

    .line 181
    sget-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/sec/epdg/ipc/EpdgModem;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgModem;-><init>(ILandroid/os/Handler;)V

    sput-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgModem;->updateEpdgModem(ILandroid/os/Handler;)V

    .line 186
    :goto_0
    sget-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    return-object v0

    .line 188
    :cond_1
    sget-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance2:Lcom/sec/epdg/ipc/EpdgModem;

    if-nez v0, :cond_2

    .line 189
    new-instance v0, Lcom/sec/epdg/ipc/EpdgModem;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgModem;-><init>(ILandroid/os/Handler;)V

    sput-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance2:Lcom/sec/epdg/ipc/EpdgModem;

    goto :goto_1

    .line 191
    :cond_2
    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgModem;->updateEpdgModem(ILandroid/os/Handler;)V

    .line 193
    :goto_1
    sget-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance2:Lcom/sec/epdg/ipc/EpdgModem;

    return-object v0
.end method

.method private deInit()V
    .locals 5

    .line 266
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    invoke-interface {v1, v0}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->setCallback(Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback;)V

    .line 268
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyDeathRecipient:Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->TAG:Ljava/lang/String;

    const-string v2, "getSecChannelProxy: mSecChannelProxy == null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgSecChannelCallback:Lcom/sec/epdg/ipc/EpdgSecChannelCallback;

    invoke-virtual {v1}, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;->deInitialize()V

    .line 278
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 279
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSenderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_2

    .line 277
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 274
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecChannelProxy getService/setCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgSecChannelCallback:Lcom/sec/epdg/ipc/EpdgSecChannelCallback;

    invoke-virtual {v1}, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;->deInitialize()V

    .line 278
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 279
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSenderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    goto :goto_1

    .line 283
    :cond_5
    :goto_2
    return-void

    .line 277
    :goto_3
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgSecChannelCallback:Lcom/sec/epdg/ipc/EpdgSecChannelCallback;

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgSecChannelCallback;->deInitialize()V

    .line 278
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 279
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSenderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 282
    :cond_8
    throw v1
.end method

.method public static getInstance(I)Lcom/sec/epdg/ipc/EpdgModem;
    .locals 1
    .param p0, "phoneId"    # I

    .line 198
    if-nez p0, :cond_0

    .line 199
    sget-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    return-object v0

    .line 201
    :cond_0
    sget-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance2:Lcom/sec/epdg/ipc/EpdgModem;

    return-object v0
.end method

.method private getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    return-object v0

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyDeathRecipient:Lcom/sec/epdg/ipc/EpdgModem$SecChannelProxyDeathRecipient;

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 83
    invoke-interface {v0, v1, v2, v3}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 86
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgSecChannelCallback:Lcom/sec/epdg/ipc/EpdgSecChannelCallback;

    invoke-interface {v0, v1}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->setCallback(Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->TAG:Ljava/lang/String;

    const-string v1, "getSecChannelProxy: mSecChannelProxy == null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 92
    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecChannelProxy getService/setCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 99
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    return-object v0
.end method

.method public static primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 5
    .param p0, "arr"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 151
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v0
.end method

.method private resetProxy()V
    .locals 1

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 110
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 111
    return-void
.end method

.method private send([B)V
    .locals 2
    .param p1, "rr"    # [B

    .line 247
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void
.end method

.method private updateEpdgModem(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "hdr"    # Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;-><init>(ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mHandler:Lcom/sec/epdg/ipc/RilToEpdgInterface;

    .line 207
    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 286
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {v0}, Lcom/sec/epdg/ipc/EpdgModem;->deInit()V

    .line 288
    sput-object v1, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    goto :goto_0

    .line 289
    :cond_0
    sget-object v0, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance2:Lcom/sec/epdg/ipc/EpdgModem;

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {v0}, Lcom/sec/epdg/ipc/EpdgModem;->deInit()V

    .line 291
    sput-object v1, Lcom/sec/epdg/ipc/EpdgModem;->mEpdgModemInstance2:Lcom/sec/epdg/ipc/EpdgModem;

    .line 293
    :cond_1
    :goto_0
    return-void
.end method

.method handleSecChannelProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 114
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgModem;->resetProxy()V

    .line 119
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelHandler:Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;

    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgModem;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 119
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgModem$SecChannelHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    return-void
.end method

.method receive([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .line 252
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem;->mHandler:Lcom/sec/epdg/ipc/RilToEpdgInterface;

    .line 253
    .local v0, "handler":Lcom/sec/epdg/ipc/RilToEpdgInterface;
    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/ipc/RilToEpdgInterface;->receive([BI)V

    .line 254
    return-void
.end method

.method public sendPacket([B)V
    .locals 0
    .param p1, "packet"    # [B

    .line 261
    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgModem;->send([B)V

    .line 262
    return-void
.end method
