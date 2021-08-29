.class Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelRunnable;
.super Ljava/lang/Object;
.source "SmartCellularProfiler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartCellularTelRunnable"
.end annotation


# instance fields
.field private final mSignalStrength:Landroid/telephony/SignalStrength;

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p2, "s"    # Landroid/telephony/SignalStrength;

    .line 163
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelRunnable;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 165
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$SmartCellularTelRunnable;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->access$200(Lcom/sec/epdg/smartwifi/SmartCellularProfiler;Landroid/telephony/SignalStrength;)V

    .line 170
    return-void
.end method
