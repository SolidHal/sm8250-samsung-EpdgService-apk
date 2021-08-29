.class final Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;
.super Landroid/telephony/PhoneStateListener;
.source "SmartWifiProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartWifiTelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Lcom/sec/epdg/smartwifi/SmartWifiProfiler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
    .param p2, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiProfiler$1;

    .line 982
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1001
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$500(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$600(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$502(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Z)Z

    .line 1006
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$700(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$800(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Ljava/lang/Runnable;)V

    .line 1009
    :cond_1
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 985
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$500(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$600(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$502(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Z)Z

    .line 989
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$700(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$800(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;Ljava/lang/Runnable;)V

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isNeededToSendDeregOnWifiOnly()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$SmartWifiTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->access$900(Lcom/sec/epdg/smartwifi/SmartWifiProfiler;)V

    .line 997
    :cond_1
    return-void
.end method
