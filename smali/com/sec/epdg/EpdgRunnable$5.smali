.class Lcom/sec/epdg/EpdgRunnable$5;
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

    .line 249
    iput-object p1, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$300(Lcom/sec/epdg/EpdgRunnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const/16 v0, 0x1f4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mLteOff "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 258
    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getLteRsrpForLogging()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 259
    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getLteRsrqForLogging()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgRunnable;->setIsLteAvailable(Z)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgRunnable;->setIsLteAvailable(Z)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgRunnable;->setIsLteAvailable(Z)V

    .line 271
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isEpdgAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 274
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RTP_HANDIN_RETRY still exist."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGRTPHANDINRETRY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 277
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 278
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->onSystemSelectTimerFinish()V

    .line 281
    :cond_5
    return-void

    .line 283
    :cond_6
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    if-nez v0, :cond_7

    .line 284
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$5;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 288
    return-void
.end method
