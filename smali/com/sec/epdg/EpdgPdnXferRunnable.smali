.class Lcom/sec/epdg/EpdgPdnXferRunnable;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgPdnXferRunnable.java"


# instance fields
.field TAG:Ljava/lang/String;

.field mNetworkType:I

.field mPhoneId:I

.field mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgSubScription;II)V
    .locals 2
    .param p1, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p2, "phoneId"    # I
    .param p3, "networkType"    # I

    .line 18
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgPdnXferRunnable]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 21
    iput p2, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mPhoneId:I

    .line 22
    iput p3, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mNetworkType:I

    .line 23
    return-void
.end method

.method private moveToLteBasedOnMapcon()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x1

    .local v0, "cid":I
    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "apnType":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 31
    iget-object v2, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgSubScription;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 28
    .end local v1    # "apnType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "cid":I
    :cond_2
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 4

    .line 38
    iget v0, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mNetworkType:I

    .line 39
    .local v0, "ratType":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger Move for PDN\'s from WIFI networktype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/16 v1, 0xd

    if-eq v0, v1, :cond_a

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 43
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPdnXferRunnable;->moveToLteBasedOnMapcon()V

    goto/16 :goto_1

    .line 45
    :cond_1
    iget v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->is3gNetwork(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->is2gNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPdnXferRunnable;->moveToLteBasedOnMapcon()V

    goto/16 :goto_1

    .line 47
    :cond_3
    iget v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsCpThresholdTurnOn()Z

    move-result v1

    if-ne v1, v2, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 48
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v3, :cond_6

    .line 49
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->is3gNetwork(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->is2gNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50
    :cond_5
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPdnXferRunnable;->moveToLteBasedOnMapcon()V

    goto :goto_1

    .line 51
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-ne v1, v2, :cond_7

    .line 53
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->TAG:Ljava/lang/String;

    const-string v2, "CS Preferred mode but all cs was not available. So, need to handover to WIFI."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/EpdgSubScription;->retryL2WHandoverIfRequired(Ljava/lang/String;Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)Z

    goto :goto_1

    .line 56
    :cond_7
    if-nez v0, :cond_9

    .line 57
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsCpThresholdTurnOn()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 58
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->TAG:Ljava/lang/String;

    const-string v2, "CP ThresholdTurnOn and UNKNOWN RAT, So Send Deregister"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    goto :goto_1

    .line 61
    :cond_8
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->TAG:Ljava/lang/String;

    const-string v2, "IMS on ePDG and no LTE available allowing IMS to continue"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_9
    iget-object v1, p0, Lcom/sec/epdg/EpdgPdnXferRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Higher priority RAT handling done. No action taken for current N/w Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPdnXferRunnable;->moveToLteBasedOnMapcon()V

    .line 69
    :goto_1
    return-void
.end method
