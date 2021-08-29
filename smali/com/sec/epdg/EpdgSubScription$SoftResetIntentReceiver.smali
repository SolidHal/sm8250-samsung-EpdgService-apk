.class Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgSubScription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgSubScription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftResetIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgSubScription;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgSubScription;
    .param p2, "hdr"    # Landroid/os/Handler;

    .line 666
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    .line 667
    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    .line 668
    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 672
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 677
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 678
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v2, v2, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " intent received."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-boolean v2, v2, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->access$000(Lcom/sec/epdg/EpdgSubScription;Z)V

    goto :goto_0

    .line 684
    :cond_0
    const-string v2, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    const-string v2, "subId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 687
    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-boolean v4, v4, Lcom/sec/epdg/EpdgSubScription;->mEnableEpdg:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v4}, Lcom/sec/epdg/EpdgSubScription;->access$100(Lcom/sec/epdg/EpdgSubScription;)I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v4, v2, :cond_1

    .line 688
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v2, v2, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset network setting SubId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v5}, Lcom/sec/epdg/EpdgSubScription;->access$100(Lcom/sec/epdg/EpdgSubScription;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/sec/epdg/EpdgSubScription$SoftResetIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->access$000(Lcom/sec/epdg/EpdgSubScription;Z)V

    .line 693
    :cond_1
    :goto_0
    return-void
.end method
