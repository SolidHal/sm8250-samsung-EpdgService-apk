.class Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;
.super Landroid/os/Handler;
.source "IPSecDataConnSMHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSMHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpdHandler"
.end annotation


# instance fields
.field final MAX_COUNT:I

.field final ON_DEMAND_DPD_PERIOD:I

.field final TH_LATENCY:I

.field dpdLatency:J

.field mCount:I

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IPSecDataConnSMHelper;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .line 436
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 437
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 430
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->mCount:I

    .line 431
    const/4 p1, 0x2

    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->MAX_COUNT:I

    .line 432
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$000(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThresholdDpdLatency()I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->TH_LATENCY:I

    .line 433
    div-int/2addr v0, p1

    iput v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->ON_DEMAND_DPD_PERIOD:I

    .line 434
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->dpdLatency:J

    .line 438
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 442
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$100(Lcom/sec/epdg/IPSecDataConnSMHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/sec/epdg/Constants/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "dpdLatency"

    const-string v2, "com.sec.epdg.DPD_LATENCY"

    const/16 v3, 0x59

    const-wide/16 v4, 0x0

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    if-eq v0, v6, :cond_4

    const/4 v8, 0x2

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 499
    :pswitch_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 500
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "[HO_OPTIMIZATION]"

    if-ne v0, v9, :cond_1

    .line 501
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->espLossChecking:Z

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "call status changed(ongoing). esp loss checking is running."

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :cond_0
    const-string v0, "call status changed(ongoing). start esp loss checking."

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    iput-boolean v9, v0, Lcom/sec/epdg/IPSecDataConnSM;->espLossChecking:Z

    .line 506
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->startEspCheck(II)V

    .line 508
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 509
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$000(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/epdg/EpdgSubScription;->controlWiFiThresholdDuringCall(Z)V

    goto/16 :goto_0

    .line 512
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_5

    .line 513
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->espLossChecking:Z

    if-eqz v0, :cond_2

    .line 514
    const-string v0, "call status changed(idle). stop esp loss checking."

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    iput-boolean v7, v0, Lcom/sec/epdg/IPSecDataConnSM;->espLossChecking:Z

    .line 516
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->stopEspCheck(I)V

    .line 518
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 519
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$000(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/epdg/EpdgSubScription;->controlWiFiThresholdDuringCall(Z)V

    goto/16 :goto_0

    .line 522
    :cond_2
    const-string v0, "call status changed(idle). esp loss checking was already stopped."

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :pswitch_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$400(Lcom/sec/epdg/IPSecDataConnSMHelper;)J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-eqz v0, :cond_5

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$400(Lcom/sec/epdg/IPSecDataConnSMHelper;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->dpdLatency:J

    .line 465
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$100(Lcom/sec/epdg/IPSecDataConnSMHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HO_OPTIMIZATION]DPD check : SUCCESS latency:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->dpdLatency:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, v6}, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->removeMessages(I)V

    .line 467
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LATENCY_CEHCK_RESULT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    iget-wide v6, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->dpdLatency:J

    invoke-static {v0, v9, v6, v7}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;ZJ)V

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, "intent_s":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    iget-wide v6, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->dpdLatency:J

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$600(Lcom/sec/epdg/IPSecDataConnSMHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 473
    iput v8, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->mCount:I

    .line 474
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1, v4, v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$402(Lcom/sec/epdg/IPSecDataConnSMHelper;J)J

    .line 476
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$700(Lcom/sec/epdg/IPSecDataConnSMHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 477
    .local v1, "w2lmsg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 478
    iput v9, v1, Landroid/os/Message;->arg1:I

    .line 479
    iget-wide v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->dpdLatency:J

    long-to-int v2, v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 480
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 481
    .end local v0    # "intent_s":Landroid/content/Intent;
    .end local v1    # "w2lmsg":Landroid/os/Message;
    goto/16 :goto_0

    .line 445
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_3

    .line 447
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$200()[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 448
    .local v0, "timerMsg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 449
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$200()[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->TH_LATENCY:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 450
    iput v7, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->mCount:I

    .line 451
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$402(Lcom/sec/epdg/IPSecDataConnSMHelper;J)J

    .line 453
    .end local v0    # "timerMsg":Landroid/os/Message;
    :cond_3
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->mCount:I

    if-ge v0, v8, :cond_5

    .line 454
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$500(Lcom/sec/epdg/IPSecDataConnSMHelper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->checkConnection(II)V

    .line 455
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->mCount:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->mCount:I

    .line 456
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$200()[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, "retryMsg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 458
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 459
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$200()[Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->ON_DEMAND_DPD_PERIOD:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 460
    .end local v0    # "retryMsg":Landroid/os/Message;
    goto :goto_0

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$100(Lcom/sec/epdg/IPSecDataConnSMHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HO_OPTIMIZATION]DPD check : FAIL latency is bigger than :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->TH_LATENCY:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$700(Lcom/sec/epdg/IPSecDataConnSMHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 487
    .local v0, "expireMsg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 488
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 489
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 490
    sget-object v3, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LATENCY_CEHCK_RESULT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    iget v6, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->TH_LATENCY:I

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v3, v7, v8, v9}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;ZJ)V

    .line 492
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 493
    .local v3, "intent_f":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->TH_LATENCY:I

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$300(Lcom/sec/epdg/IPSecDataConnSMHelper;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$600(Lcom/sec/epdg/IPSecDataConnSMHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 496
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSMHelper$DpdHandler;->this$0:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-static {v1, v4, v5}, Lcom/sec/epdg/IPSecDataConnSMHelper;->access$402(Lcom/sec/epdg/IPSecDataConnSMHelper;J)J

    .line 497
    nop

    .line 530
    .end local v0    # "expireMsg":Landroid/os/Message;
    .end local v3    # "intent_f":Landroid/content/Intent;
    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
