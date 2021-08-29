.class Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgManagerStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgManagerStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendEventToSMRunnable"
.end annotation


# instance fields
.field private mEvent:I

.field private mNetworkType:I

.field final synthetic this$0:Lcom/sec/epdg/EpdgManagerStubImpl;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgManagerStubImpl;II)V
    .locals 0
    .param p2, "networkType"    # I
    .param p3, "event"    # I

    .line 361
    iput-object p1, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgManagerStubImpl;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 362
    iput p2, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->mNetworkType:I

    .line 363
    iput p3, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->mEvent:I

    .line 364
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgManagerStubImpl;

    iget v0, v0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->mNetworkType:I

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 369
    .local v0, "cid":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgManagerStubImpl;

    iget-object v1, v1, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->mEvent:I

    invoke-static {v3}, Lcom/sec/epdg/Constants/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to SM cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    if-gez v0, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    const/4 v1, 0x0

    .line 375
    .local v1, "msgToSM":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgManagerStubImpl;

    iget-object v2, v2, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 376
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgManagerStubImpl;

    iget-object v2, v2, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 381
    iget v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->mEvent:I

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    .line 386
    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 383
    :cond_1
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 384
    nop

    .line 390
    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    .line 391
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 392
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 395
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgManagerStubImpl;

    iget-object v2, v2, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 396
    .local v2, "msgToServiceHandler":Landroid/os/Message;
    const/16 v3, 0x6b

    iput v3, v2, Landroid/os/Message;->what:I

    .line 397
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 398
    iget v3, p0, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;->mEvent:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 399
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 401
    .end local v2    # "msgToServiceHandler":Landroid/os/Message;
    :cond_2
    return-void

    .line 378
    :cond_3
    return-void
.end method
