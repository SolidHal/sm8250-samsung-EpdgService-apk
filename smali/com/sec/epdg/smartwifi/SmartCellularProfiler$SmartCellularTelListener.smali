.class final Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;
.super Landroid/telephony/PhoneStateListener;
.source "SmartCellularProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartCellularTelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;I)V
    .locals 0
    .param p2, "subId"    # I

    .line 148
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    .line 149
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 154
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->access$000(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->access$100(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelRunnable;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelListener;->this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;Landroid/telephony/SignalStrength;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method
