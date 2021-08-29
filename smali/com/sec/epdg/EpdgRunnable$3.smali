.class Lcom/sec/epdg/EpdgRunnable$3;
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

    .line 198
    iput-object p1, p0, Lcom/sec/epdg/EpdgRunnable$3;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$3;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->sendWifiStatusChangedNotification(Z)V

    .line 202
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$3;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->updateCpEpdgHoThreshold(Z)V

    .line 203
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$3;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v0

    const-string v2, "EPDG_NOTAVAILABLE"

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$3;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitializeCondition Send EPDG Not Available broadcast : EXTRA_WEAK_WIFI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$3;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 206
    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getWifiMgrState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable$3;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->notifyEpdgAvailablity(Z)V

    .line 210
    return-void
.end method
