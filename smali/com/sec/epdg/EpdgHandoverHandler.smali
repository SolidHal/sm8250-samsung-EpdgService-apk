.class public Lcom/sec/epdg/EpdgHandoverHandler;
.super Landroid/os/Handler;
.source "EpdgHandoverHandler.java"


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "com.sec.epdg.PERMISSION"


# instance fields
.field TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/epdg/IEpdgHandoverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p4, "phoneId"    # I

    .line 35
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgHandoverHandler]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 39
    iput p4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    .line 40
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sec/epdg/IEpdgHandoverListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/epdg/IEpdgHandoverListener;

    .line 224
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "addListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 232
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getLastestEpdgAvailableState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 234
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getWifiMgrState()I

    move-result v2

    .line 232
    invoke-interface {p1, v0, v1, v2}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgAvailable(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getLastestEpdgCsAvailavility()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgRegister(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    goto :goto_2

    .line 242
    :catch_1
    move-exception v0

    .line 243
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 262
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ")] mIpsecConn : "

    const-string v2, ")] mPhoneID : "

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 417
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EpdgHandoverHandler Ignored event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 394
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 395
    .local v0, "mPhoneID":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 396
    .local v1, "retryCount":I
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 397
    .local v4, "mCount":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getThreadCounter()I

    move-result v5

    .line 398
    .local v5, "mThreadCount":I
    iget-object v6, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[EpdgHandoverHandler : MSG_TERMINATE_EPDG ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    if-gtz v5, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 400
    add-int/2addr v1, v3

    .line 401
    const/16 v2, 0x9

    invoke-static {p0, v2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v2, v6, v7}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 403
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 404
    return-void

    .line 406
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 408
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IEpdgHandoverListener;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v3, v0, v6, v7}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgAvailable(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_1

    .line 409
    :catch_0
    move-exception v3

    .line 410
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 406
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 414
    goto/16 :goto_13

    .line 380
    .end local v0    # "mPhoneID":I
    .end local v1    # "retryCount":I
    .end local v4    # "mCount":I
    .end local v5    # "mThreadCount":I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 381
    .restart local v0    # "mPhoneID":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 382
    .local v1, "mCount":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EpdgHandoverHandler : MSG_EPDG_CALL_RELEASE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 385
    :try_start_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IEpdgHandoverListener;

    invoke-interface {v3, v0}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgReleaseCall(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    goto :goto_3

    .line 386
    :catch_1
    move-exception v3

    .line 387
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 383
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 390
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 391
    goto/16 :goto_13

    .line 364
    .end local v0    # "mPhoneID":I
    .end local v1    # "mCount":I
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 365
    .restart local v0    # "mPhoneID":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 366
    .local v1, "mPopupType":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 367
    .local v3, "mCount":I
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EpdgHandoverHandler : MSG_EPDG_SHOW_POPUP ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPopupType : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v3, :cond_4

    .line 371
    :try_start_2
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IEpdgHandoverListener;

    invoke-interface {v4, v0, v1}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgShowPopup(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 374
    goto :goto_5

    .line 372
    :catch_2
    move-exception v4

    .line 373
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 369
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 376
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 377
    goto/16 :goto_13

    .line 348
    .end local v0    # "mPhoneID":I
    .end local v1    # "mPopupType":I
    .end local v3    # "mCount":I
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IpsecConnectionParams;

    .line 349
    .local v0, "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    if-eqz v0, :cond_5

    .line 350
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 351
    .local v2, "mCount":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EpdgHandoverHandler : MSG_EPDG_IPSEC_DISCONNECTION ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_5

    .line 354
    :try_start_3
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IEpdgHandoverListener;

    iget v4, v0, Lcom/sec/epdg/IpsecConnectionParams;->mPhoneID:I

    iget-object v5, v0, Lcom/sec/epdg/IpsecConnectionParams;->mApnType:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgIpsecDisconnection(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 357
    goto :goto_7

    .line 355
    :catch_3
    move-exception v3

    .line 356
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 352
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 360
    .end local v1    # "i":I
    .end local v2    # "mCount":I
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 361
    goto/16 :goto_13

    .line 331
    .end local v0    # "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IpsecConnectionParams;

    .line 332
    .restart local v0    # "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 333
    .restart local v2    # "mCount":I
    if-eqz v0, :cond_6

    .line 334
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EpdgHandoverHandler : MSG_EPDG_IPSEC_CONNECTION ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v2, :cond_6

    .line 337
    :try_start_4
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IEpdgHandoverListener;

    iget v4, v0, Lcom/sec/epdg/IpsecConnectionParams;->mPhoneID:I

    iget-object v5, v0, Lcom/sec/epdg/IpsecConnectionParams;->mApnType:Ljava/lang/String;

    iget v6, v0, Lcom/sec/epdg/IpsecConnectionParams;->mIkeError:I

    iget v7, v0, Lcom/sec/epdg/IpsecConnectionParams;->mThrottleCount:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgIpsecConnection(ILjava/lang/String;II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 341
    goto :goto_9

    .line 339
    :catch_4
    move-exception v3

    .line 340
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 335
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 344
    .end local v1    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 345
    goto/16 :goto_13

    .line 317
    .end local v0    # "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    .end local v2    # "mCount":I
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 318
    .local v0, "mPhoneID":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 319
    .local v1, "mCount":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EpdgHandoverHandler : MSG_EPDG_DEREGISTER ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_7

    .line 322
    :try_start_5
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IEpdgHandoverListener;

    invoke-interface {v3, v0}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgDeregister(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 325
    goto :goto_b

    .line 323
    :catch_5
    move-exception v3

    .line 324
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 320
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 327
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 328
    goto/16 :goto_13

    .line 302
    .end local v0    # "mPhoneID":I
    .end local v1    # "mCount":I
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 303
    .restart local v0    # "mPhoneID":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 304
    .local v1, "mCdmaAvailability":Z
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 305
    .local v2, "mCount":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EpdgHandoverHandler : MSG_EPDG_REGISTER ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")] mCdmaAvailability : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_8

    .line 308
    :try_start_6
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IEpdgHandoverListener;

    invoke-interface {v4, v0, v1}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgRegister(IZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 311
    goto :goto_d

    .line 309
    :catch_6
    move-exception v4

    .line 310
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 306
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 313
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 314
    goto/16 :goto_13

    .line 281
    .end local v0    # "mPhoneID":I
    .end local v1    # "mCdmaAvailability":Z
    .end local v2    # "mCount":I
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/HandoverResultParams;

    .line 282
    .local v0, "mHOResult":Lcom/sec/epdg/HandoverResultParams;
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 283
    .local v1, "mCount":I
    if-eqz v0, :cond_b

    .line 284
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EpdgHandoverHandler : MSG_EPDG_HANDOVER_RESULT ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")] mHOResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget v2, v0, Lcom/sec/epdg/HandoverResultParams;->mResult:I

    if-ne v2, v3, :cond_a

    .line 286
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handover Result ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget v5, v0, Lcom/sec/epdg/HandoverResultParams;->mIsL2WHandover:I

    if-ne v5, v3, :cond_9

    const-string v3, "HANDOVER_L2W"

    goto :goto_e

    :cond_9
    const-string v3, "HANDOVER_W2L"

    :goto_e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : True"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_b

    .line 291
    :try_start_7
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IEpdgHandoverListener;

    iget v4, v0, Lcom/sec/epdg/HandoverResultParams;->mPhoneID:I

    iget v5, v0, Lcom/sec/epdg/HandoverResultParams;->mIsL2WHandover:I

    iget v6, v0, Lcom/sec/epdg/HandoverResultParams;->mResult:I

    iget-object v7, v0, Lcom/sec/epdg/HandoverResultParams;->mApnType:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgHandoverResult(IIILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 295
    goto :goto_10

    .line 293
    :catch_7
    move-exception v3

    .line 294
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 289
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 298
    .end local v2    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 299
    goto :goto_13

    .line 264
    .end local v0    # "mHOResult":Lcom/sec/epdg/HandoverResultParams;
    .end local v1    # "mCount":I
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 265
    .local v0, "mPhoneID":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 266
    .local v1, "mIsAvailable":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 267
    .local v2, "mWifiState":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 268
    .local v3, "mCount":I
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EpdgHandoverHandler : MSG_EPDG_AVAILABILITY ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")] mIsAvailable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / mWifiState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v3, :cond_c

    .line 272
    :try_start_8
    iget-object v5, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/sec/epdg/IEpdgHandoverListener;

    invoke-interface {v5, v0, v1, v2}, Lcom/sec/epdg/IEpdgHandoverListener;->onEpdgAvailable(III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 275
    goto :goto_12

    .line 273
    :catch_8
    move-exception v5

    .line 274
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 270
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 277
    .end local v4    # "i":I
    :cond_c
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 278
    nop

    .line 421
    .end local v0    # "mPhoneID":I
    .end local v1    # "mIsAvailable":I
    .end local v2    # "mWifiState":I
    .end local v3    # "mCount":I
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyCallRealease()V
    .locals 2

    .line 206
    iget v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void
.end method

.method protected notifyEpdgAvailablity(Z)V
    .locals 3
    .param p1, "isEpdgAvailable"    # Z

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyEpdgAvailablity as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v0

    const-string v1, "EPDG_AVAILABLE"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v0

    const-string v1, "EPDG_NOTAVAILABLE"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    .line 89
    :goto_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    .line 91
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getWifiMgrState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-static {p0, v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    return-void
.end method

.method protected notifyEpdgDeregisterIfRequired(Z)Z
    .locals 3
    .param p1, "force"    # Z

    .line 105
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 106
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    if-eq v0, v2, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    const-string v2, "notifyEpdgDeregisterIfRequired: send deregi"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->setDeregiForHOFail(Z)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgSubScription;->setDeregiForHOFail(Z)V

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->setDisconnectRequired(Z)V

    .line 116
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgBigDataController()Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;->EPDG_MODULE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateVoWifiCallDropType(Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;)V

    .line 120
    :cond_3
    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    return v0

    .line 125
    :cond_4
    return v1
.end method

.method public notifyIpsecConnectionFail(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;ILjava/lang/String;)V
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError;
    .param p3, "count"    # I
    .param p4, "operatorName"    # Ljava/lang/String;

    .line 149
    if-eqz p2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HO_OPTIMIZATION][IPSEC_EVT] IPSEC_NOT_CONNECTED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/sec/epdg/IpsecConnectionParams;

    iget v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    .line 153
    invoke-static {p4, p2}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getWFCErrorCode(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/sec/epdg/IpsecConnectionParams;-><init>(ILjava/lang/String;II)V

    .line 154
    .local v0, "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    const/4 v1, 0x5

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "apntype"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-static {p4, p2}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getWFCErrorCode(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)I

    move-result v2

    const-string v3, "ikeerror"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v2, "count"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    const-string v3, "phoneId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v2, "com.sec.unifiedwfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    const-string v2, "ims"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {p4, p2}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getWFCErrorCode(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)I

    move-result v3

    iget v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    .line 166
    invoke-static {v2, v3, v4}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUnifiedWfcSummaryBroadcast(Landroid/content/Context;II)V

    .line 169
    .end local v0    # "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyIpsecConnectionSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HO_OPTIMIZATION][IPSEC_EVT] IPSEC_CONNECTED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/sec/epdg/IpsecConnectionParams;

    iget v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/sec/epdg/IpsecConnectionParams;-><init>(ILjava/lang/String;II)V

    .line 134
    .local v0, "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    const/4 v1, 0x5

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "apntype"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "ikeerror"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v3, "count"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    const-string v3, "phoneId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v2, "com.sec.unifiedwfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    .end local v0    # "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyIpsecDisconnection(Ljava/lang/String;)V
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 173
    if-eqz p1, :cond_1

    .line 174
    iget v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "networkType":I
    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HO_OPTIMIZATION][IPSEC_EVT] IPSEC_DISCONNECTED for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/sec/epdg/IpsecConnectionParams;

    iget v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/sec/epdg/IpsecConnectionParams;-><init>(ILjava/lang/String;II)V

    .line 180
    .local v1, "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    const/4 v2, 0x6

    invoke-static {p0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .end local v0    # "networkType":I
    .end local v1    # "mIpsecConn":Lcom/sec/epdg/IpsecConnectionParams;
    :cond_1
    return-void
.end method

.method protected notifyL2WHandoverResult(ZLjava/lang/String;Z)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "handoverNotiEnable"    # Z

    .line 63
    move v0, p1

    .line 64
    .local v0, "mResult":I
    if-eqz p2, :cond_2

    .line 65
    const/4 v1, -0x1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 66
    .local v2, "mRequest":I
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyL2WHandoverResult() : mRequest ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eq v2, v1, :cond_1

    .line 69
    const-string v1, "ims"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    new-instance v1, Lcom/sec/epdg/HandoverResultParams;

    iget v3, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v0, p2}, Lcom/sec/epdg/HandoverResultParams;-><init>(IIILjava/lang/String;)V

    .line 71
    .local v1, "mHOResult":Lcom/sec/epdg/HandoverResultParams;
    const/4 v3, 0x2

    invoke-static {p0, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .end local v1    # "mHOResult":Lcom/sec/epdg/HandoverResultParams;
    .end local v2    # "mRequest":I
    :cond_1
    goto :goto_1

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    const-string v2, "notifyL2WHandoverResult(): APN is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_1
    return-void
.end method

.method public notifyShowPopupForEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)V
    .locals 5
    .param p1, "popupType"    # Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "send":Z
    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->WFC_DROP_WARNING_NOTI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    if-ne p1, v1, :cond_0

    .line 190
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const/4 v0, 0x1

    .line 197
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 198
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyShowPopupForEpdgStatus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x7

    iget v2, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    .line 200
    invoke-virtual {p1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->getNum()I

    move-result v3

    .line 199
    invoke-static {p0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    :cond_2
    return-void
.end method

.method public notifyTermination()V
    .locals 3

    .line 211
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandoverHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandoverHandler;->removeMessages(I)V

    .line 214
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method protected notifyVoiceRatAvailability(Z)V
    .locals 4
    .param p1, "voiceNwAvailability"    # Z

    .line 96
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVoiceRatAvailability as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->setLatestEpdgCsAvailavility(Z)V

    .line 99
    iget v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 99
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method protected notifyW2LHandoverResult(ZLjava/lang/String;)V
    .locals 7
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .line 44
    move v0, p1

    .line 45
    .local v0, "mResult":I
    if-eqz p2, :cond_2

    .line 46
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 47
    .local v1, "mRequest":I
    :goto_0
    iget-object v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyW2LHandoverResult() : mRequest ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eq v1, v3, :cond_1

    .line 50
    const-string v3, "ims"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    new-instance v3, Lcom/sec/epdg/HandoverResultParams;

    iget v4, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mPhoneId:I

    invoke-direct {v3, v4, v2, v0, p2}, Lcom/sec/epdg/HandoverResultParams;-><init>(IIILjava/lang/String;)V

    move-object v2, v3

    .line 52
    .local v2, "mHOResult":Lcom/sec/epdg/HandoverResultParams;
    const/4 v3, 0x2

    invoke-static {p0, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/epdg/EpdgHandoverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    .end local v1    # "mRequest":I
    .end local v2    # "mHOResult":Lcom/sec/epdg/HandoverResultParams;
    :cond_1
    goto :goto_1

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgHandoverHandler;->TAG:Ljava/lang/String;

    const-string v2, "notifyW2LHandoverResult(): APN is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_1
    return-void
.end method

.method public removeListener(Lcom/sec/epdg/IEpdgHandoverListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/epdg/IEpdgHandoverListener;

    .line 253
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "removeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/epdg/EpdgHandoverHandler;->mEpdgHandoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 258
    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
