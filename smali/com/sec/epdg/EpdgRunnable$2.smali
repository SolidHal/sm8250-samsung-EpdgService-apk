.class Lcom/sec/epdg/EpdgRunnable$2;
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

    .line 36
    iput-object p1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    return-void
.end method

.method private updateThreshold()Z
    .locals 8

    .line 116
    const/4 v0, 0x0

    .line 121
    .local v0, "delayHO":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 122
    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 123
    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isStgCdmaOperators()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 125
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "WIFI signal is weak but LTE is not available. keep WLAN!!!"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    const/16 v3, 0xd

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 127
    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    new-array v6, v5, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v7, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v7, v6, v2

    sget-object v7, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v7, v6, v4

    invoke-virtual {v1, v6}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getHandoverThresholdMet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v4}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 132
    invoke-static {v5}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 133
    invoke-static {v6}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 134
    invoke-static {v7}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v7

    .line 131
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    .line 135
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isStgCdmaOperators()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 142
    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 143
    invoke-static {v4}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 144
    invoke-static {v5}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 145
    invoke-static {v6}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v6

    .line 141
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 148
    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 149
    invoke-static {v4}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 150
    invoke-static {v5}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 151
    invoke-static {v6}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v6

    .line 147
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    .line 154
    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    new-array v5, v5, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v6, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v6, v5, v2

    sget-object v6, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v6, v5, v4

    invoke-virtual {v1, v5}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isStgCdmaOperators()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 162
    invoke-static {v4}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 163
    invoke-static {v5}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 164
    invoke-static {v6}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 165
    invoke-static {v7}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveOut()I

    move-result v7

    .line 161
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    goto :goto_1

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 168
    invoke-static {v4}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 169
    invoke-static {v5}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 170
    invoke-static {v6}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 171
    invoke-static {v7}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getLteRsrqRoveinWeak()I

    move-result v7

    .line 167
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->setLteThreshold(IIII)V

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getHandoverThresholdMet()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 174
    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 176
    :cond_5
    const/4 v0, 0x1

    .line 182
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getHandoverThresholdMet()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 183
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setHandoverThresholdMet(Z)V

    .line 186
    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v3, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v3, :cond_8

    .line 190
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setEcbmChanged(Z)V

    .line 194
    :cond_8
    return v0
.end method


# virtual methods
.method public performOperation()V
    .locals 7

    .line 39
    invoke-direct {p0}, Lcom/sec/epdg/EpdgRunnable$2;->updateThreshold()Z

    move-result v0

    .line 40
    .local v0, "delayHO":Z
    sget-object v1, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LATENCY_LAST_W2L:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 41
    sget-object v1, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LATENCY_LAST_L2W:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V

    .line 42
    sget-object v1, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WLAN_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper;->printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V

    .line 44
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Wifi off gets called, stop the ip config timer"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->IsNeedDeregi()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v1

    if-ne v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Weak wifi : need de-register"

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyEpdgDeregisterIfRequired(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const/4 v0, 0x1

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Moving all PDN\'s from wifi"

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isConnectedOnWifi()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getWifiMgrState()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getLteMeasurementMaxCnt()I

    move-result v1

    if-nez v1, :cond_6

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 65
    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 66
    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    if-eqz v1, :cond_6

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 71
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 72
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGCS:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 73
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v4}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getIsRoamingVoiceNetworkAvailable()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgSubScription;->sendRoamingVoiceNetworkAvailability(Z)V

    .line 76
    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getReleaseCallBeforeHO()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsCallCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 77
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Call exists and volte off. W2L handove will be done after call end."

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyCallRealease()V

    .line 80
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    iput-boolean v3, v1, Lcom/sec/epdg/EpdgSubScription;->waitingForCallend:Z

    .line 81
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    .line 82
    .local v1, "epdgHandler":Landroid/os/Handler;
    const/16 v4, 0x67

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    .end local v1    # "epdgHandler":Landroid/os/Handler;
    :cond_8
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isNeededToSendDeregOnWifiOnly()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 86
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->setW2LAfterEpdgStatusQuery(Z)V

    goto :goto_1

    .line 87
    :cond_9
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_L2W_AND_W2L:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsAirplaneMode()Z

    move-result v1

    if-nez v1, :cond_a

    .line 88
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgSubScription;->setW2LAfterEpdgStatusQuery(Z)V

    goto :goto_1

    .line 90
    :cond_a
    if-nez v0, :cond_c

    .line 91
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$200(Lcom/sec/epdg/EpdgRunnable;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    .line 92
    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 94
    :cond_b
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3}, Lcom/sec/epdg/EpdgSubScription;->startHandOverWifiToLte(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v3}, Lcom/sec/epdg/EpdgRunnable;->access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "W2L handover trigger failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRilInterface()Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 102
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->notifyQualifiedNetworksChange()V

    .line 109
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->getResultOfRunnableForCannotSwitchToWifi()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 110
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    sget-object v3, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgSubScription;->checkShowPopupToNotifyCurrentEpdgStatus(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;)I

    .line 111
    iget-object v1, p0, Lcom/sec/epdg/EpdgRunnable$2;->this$0:Lcom/sec/epdg/EpdgRunnable;

    invoke-static {v1}, Lcom/sec/epdg/EpdgRunnable;->access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->setResultOfRunnableForCannotSwitchToWifi(Z)V

    .line 113
    :cond_d
    return-void
.end method
