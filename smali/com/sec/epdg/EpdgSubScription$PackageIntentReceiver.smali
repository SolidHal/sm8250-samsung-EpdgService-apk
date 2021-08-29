.class Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgSubScription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgSubScription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgSubScription;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgSubScription;
    .param p2, "hdr"    # Landroid/os/Handler;

    .line 701
    iput-object p1, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    .line 702
    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    .line 703
    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 707
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 712
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget v1, v1, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v3, v3, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget v4, v4, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/WfcController/WfcActivityController;->getWfcComponent(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "componentName":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v3, v3, Lcom/sec/epdg/EpdgSubScription;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PACKAGE_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 718
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v3, v3, Lcom/sec/epdg/EpdgSubScription;->mImsManagerHelper:Lcom/sec/epdg/EpdgImsManagerHelper;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget v4, v4, Lcom/sec/epdg/EpdgSubScription;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-boolean v5, v5, Lcom/sec/epdg/EpdgSubScription;->mIsEpdgInitialized:Z

    iget-object v6, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v6}, Lcom/sec/epdg/EpdgSubScription;->access$200(Lcom/sec/epdg/EpdgSubScription;)Z

    move-result v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/epdg/EpdgImsManagerHelper;->checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v3}, Lcom/sec/epdg/EpdgSubScription;->access$300(Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    iget-object v3, v3, Lcom/sec/epdg/EpdgSubScription;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    invoke-static {v4}, Lcom/sec/epdg/EpdgSubScription;->access$300(Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 721
    iget-object v3, p0, Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;->this$0:Lcom/sec/epdg/EpdgSubScription;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/epdg/EpdgSubScription;->access$302(Lcom/sec/epdg/EpdgSubScription;Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;)Lcom/sec/epdg/EpdgSubScription$PackageIntentReceiver;

    .line 726
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "componentName":[Ljava/lang/String;
    :cond_0
    return-void
.end method
