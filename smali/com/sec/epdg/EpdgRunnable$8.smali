.class Lcom/sec/epdg/EpdgRunnable$8;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgRunnable;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgRunnable;

    .line 322
    iput-object p1, p0, Lcom/sec/epdg/EpdgRunnable$8;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$8;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start mLteMeasurement, stop TEPDGRTPHANDINRETRY because it is not needed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$8;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 327
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$8;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getLteMeasurementMaxCnt()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$8;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$8;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 328
    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTEMEASUREMENT:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$8;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setLteMeasurementCnt(I)V

    .line 330
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$8;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 331
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x5b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 332
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 335
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
