.class Lcom/sec/epdg/WfcProfileTask$1;
.super Ljava/lang/Object;
.source "WfcProfileTask.java"

# interfaces
.implements Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/WfcProfileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/WfcProfileTask;


# direct methods
.method constructor <init>(Lcom/sec/epdg/WfcProfileTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/WfcProfileTask;

    .line 102
    iput-object p1, p0, Lcom/sec/epdg/WfcProfileTask$1;->this$0:Lcom/sec/epdg/WfcProfileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectorStatusChanged(Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;)V
    .locals 6
    .param p1, "state"    # Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;
    .param p2, "result"    # Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 105
    sget-object v0, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorStatus:[I

    invoke-virtual {p1}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/WfcProfileTask$1;->this$0:Lcom/sec/epdg/WfcProfileTask;

    invoke-static {v0}, Lcom/sec/epdg/WfcProfileTask;->access$000(Lcom/sec/epdg/WfcProfileTask;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/WfcLocationDetector;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/WfcLocationDetector;

    move-result-object v0

    .line 113
    .local v0, "detector":Lcom/sec/epdg/WfcLocationDetector;
    iget-object v1, p0, Lcom/sec/epdg/WfcProfileTask$1;->this$0:Lcom/sec/epdg/WfcProfileTask;

    invoke-static {v1}, Lcom/sec/epdg/WfcProfileTask;->access$100(Lcom/sec/epdg/WfcProfileTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/WfcLocationDetector;->deregisterDetectorListener(Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorResult:[I

    invoke-virtual {p2}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    const-string v4, "COUNTRY_DETECTED"

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 131
    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/WfcProfileTask$1;->this$0:Lcom/sec/epdg/WfcProfileTask;

    invoke-static {v1}, Lcom/sec/epdg/WfcProfileTask;->access$000(Lcom/sec/epdg/WfcProfileTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/WfcProfileTask$1;->this$0:Lcom/sec/epdg/WfcProfileTask;

    invoke-static {v2}, Lcom/sec/epdg/WfcProfileTask;->access$200(Lcom/sec/epdg/WfcProfileTask;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V

    .line 129
    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/WfcProfileTask$1;->this$0:Lcom/sec/epdg/WfcProfileTask;

    invoke-static {v1}, Lcom/sec/epdg/WfcProfileTask;->access$000(Lcom/sec/epdg/WfcProfileTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/WfcProfileTask$1;->this$0:Lcom/sec/epdg/WfcProfileTask;

    invoke-static {v2}, Lcom/sec/epdg/WfcProfileTask;->access$200(Lcom/sec/epdg/WfcProfileTask;)I

    move-result v2

    const/4 v3, 0x1

    .line 119
    invoke-virtual {v0}, Lcom/sec/epdg/WfcLocationDetector;->getDetectedCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-static {v1, v2, v4, v3, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 120
    nop

    .line 137
    .end local v0    # "detector":Lcom/sec/epdg/WfcLocationDetector;
    :goto_0
    return-void
.end method
