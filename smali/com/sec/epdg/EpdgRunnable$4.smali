.class Lcom/sec/epdg/EpdgRunnable$4;
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

    .line 223
    iput-object p1, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->isSmartLteRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$300(Lcom/sec/epdg/EpdgRunnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const/16 v0, 0x1f4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mLteOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 232
    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getLteRsrpForLogging()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 233
    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->getLteRsrqForLogging()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgRunnable;->setIsLteAvailable(Z)V

    .line 237
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v2}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->setIsLteAvailableDuringConnecting(Z)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgSubScription;->setIsLteAvailableDuringConnecting(Z)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    if-nez v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$4;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 246
    return-void
.end method
