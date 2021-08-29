.class Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
.super Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerDisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .line 1302
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 1302
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private processHandoverResult(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1369
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1370
    .local v0, "pdnType":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1371
    .local v1, "act":I
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On handover resume, received act is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1374
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 1375
    const/4 v2, 0x0

    const/16 v3, 0x21

    if-ne v1, v3, :cond_1

    .line 1376
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v5, "[HO_OPTIMIZATION][OH_EVENT]W2L HO success"

    invoke-static {v3, v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1377
    sget-object v3, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "W2L_HO_Success"

    invoke-static {v3, v5, v6}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1379
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1380
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->sendEventForTepdgTimerStart(Ljava/lang/String;)V

    .line 1381
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v2, v3, :cond_0

    .line 1382
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "Do nothing"

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1384
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    goto/16 :goto_0

    .line 1386
    :cond_1
    const/16 v3, 0x30

    const/16 v5, 0x12c

    if-ne v1, v3, :cond_2

    .line 1387
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v6, "[HO_OPTIMIZATION][OH_EVENT]W2L HO fail"

    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1388
    sget-object v3, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "W2L_HO_Fail"

    invoke-static {v3, v6, v7}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",W2L HO fail in PeerDisconnectedState"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1390
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1391
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1392
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1393
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1394
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "send de-regi for ap assist. fw will be remove current request for initial request."

    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1395
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Constants/EpdgCommands;->postDeregister(Landroid/os/Handler;Ljava/lang/String;I)V

    goto :goto_0

    .line 1397
    :cond_2
    const/16 v3, 0xff

    if-ne v1, v3, :cond_3

    .line 1398
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v4, "[HO_OPTIMIZATION][OH_EVENT]W2L HO fail due to IP change"

    invoke-static {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",W2L HO fail due to IP change in PeerDisconnectedState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 1400
    sget-object v3, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "W2L_HO_IPChange"

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Logger/LoggingHelper;->printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1402
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1403
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1405
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1406
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1305
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->enter()V

    .line 1306
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v0, v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 1307
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/32 v2, 0x27100

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 1308
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1309
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1313
    invoke-super {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->exit()V

    .line 1314
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1315
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1319
    invoke-super {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->processMessage(Landroid/os/Message;)Z

    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, "status":Z
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/epdg/Constants/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1322
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    const/16 v3, 0xf

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 1331
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 1332
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1333
    goto/16 :goto_1

    .line 1360
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->handleWifiStateChange(Landroid/os/Message;)V

    .line 1361
    goto/16 :goto_1

    .line 1357
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->processHandoverResult(Landroid/os/Message;)V

    .line 1358
    goto/16 :goto_1

    .line 1336
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1337
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1338
    .local v1, "isHandoverDetach":Z
    if-eqz v1, :cond_4

    .line 1339
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 1342
    .end local v1    # "isHandoverDetach":Z
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 1343
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    .line 1344
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1343
    invoke-virtual {v1, v3, v5}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1346
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v2, "APN_DETACH req received and cellular unavailable"

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1347
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    goto :goto_0

    .line 1349
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v3, "APN_DETACH req received  before HO_RESUME. Unexpected event."

    invoke-static {v1, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 1351
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyW2LRegistrant(Z)V

    .line 1353
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->notifyL2WRegistrant(Z)V

    .line 1354
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1355
    goto :goto_1

    .line 1324
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1325
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 1326
    .local v1, "reason":Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1327
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsNeedLteTimer(Z)V

    .line 1365
    .end local v1    # "reason":Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    :cond_7
    :goto_1
    return v0
.end method
